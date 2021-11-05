<?php


define("FOLDER_My_Functions","My_Functions/");
define("FILE_Common",FOLDER_My_Functions."Common.php");
define("FILE_Purchases",FOLDER_My_Functions."purchases.php");
define("FILE_Purchase",FOLDER_My_Functions."purchase.php");
define("FILE_Customer",FOLDER_My_Functions."customer.php");
define("Currency_Sign"," $");

require_once FILE_Common;
require_once FILE_Purchases;
require_once FILE_Purchase;
require_once FILE_Customer;

set_error_handler("manageError");
set_exception_handler("manageException");
session_start();



        if(isset($_POST["jdate"]))
        {
            

            
            
            $date= htmlspecialchars($_POST["jdate"]);
            $customer_id=$_SESSION["customer_id"];
            echo "<table>
                
            
                    <tr>
                    <th>date</th>
                    <th>first name</th>
                    <th>last name</th>
                    <th>delete purchase</th>
                    </tr>";
            $purchases = new purchases($date,$customer_id);
            $customer = new customer();
            // in your last class you mentioned we should use the constructor but in this project our purchase constructor doesnt have the customer data
            // therefore i called the customer load function 
            $customer->load($customer_id);
            echo "<table>";
            foreach($purchases->items as $purchase)
            {
                 
                
            
                    echo " <tr>
                    <th>".$purchase->get_purchase_creation_date()."</th>
                    <th>".$customer->get_first_name()."</th>
                        <th>".$customer->get_last_name()."</th>
                    <th>
                        <form method='post'>
                       <input type='hidden' name='purchase_id' value='".$purchase->get_purchase_id()."'>
                        <input type='submit' name='delete' value='DELETE'>    
                         


                        </form>
                    </th>
                    </tr>";
            }
            
            
            echo"</table>";
                    
        }
    
    else{
        echo " you need to log in to view this page";
        }
    

?>
