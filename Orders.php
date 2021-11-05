<?php
#Revision history:
#
#DEVELOPER                      DATE                                 COMMENTS 
#ghazar ghazarian(202015953)    2021-03-12                   Display all the sales in one table 
#ghazar ghazarian(202015953)    2021-03-13                   Display the table with differnet style if user enters url parameter
#ghazar ghazarian(202015953)    2021-03-14                   add downloade image to the cheatsheey and style the table


// define constints

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


// body style
global $bodyStyle;
global $logoStyle;


// if user specify a command parameter in the url
    if(isset(($_GET["command"])))
        {
            $command= htmlspecialchars($_GET['command']);

            // warning style
            if($command =="print" )
            {
                $bodyStyle="bodyWarning";
                $logoStyle="logoWarning";
                $subTotalStyle="";
            }
   
            // for anyother command entered, give the default style
            else{
                $bodyStyle="bodyDefault";
                $logoStyle="logoDefault";
                $subTotalStyle="";
            }
        }

        else // if there is no parameter
        {
             $subTotalStyle="";
             $bodyStyle="bodyDefault";
             $logoStyle="logoDefault";
        }
    // generate html top page
    createPageTop("Orders",$bodyStyle);
    createNavigatiMenu($logoStyle);

    
    login_logout("Orders.php");
    
    if(isset($_SESSION["customer_id"]))
        
    {?>

Show purchases made on this date or later: <input id="jdate">
<button onclick="search();" action="Orders.php"> search by date</button>
<div id="replace" class="test">
   
</div>
<?php
        if(isset($_POST["delete"]))
        {
            $purchase_id= htmlspecialchars($_POST["purchase_id"]);
            $purchase= new purchase();
            if($purchase->load($purchase_id))
            {
                $purchase->delete();
                
                
            }
            else{
                echo "Couldnit Delete";
            }
            
        }
        
 
//        
            
    }        
// generate a html footer
createPageBottom();
