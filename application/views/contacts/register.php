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

      <a class="navbar-brand" href="#">Register</a>
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
        <form class="form-inline my-2 my-lg-0">
          <a href="<?php echo base_url('auth/login'); ?>" class="btn btn-outline-success my-2 my-sm-0" type="submit" >Login</a>
        </form>
      </div>

    </nav>



<div class=" container">

    <div class="alert alert-info" id="message" style="display:none;">

    </div>

  <form id="regForm">
    <div class="form-group">
      <label for="name">Name</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
    </div>
    <div class="form-group">
      <label for="email">Email address</label>
      <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email" required>
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
    </div>
    <div class="form-group">
      <label for="confirmPass">Password</label>
      <input type="password" class="form-control" id="password_confirm" name="password_confirm" placeholder="Confirm Password" required>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
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
