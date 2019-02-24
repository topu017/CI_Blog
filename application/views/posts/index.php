<h1><?= $title ?></h1>
<?php foreach($posts as $post){; ?>
<h3><?php echo $post['title']; ?>
    <div class="row">
        <div class="col-md-3">
            <img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
        </div>
        <div class="col-md-9">
            <small class="post-date">Posted On: <?php echo $post['created_at']; ?> in<strong>   <?php echo $post['name']; ?></strong></small><br>
            <?php echo word_limiter($post['body'], 30); ?><br><br>
            <p><a class="btn btn-info" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read more</a></p>
        </div>
    </div>
<?php } ?>
    <div class="pagination-links">
        <?php echo $this->pagination->create_links(); ?>
    </div>

