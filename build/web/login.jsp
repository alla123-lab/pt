<!DOCTYPE html>
<html lang="en">

<%@include file="head.jsp" %>


<body>
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page">
    <div class="container">
      <form class="form-login" action="log.do" method="POST">
        <h2 class="form-login-heading">sign in now</h2>
        <div class="login-wrap">
          <input type="text" class="form-control" name="email" placeholder="email acadimique" autofocus>
          <br>
          <input type="password" class="form-control" name="password" placeholder="Password"> <br>
          <button class="btn btn-theme btn-block"  type="submit"> <i class="fa fa-lock"></i> SIGN IN</button>
          <hr>
          
          <div class="registration">
            Don't have an account yet?<br/>
            <a class="" href="register.do">
              Create an account
              </a>
          </div>
        </div>
        
      </form>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("img/login-bg.jpg", {
      speed: 500
    });
  </script>
</body>

</html>
