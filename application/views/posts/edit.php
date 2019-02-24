<h2><?= $title; ?></h2>
<?php echo validation_errors(); ?>

<?php echo form_open_multipart('posts/update'); ?>
<div class="form-group">
    <input type="hidden" name="id" value="<?php echo $post['id']; ?>">
    <label for="title">Title</label>
    <input type="text" class="form-control" name="title" placeholder="Add Title" value="<?php echo $post['title']; ?>">
</div>
<div class="form-group">
    <label for="exampleInputPassword1">Body</label>
    <textarea id="editor" class="form-control" name="body" placeholder="Add body"><?php echo $post['body']; ?></textarea>
</div>
<div class="form-group">
    <label>Upload Image</label>
    <img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
    <input type="file" name="userfile" size="20">
</div>
<div class="form_group">
    <label>Category</label>
    <select name="category_id" class="form-control">
        <option value="Null">Select</option>
        <?php foreach($categories as $category) {?>
            <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
        <?php } ?>
    </select>
</div>
<hr>
<button type="submit" class="btn btn-primary">Submit</button>
</form>