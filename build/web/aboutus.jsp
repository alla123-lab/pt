<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>

    <body>
        <section id="container">

            <!-- **********************************************************************************************************************************************************
                MAIN SIDEBAR MENU
                *********************************************************************************************************************************************************** -->
            <!--sidebar start-->
            <aside>
                <div id="sidebar" class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">
                        <p class="centered"><img src="img/default.jpg" class="img-circle" width="80"></p>
                        <h5 class="centered">${etudiant.username}</h5>

                        <li class="sub-menu">
                            <a class="active" href="javascript:;">
                                <i class="fa fa-info-circle"></i>
                                <span>information</span>
                            </a>
                            <ul class="sub">
                                <li ><a href="index.do">acceuil</a></li>
                                <li ><a href="contactus.do">contact us</a></li>
                                <li class="active"><a href="aboutus.do">about us</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="data.do">
                                <i class=" fa fa-cloud"></i>
                                <span>IDSCC</span>
                            </a>
                        </li>
                        
                        <li class="sub-menu">
                            <a href="cssi.do">
                                <i class="fa fa-unlock-alt"></i>
                                <span>Cyber Sécurité</span>
                            </a>
                        </li>
                        
                        <li class="sub-menu">
                            <a href="itirc.do">
                                <i class="fa fa-tasks"></i>
                                <span>ITIRC</span>
                            </a>
                        </li>
                        
                        
                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
      <%@include file="header.jsp" %>
    <section id="main-content">
        <section class="wrapper">
            <div class="row ">
              <div class="col-lg-9 main-chart"> 
                <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
                  <h1>Better Solutions For Your Cloud private</h1>
                  <h2>We are team of cloud computing in ENSA Oujda</h2>
                </div>
                <div class="col-lg-6 order-1 order-lg-2 " data-aos="zoom-in" data-aos-delay="200">
                  <img src="img/hero-img.png"  class="img-fluid tail animated" alt="">
                </div>
            </div>
              
            
        </section><!-- End Hero -->
      </section>
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>ENSA-OUJDA</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created by <a href="https://ensao.ma/">Data Teams</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>

  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>

  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
  
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  </script>
</body>

</html>
