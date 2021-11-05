<?php

#Revision history:
#DEVELOPER                            DATE                   COMMENTS 
#ghazar ghazarian(2015953)          2021-05-2            created the register file
#ghazar ghazarian(2015953)          2021-05-3            modified the register file to be update and register depending on the user if he/she is logged in


define("FOLDER_My_Functions","My_Functions/");
define("FILE_Common",FOLDER_My_Functions."Common.php");
define("FILE_Customer",FOLDER_My_Functions."customer.php");
define("FILE_Customers",FOLDER_My_Functions."customers.php");

require_once FILE_Common;
require_once FILE_Customer;
require_once FILE_Customers;

set_error_handler("manageError");
set_exception_handler("manageException");
session_start();
//login_logout("register.php");

// error messages will be shown near each field in the resgerstartion form there are no errors
$error_first_name="";
$error_last_name="";
$error_address="";
$error_city="";
$error_province="";
$error_postal_code="";
$error_user_name="";
$error_user_name_exist="";
$error_password="";
$confirmation="";

// values will fill up the form when the user is logged in 
$value_first_name="";
$value_last_name="";
$value_address="";
$value_city="";
$value_province="";
$value_postal_code="";
$value_user_name="";
$value_password="";


$title="";

if(isset($_SESSION["customer_id"]))
 {
    $title="UPDATE";
    $customer_id=$_SESSION["customer_id"];
     $customer= new customer();
     if($customer->load($customer_id))
     {
            $value_first_name=$customer->get_first_name();
            $value_last_name=$customer->get_last_name();
            $value_address=$customer->get_address();
            $value_city=$customer->get_city();
            $value_province=$customer->get_province();
            $value_postal_code=$customer->get_postal_code();
            $value_user_name=$customer->get_user_name();
            $value_password=$customer->get_password();
         
         if(isset($_POST["register"]))
        {
            // create the object
            
            $customers= new customers();


            // prevent from html injection
            $first_name= htmlspecialchars($_POST["first_name"]);
            $last_name= htmlspecialchars($_POST["last_name"]);
            $address= htmlspecialchars($_POST["address"]);
            $city= htmlspecialchars($_POST["city"]);
            $province= htmlspecialchars($_POST["province"]);
            $postal_code= htmlspecialchars($_POST["postal_code"]);
            $user_name= htmlspecialchars($_POST["user_name"]);
            $password= htmlspecialchars($_POST["password"]);
            

            // check in my collection if the user name exist
            foreach($customers->items as $new_customer)
                   {
                            // here is different check because we want to see if it is the user's username or someone from the collection
                            if($customer->get_user_name()==$user_name)
                            {
                                $error_user_name_exist="";
                            }
                            elseif($new_customer->get_user_name()==$user_name)
		            {
                                $error_user_name_exist="Username already Exist !";
                            }
			else{ $error_user_name_exist=""; }
                   }
             // if the user doesnt exist we save        
            if($error_user_name_exist=="")
            {
            //set the properties to the enteriis o stands for object

             $o_first_name= $customer->set_first_name($first_name);
             $o_last_name= $customer->set_last_name($last_name);
             $o_address= $customer->set_address($address);
             $o_city= $customer->set_city($city);
             $o_province=$customer->set_province($province);
             $o_postal_code= $customer->set_postal_code($postal_code);
             $o_user_name= $customer->set_user_name($user_name);
             $o_password= $customer->set_password($password);
 

             // check for any error message

                    if($o_first_name=="" && $o_last_name=="" &&$o_address=="" && $o_city=="" && $o_postal_code=="" && $o_province=="" &&
                            $o_user_name=="" && $o_password=="")
                    {


                                    $customer->save();
                                    $confirmation=" your Information succesfully Updated !";
                    }

                    // print the error message ( i could have just printed the setter function return message)
                    else
                    {

                        $error_first_name=$o_first_name;
                        $error_last_name=$o_last_name;
                        $error_address=$o_address;
                        $error_city=$o_city;
                        $error_province=$o_province;
                        $error_postal_code=$o_postal_code;
                        $error_user_name=$o_user_name;
                        $error_password=$o_password;

                    }

            }

        }
         
         
     }
    
 }
 else
 {
     $title="REGISTER";
     
     // insert the data to the data base using my object customer
            if(isset($_POST["register"]))
        {
            // create the object
            $customer1= new customer();
            $customers= new customers();


            // prevent from html injection
            $first_name= htmlspecialchars($_POST["first_name"]);
            $last_name= htmlspecialchars($_POST["last_name"]);
            $address= htmlspecialchars($_POST["address"]);
            $city= htmlspecialchars($_POST["city"]);
            $province= htmlspecialchars($_POST["province"]);
            $postal_code= htmlspecialchars($_POST["postal_code"]);
            $user_name= htmlspecialchars($_POST["user_name"]);
            $password= htmlspecialchars($_POST["password"]);

            // check in my collection if the user name exist
            foreach($customers->items as $new_customer)
                   {
                            if($new_customer->get_user_name()==$user_name)
                            {
                                $error_user_name_exist="Username already Exist !";
                            }
                   }
             // if the user doesnt exist we save        
            if($error_user_name_exist=="")
            {
            //set the properties to the enteriis

             $o_first_name= $customer1->set_first_name($first_name);
             $o_last_name= $customer1->set_last_name($last_name);
             $o_address= $customer1->set_address($address);
             $o_city= $customer1->set_city($city);
             $o_province=$customer1->set_province($province);
             $o_postal_code= $customer1->set_postal_code($postal_code);
             $o_user_name= $customer1->set_user_name($user_name);
             $o_password= $customer1->set_password($password);

             // check for any error message

                    if($o_first_name=="" && $o_last_name=="" &&$o_address=="" && $o_city=="" && $o_postal_code=="" && $o_province=="" &&
                            $o_user_name=="" && $o_password=="")
                    {


                                    $customer1->save();
                                    $confirmation="you are succesfully registered ! ";
                    }

                    // print the error message ( i could have just printed the setter function return message)
                    else
                    {

                        $error_first_name=$o_first_name;
                        $error_last_name=$o_last_name;
                        $error_address=$o_address;
                        $error_city=$o_city;
                        $error_province=$o_province;
                        $error_postal_code=$o_postal_code;
                        $error_user_name=$o_user_name;
                        $error_password=$o_password;

                    }

            }


        }
    
     
 }






createPageTop("register","bodyDefault");
createNavigatiMenu("logoDefault");

?>
<div class="log-form">
    <h2><?php echo $title;?></h2>
<form  method="POST">
  <input type="text"  placeholder="First name:" name="first_name" value="<?php echo $value_first_name;?>"><spam class="error">  <?php   echo $error_first_name;?> </spam><br>
 
  <input type="text" placeholder="Last name:" name="last_name" value="<?php echo $value_last_name;?>"><spam class="error">  <?php   echo $error_last_name; ?> </spam><br>
 
  <input type="text" placeholder="Address:" name="address" value="<?php echo $value_address;?>"><spam class="error">  <?php   echo $error_address; ?> </spam><br>
  
  <input type="text" placeholder="City:" name="city" value="<?php echo $value_city;?>"><spam class="error">  <?php   echo $error_city; ?> </spam><br>
  
  <input type="text" placeholder="Province:" name="province" value="<?php echo $value_province;?>"><spam class="error">  <?php   echo $error_province; ?> </spam><br>
 
  <input type="text" placeholder="Postal Code:"  name="postal_code" value="<?php echo $value_postal_code;?>"><spam class="error">  <?php   echo $error_postal_code; ?> </spam><br>
  
  <input type="text" placeholder="Username:"  name="user_name" value="<?php echo $value_user_name;?>"><spam class="error">  <?php   echo $error_user_name.$error_user_name_exist; ?> </spam><br>
  
  <input type="password" placeholder="Password" name="password"><spam class="error" value="<?php echo $value_password;?>"> <?php   echo $error_password; ?> </spam> <br><br>

  <input type="submit" value="DONE"  name="register"><spam class="error"> <?php   echo $confirmation; ?> </spam>
</form>
</div>
<?php
createPageBottom();
