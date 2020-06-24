<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Contacts</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.dataTables.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url('assets/fontawesome/css/fontawesome.css'); ?>" rel="stylesheet" type="text/css" />

  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Login</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">

          </li>
          <li class="nav-item">

          </li>
          <li class="nav-item dropdown">


          </li>
          <li class="nav-item">

          </li>
        </ul>
        
      </div>
    </nav>




<div class="container">
  <?php if ($this->session->flashdata('message')): ?>
    <div class="alert alert-info">
      <?php echo $this->session->flashdata('message'); ?>
    </div>
  <?php endif; ?>
  <form action="<?php echo base_url('auth/login'); ?>" method="post">
    <div class="form-group">
      <label for="exampleInputEmail1">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" name="identity" aria-describedby="emailHelp" placeholder="Enter email">
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
    </div>

    <button type="submit" class="btn btn-primary">Login</button>|
    <a href="<?php echo base_url('auth/register'); ?>"> Register</a>
  </form>

</div>
<script type="text/javascript">
  var base_url = '<?php echo base_url(); ?>';
</script>
<script src="<?php echo base_url('assets/template/js/jquery.min.js'); ?>" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.js" type="text/javascript"></script>
<script src="<?php echo base_url('assets/template/js/custom.js'); ?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/template/js/jquery-ui.min.js'); ?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/template/js/popper.min.js'); ?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/template/js/bootstrap.min.js'); ?>" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="<?php echo base_url('assets/template/js/jquery-easy.js'); ?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/custom/mycustomjs.js'); ?>" type="text/javascript"></script>

</body>
</html>
