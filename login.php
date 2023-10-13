<?php 
require 'includes/init.php';


if ($_SERVER["REQUEST_METHOD"] == "POST"){

  $conn = require 'includes/db.php';

  if (User::authenticate($conn ,$_POST['username'], $_POST['password'])){

    Auth::login();

    Url::redirect('/');
  
  } else {
    $error = 'login incorrect';
  }
}
?>
<?php require 'includes/header.php'; ?>

<div class="form-signin w-100 m-auto">
  <h1 class="h3 mb-3 fw-normal">Login</h1>

  <?php if ( ! empty($error)) : ?>
  <p><?= $error ?></p>
  <?php endif;?>

  <form method='post'>

    <div class="form-floating">
      
      <input type="text" id="username" name="username" class="form-control">
      <label for="username">Username: </label>

    </div>
    <div class="form-floating">
      
      <input type="password" id="password" name="password" class="form-control">
      <label for="password">Password: </label>
    </div>

    <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>
  </form>
</div>
<?php require 'includes/footer.php'; ?>