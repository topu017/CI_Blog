<?php echo form_open('users/login'); ?>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <h1 class="text-center"><?php echo $title; ?></h1>
        <div class="form-group">
            <input class="form-control" type="text" name="username" placeholder="Enter username" required autofocus>
        </div>
        <div class="form-group">
            <input class="form-control" type="password" name="password" placeholder="Enter password" required autofocus>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </div>
</div>
<?php echo form_close(); ?>