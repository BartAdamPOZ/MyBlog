<?php
require '../includes/init.php';

Auth::requireLogin();

$conn = require '../includes/db.php';

if (isset($_GET['id'])) {

  $article = Article::getByID($conn ,$_GET['id']);

  if (! $article) {
    die("article not found");
  }
} else {
  die("id not supplied, article not found");
}

if ($_SERVER['REQUEST_METHOD'] == "POST") {

  if ($article -> delete($conn)) {

    Url::redirect("/admin/index.php");

  }
}
?>

<?php require '../includes/header.php';?>

<h2>Delete article</h2>

<?php if ($article -> image_file) : ?>
  <img src="/uploads/<?= $article -> image_file;?>">
<?php endif; ?>

<form method="post">

  <p>Are You sure?</p>

  <button>Delete</button>

  <a href="article.php?id=<?= $article -> id; ?>">Cancel</a>
</form>


<?php require '../includes/footer.php';?>