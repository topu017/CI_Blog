<?php echo validation_errors(); ?>

<?php echo form_open('users/register'); ?>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <h1 class="text-center"><?= $title ?></h1>
        <div class="form-group">
            <label>Name</label>
            <input class="form-control" type="text" name="name" placeholder="Name">
        </div>
        <div class="form-group">
            <label>Zipcode</label>
            <input class="form-control" type="text" name="zipcode" placeholder="Zipcode">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input class="form-control" type="email" name="email" placeholder="Email">
        </div>
        <div class="form-group">
            <label>Username</label>
            <input class="form-control" type="text" name="username" placeholder="Username">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input class="form-control" type="password" name="password" placeholder="Password">
        </div>
        <div class="form-group">
            <label>Confirm Password</label>
            <input class="form-control" type="password" name="password2" placeholder="Confirm Password">
        </div>
        <button class="btn btn-primary btn-block" type="submit">Submit</button>
    </div>
</div>
<?php echo form_close(); ?>