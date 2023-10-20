<?php

require 'includes/init.php';

$conn = require 'includes/db.php';

$paginator = new Paginator($_GET['page'] ?? 1 , 6, Article::getTotal($conn, true));

$articles = Article::getPage($conn, $paginator -> limit, $paginator -> offset, true);

?>

<?php require 'includes/header.php';?>

<?php if (empty($articles)): ?>

<p>No articles found</p>

<?php else:?>

<div class="main-site-articles">

<?php foreach ($articles as $article):?>


  <div class="article-card col-md-4">
  
    <div class="row border rounded overflow-hidden shadow-lg ">
    <a href="article.php?id=<?= $article['id']; ?>" class="link-body-emphasis text-decoration-none">
    
      <div class="btn d-flex flex-column">

    <article>

      <h4 class="text-short"><?= htmlspecialchars($article['title']); ?></h4><br>

      <time><?php $datetime = new DateTime($article['published_at']); 
            echo $datetime -> format("j F, Y"); ?></time>

      <?php if ($article['category_names']) : ?>

      <p>Categories:

        <?php foreach ($article['category_names'] as $name) : ?>

        <?= $name; ?>

        <?php endforeach; ?>

      </p>

      <?php endif; ?>

      <p class="text-short"><?= htmlspecialchars($article['content']); ?></p>
      

    </article>
    <p>(Click to read more)</p>
    </div>
    
    </a>
    </div>
    
    
  </div>




<?php endforeach;?>

</div>

<?php require 'includes/pagination.php';?>

<?php endif;?>
<?php require 'includes/footer.php';?>