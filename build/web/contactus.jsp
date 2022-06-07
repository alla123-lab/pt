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
                                <li class="active"><a href="contactus.do">contact us</a></li>
                                <li><a href="aboutus.do">about us</a></li>
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
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
      <%@include file="header.jsp" %>
    <section id="main-content">
        <section class="wrapper">
          <h3><i class="fa fa-angle-right"></i> Contact us</h3>
          <!-- BASIC FORM ELELEMNTS -->
          <div class="row mt">
            <div class="col-lg-6 col-md-6 col-sm-6">
              <h4 class="title">Contact Form</h4>
              <div id="message"></div>
              <form class="contact-form php-mail-form" role="form" action="contactform/contactform.php" method="POST">
  
                <div class="form-group">
                  <input type="name" name="name" class="form-control" id="contact-name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" >
                  <div class="validate"></div>
                </div>
                <div class="form-group">
                  <input type="email" name="email" class="form-control" id="contact-email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
                  <div class="validate"></div>
                </div>
                <div class="form-group">
                  <input type="text" name="subject" class="form-control" id="contact-subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject">
                  <div class="validate"></div>
                </div>
  
                <div class="form-group">
                  <textarea class="form-control" name="message" id="contact-message" placeholder="Your Message" rows="11" data-rule="required" data-msg="Please write something for us"></textarea>
                  <div class="validate"></div>
                </div>
  
                <div class="loading"></div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
  
                <div class="form-send">
                  <button type="submit" class="btn btn-large btn-primary">Send Message</button>
                </div>
  
              </form>
            </div>
  
            <div class="col-lg-6 col-md-6 col-sm-6">
              <h4 class="title">Contact Details</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
              <ul class="contact_details">
                <li><i class="fa fa-envelope-o"></i> DataTeam@tpplatform.com</li>
                <li><i class="fa fa-phone-square"></i> +212055555555</li>
                <li><i class="fa fa-home"></i> Hay EL Kods, Oujda, Maroc.</li>
              </ul>
              <!-- contact_details -->
            </div>
          </div>
          <!-- /row -->
  
  
          <!-- /row -->
        </section>
        <!-- /wrapper -->
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
