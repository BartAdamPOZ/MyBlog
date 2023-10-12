<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="/css/jquery.datetimepicker.min.css">
  <link rel="stylesheet" href="/css/styles.css">

  <title>My blog</title>
</head>
<body>

  <div class="container">
 
  <header>
    <h1>My Blog</h1>
  </header>

  <nav>
    <ul class="nav">

      <li class="nav-item"><a class="nav-link" href="/">Home</a></li>

      <?php if (Auth::isLoggedIn()) :?>

        <li class="nav-item"><a class="nav-link" href="/admin/">Admin</a></li>
        <li class="nav-item"><a class="nav-link" href="/logout.php">Log out</a></li>

      <?php else :?>

        <li class="nav-item"><a class="nav-link" href="/login.php">Log in</a></li>

      <?php endif; ?>

      <li class="nav-item"><a class="nav-link" href="/contact.php">Contact</a></li>

    </ul>
  </nav>

  <main>