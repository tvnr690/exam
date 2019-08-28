<?php 
session_start();
unset($_SESSION['name']);
unset($_SESSION['eamil']);
session_destroy();


// header("loation: index.php");
// session_start(); 
// session_destroy(); 
header("location:index.php"); //to redirect back to "index.php" after logging out
exit();
 ?>