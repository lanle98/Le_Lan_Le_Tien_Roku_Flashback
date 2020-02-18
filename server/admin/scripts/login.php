<?php
function login($username,$password){
    // return sprintf('You are trying username=>%s, password=>%s', $username, $password);

    $pdo = Database::getInstance()->getConnection();

    //check existance
    //
    
    $check_exist_query = "SELECT * FROM tbl_user where user_name = '$username' and user_pass = '$password';";
   
    $user_set = $pdo->query($check_exist_query);

    if($user_set->fetchColumn()>0){
        echo "you're logged in";
    }else{
        return "User does not exist";
    }

    
}