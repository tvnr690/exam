<?php
session_start();
include 'db.php';
if(isset($_POST['login'])){
  $email = htmlspecialchars($_POST['email'], ENT_QUOTES | ENT_HTML5);
  $password = $_POST['password'];

  $search = "SELECT * FROM users WHERE email = '$email' ";
  $result = mysqli_query($con, $search);
  $rows = mysqli_num_rows($result);
  $data = mysqli_fetch_assoc($result);
  // print_r($data);exit;
  $hash = $data['password'];
  if($rows == 1){
    if (password_verify($password, $hash)) {
        $_SESSION['name'] = $data['name'];
        $_SESSION['email'] = $data['email'];
        header("location: index.php");
    }
    else {
        // Invalid credentials
        echo "<script>alert('Invalid credentials');</script>";
    }

  }else {
    echo "<script>alert('Please check your credentials');</script>";
    
  }
  
} 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exam</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.php">Exam</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>                  
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a class="nav-link" href="index.php">Home</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="login.php">Login</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="register.php">Register</a>
                </li>                       
              </ul>
            </div>
        </nav>
    </header>
    

    <section>
      <div class="container mt-5">
        <div class="row justify-content-center">
          <div class="col-md-6 bg-light p-5">
            <form method="post" action="">
              <div class="form-group">
                <label for="email">Email address</label>
                <input type="email"  name="email" class="form-control" id="email" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Password">
              </div>
              <!-- <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
              </div> -->
              <input type="submit" class="btn btn-primary" name="login" value="Login" >
            </form>
          </div>
        </div>
        
      </div>
    </section>
  



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>