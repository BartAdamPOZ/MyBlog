<?php

require '../includes/init.php';

Auth::requireLogin();

$conn = require '../includes/db.php';

$articles = Article::getAllArticlesWithoutPagination($conn);

?>

<?php require '../includes/header.php';?>

<div id="table-admin" class="container">

  <h2>Administration</h2>

  <button id="btn-add-new-article" class="btn btn-lg btn-dark"><a id="a-new-article" href="new-article.php">New
      article</a></button>

  <?php if (empty($articles)): ?>

  <p>No articles found</p>

  <?php else:?>

  <table id="articles-table" class="display hover row-border" >
    <thead>
      <th>Title</th>
      <th>Categories</th>
      <th>Published</th>
    </thead>
    <tbody>

      <?php foreach ($articles as $article):?>
        
      <tr>
        <td>
          <a id="title-admin-table" href="article.php?id=<?= $article['id']; ?>"><?= htmlspecialchars($article['title']);?></a>
        </td>
        <td>
          <?php if ($article['category_names']) : ?>

          <?php foreach ($article['category_names'] as $name) : ?>

          <?= $name; ?>

          <?php endforeach; ?>

          <?php endif; ?>
        </td>
        <td>
          <?php if($article['published_at']) : ?>
          <time><?= $article['published_at']?></time>
          <?php else : ?>
          Unpublished
          <button class="publish" data-id="<?= $article['id'] ?>">Publish</button>
          <?php endif; ?>
        </td>
      </tr>
      <?php endforeach;?>
    </tbody>
  </table>

  <?php endif;?>
</div>
<?php require '../includes/footer.php';?>