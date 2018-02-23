<?php

  function createUser($fname, $username, $email, $lvllist){
    include('connect.php');
    $password = bin2hex(random_bytes(4));
    $encrypted = password_hash($password, PASSWORD_DEFAULT);
    $userstring = "INSERT INTO tbl_users (user_fname, user_name, user_pass, user_email, user_level) VALUES ('${fname}', '${username}', '${encrypted}', '${email}', '${lvllist}')";
    $userquery = mysqli_query($link, $userstring);
    //the following 4 lines of code send the username, randomly generated password, and login url.  This code was tested on a live server and works, though emails were sent to the
    //accounts spam folder.  It should work, but I was unable to set up an STMP server within mamp so I have not been able to test it that way
    $to = $email;
    $subject = 'Your Account Has Been Created';
    $message = 'Hi '.$fname.', your account has just been created.  Your username is '.$username.' and your password is '.$password.'.  Go to http://quinnedydesigns.com/kennedy_j_3014_r2/admin/admin_login.php to login';
    $send = mail($to, $subject, $message);
    //code left in incase the email containing the randomly generated password does not work within mamp/wamp.
    echo 'the password is '.$password.'';
    mysqli_close($link);
    return array($password, $encrypted);
    redirect_to("admin_index.php");
  }

  function changePassword($potentialpassword, $username){
    include('connect.php');
    $newpassword = password_hash($potentialpassword, PASSWORD_DEFAULT);
    $changestring = "UPDATE tbl_users SET user_pass='{$newpassword}' WHERE user_name='{$username}'";
    $changequery = mysqli_query($link, $changestring);
    if($changequery){
      redirect_to('admin_index.php');
    }else {
      echo 'There was an error changing your password';
    }


  }




 ?>
