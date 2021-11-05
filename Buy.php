<?php
#Revision history:
#
#DEVELOPER                      DATE                                 COMMENTS 
#ghazar ghazarian(202015953)    2021-03-10                   create a form for the buy page
#ghazar ghazarian(202015953)    2021-03-11                   add validation to the buy form a save the data in the sales.txt
#ghazar ghazarian(202015953)    2021-03-14                   style the form note: the style is not relative to the screen which has to be fixed



define("FOLDER_My_Functions","My_Functions/");
define("FOLDER_Data","Data/");
define("FILE_Common",FOLDER_My_Functions."Common.php");
define("FILE_Sales",FOLDER_Data."Sales.txt");
define("FILE_Products",FOLDER_My_Functions."products.php");
define("FILE_Product",FOLDER_My_Functions."product.php");
define("FILE_Purchase",FOLDER_My_Functions."purchase.php");
define("FILE_Purchases",FOLDER_My_Functions."purchases.php");
define("Maximum_lengh_productCode",12);
define("Maximum_lengh_firstName",20);
define("Maximum_lengh_lastName",20);
define("Maximum_lengh_comments",200);
define("Maximum_lengh_city",8);
define("Maximum_price",10000.00);
define("Minimum_price",0);
define("Maximum_quantity",99);
define("Minimum_quantity",1);
define("Tax_QC",15.2);

require_once FILE_Common;
require_once FILE_Products;
require_once FILE_Product;
require_once FILE_Purchase;
require_once FILE_Purchases;
set_error_handler("manageError");
set_exception_handler("manageException");
session_start();


// Global variables

    $error_comment="";
    $error_quantity_sold="";
    $error_product_notExist="";
    
    // the customer id comes from the session
            
    if(isset(($_POST["buy"])))
    {
        //$customer = new customer;
        $product = new product();
        $purchase= new purchase();
        $customer_id=$_SESSION["customer_id"];
        // these data is from the form
        // the prduct id is used to load the data for selected product
      $product_id = htmlspecialchars($_POST["product_id"]);
      $quantity_sold = htmlspecialchars($_POST["quantity_sold"]);
      $comment = htmlspecialchars($_POST["comment"]);
      $o_quantity_sold = $purchase->set_quantity_sold($quantity_sold);
      $o_comment=$purchase->set_comment($comment);
      $o_product_id=$product->load($product_id);
      
      
 
      if($o_product_id!="")
            {
                 
                 if($o_quantity_sold=="" && $o_comment=="") 
                        {
                         $sold_price=$product->get_price();
                         $product_code=$product->get_product_code();
                         // calculate the grandtotal
                         $sub_total= round($sold_price*$quantity_sold,2);
                         $tax_amount = round($sub_total*Tax_QC,2);
                         $grand_total= round($sub_total+$tax_amount,2);

                           // create a purchase object
                           $purchase->set_product_code($product_code);
                           $purchase->set_sold_price($sold_price);
                           $purchase->set_sub_total($sub_total);
                           $purchase->set_tax_amount($tax_amount);
                           $purchase->set_grand_total($grand_total);
                           $purchase->set_customer_id($customer_id);
                           $purchase->set_product_id($product_id);

                          $purchase->save();
                        }
                  else
                        {
                         $error_quantity_sold=$o_quantity_sold;
                         $error_comment=$o_comment;

                        }
                 
            }else
            {
                $error_product_notExist=" this product is not available anymore";
                
            }
      
      
      
          
    }
  

createPageTop("Buy","bodyDefault");
createNavigatiMenu("logoDefault");
login_logout("Buy.php");

if(isset($_SESSION["customer_id"]))
{
    
    $products= new products();
    
    
 ?>
<form method="post" action="Buy.php">
        <br><br>Please select a product: <select name="product_id">
        <?php
                
                    foreach($products->items as $product)
                    {
                        echo "<option value='".$product->get_product_id()."'>". $product->get_product_code()."-(".$product->get_price()."$)</option>";
                    }

                
       ?>
        </select><br><br>
        Comment: <input type="text"  name="comment"><spam class="error">  <?php   echo $error_comment; ?> </spam><br><br>
        Quantity: <input type="text"  name="quantity_sold"><spam class="error">  <?php   echo $error_quantity_sold; ?> </spam><br><br>
        <input type="submit" value="Buy" name="buy"><spam class="error">  <?php   echo $error_product_notExist; ?> </spam><br><br>
    </form>
 <?php
}
 else
 {
    echo "you need to log in to see this page";  
 }
createPageBottom();



