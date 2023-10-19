<?php

require '../includes/init.php';

Auth::requireLogin();

$conn = require '../includes/db.php';

$paginator = new Paginator($_GET['page'] ?? 1 , 6, Article::getTotal($conn));

$articles = Article::getPage($conn, $paginator -> limit, $paginator -> offset);

?>

<?php require '../includes/header.php';?>

<div class="container table-responsive">


  
<h2>Administration</h2>

<button id="btn-add-new-article" class="btn btn-lg btn-dark" ><a id="a-new-article" href="new-article.php">New article</a></button>

    <?php if (empty($articles)): ?>

      <p>No articles found</p>

    <?php else:?>
      
      <table id="articles-table" class="display">
        <thead>
          <th>Title</th>
          <th>Published</th>
        </thead>
        <tbody>
        <?php foreach ($articles as $article):?>
          <tr>
            <td>
              <a href="article.php?id=<?= $article['id']; ?>"><?= htmlspecialchars($article['title']);?></a>
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
      <?php require '../includes/pagination.php';?>
    <?php endif;?>
    </div>
<?php require '../includes/footer.php';?>