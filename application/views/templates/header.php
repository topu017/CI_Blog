<html>
<head>
    <title>CI Blog</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/11.1.1/classic/ckeditor.js"></script>
    <link rel="stylesheet" href="<?php echo site_url(); ?>assets/css/style.css">
</head>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="<?php echo base_url(); ?>">ciBlog</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="<?php echo base_url(); ?>">Home</a></li>
            <li><a href="<?php echo base_url(); ?>about">About</a></li>
            <li><a href="<?php echo base_url(); ?>posts">Blog</a></li>
            <li><a href="<?php echo base_url(); ?>categories">Categories</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <?php if(!$this->session->userdata('logged_in')): ?>
            <li class="active"><a href="<?php echo base_url(); ?>users/login">Sign In</a></li>
            <li class="active"><a href="<?php echo base_url(); ?>users/register">Sign Up</a></li>
            <?php endif; ?>
            <?php if($this->session->userdata('logged_in') && $this->session->userdata('user_id') == 1){ ?>
                <li class="active"><a href="<?php echo base_url(); ?>posts/create">Create post</a></li>
                <li class="active"><a href="<?php echo base_url(); ?>categories/create">Create category</a></li>
                <li class="active"><a href="<?php echo base_url(); ?>users/logout">Sign Out</a></li>
            <?php }elseif($this->session->userdata('logged_in') && $this->session->userdata('user_id') != 1){?>
            <li class="active"><a href="<?php echo base_url(); ?>users/logout">Sign Out</a></li>
            <?php } ?>
        </ul>
    </div>
</nav>
<div class="container">
    <!-- Flash Message -->
    <?php if($this->session->flashdata('user_registered')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('post_created')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>'; ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('post_updated')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>'; ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('post_deleted')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>'; ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('category_created')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>'; ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('login_failed')): ?>
        <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>'; ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('user_loggedin')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>'; ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('user_loggedout')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>'; ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('category_deleted')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_deleted').'</p>'; ?>
    <?php endif; ?>

