<?php
#Revision history:
#
#DEVELOPER                      DATE                                 COMMENTS 
#ghazar ghazarian(202015953)    2021-03-014                  added a css to the home page note : the css is not relative to the screen, to be fixed
define("FOLDER_My_Functions","My_Functions/");
define("FILE_Common",FOLDER_My_Functions."Common.php");
define("FILE_Customer",FOLDER_My_Functions."customer.php");
define("FILE_Customers",FOLDER_My_Functions."customers.php");
define("FILE_Product",FOLDER_My_Functions."product.php");
define("FILE_Products",FOLDER_My_Functions."products.php");
define("FILE_Purchase",FOLDER_My_Functions."purchase.php");
define("FILE_Purchases",FOLDER_My_Functions."purchases.php");



require_once FILE_Common;

set_error_handler("manageError");
set_exception_handler("manageException");

session_start();
createPageTop("Home","bodyDefault");
createNavigatiMenu("logoDefault");

?>

<div class="box">
        <div class="item1">
            <a href="Data/cheatsheet.xlsx" download>
  <img src="<?php echo FILE_downloade; ?> ">
</a>
            <?php  

            login_logout("Home.php");
            ?> 
            
              

         </div>       
    
            <div class="item2"> 
                <?php showAdvertisingPictures(); ?>
            </div>

</div>

    <?php
   //we are a small online bakery store, we sell all kind of home made desserts, if you like to give us a try go to the buy page and make your first order  
createPageBottom();
