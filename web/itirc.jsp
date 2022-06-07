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
                            <a  href="index.do">
                                <i class="fa fa-info-circle"></i>
                                <span>information</span>
                            </a>
                            <ul class="sub">
                                <li ><a href="index.do">acceuil</a></li>
                                <li ><a href="contactus.do">contact us</a></li>
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
                            <a class="active" href="itirc.do">
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
            <!--header start-->
           <%@include file="header.jsp" %>

          <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
        <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-9 main-chart">
            <!--CUSTOM CHART START -->
            <div class="border-head">
              <h3>Traveaux Pratiques de ITIRC</h3>
            </div>
      
            <!-- row -->
            <div class="row">
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <img src="img/rs.jpg" width="200" height="200"  alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              
              <!-- /col -->
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <img src="img/divcpp.jpg" width="200" height="200"  alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              
              <!-- /col -->
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <img src="img/pc.jpg" width="200" height="200"  alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              <!-- /col -->
            </div>
            <!-- /row -->
            <!-- row -->
            <div class="row">
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <img src="img/notepad.png" width="200" height="200"  alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              
              <!-- /col -->
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <img src="img/nb.png" width="200" height="200"  alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              
              <!-- /col -->
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <img src="img/octave.jpg" width="200" height="200"  alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              <!-- /col -->
            </div>
            <!-- /row -->
            <!-- row -->
            <div class="row">
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                    <img src="img/oracle.png" width="100%" height="200" alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              
              <!-- /col -->
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <img src="img/vs2.png" width="100%" height="200"  alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              
              <!-- /col -->
              <!-- col -->
              <div class="col-lg-4 col-md-4 col-sm-4 mb">
                <div class="product-panel-2 pn">
                  <img src="img/gp.png" width="100%" height="200"  alt="">
                  <div><button class="btn btn-small btn-theme04">play</button></div>
                </div>
              </div>
              <!-- /col -->
            </div>
            <!-- /row -->
     </div>
          <!-- /col-lg-9 END SECTION MIDDLE -->
          <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
  <div class="col-lg-3 ds">
            <!--COMPLETED ACTIONS DONUTS CHART-->
            <div class="donut-main">
             
                <img src="img/logoensao.png" class="d-block " height="160" width="100%" >
            </div>
            <div class="donut-main">
              <canvas id="newchart" height="26"  width="100%"></canvas>
            </div>
            <div class="donut-main">
             
                <img src="img/itirc.png" class="d-block " height="160" width="100%" >
            </div>
           <div class="donut-main">
              <canvas id="newchart" height="24"  width="100%"></canvas>
            </div>
           
            <!-- CALENDAR-->
            <div id="calendar" class="mb">
              <div class="panel green-panel no-margin">
                <div class="panel-body">
                  <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                    <div class="arrow"></div>
                    <h3 class="popover-title" style="disadding: none;"></h3>
                    <div id="date-popover-content" class="popover-content"></div>
                  </div>
                  <div id="my-calendar"></div>
                </div>
              </div>
            </div>
            <!-- / calendar -->
            
          </div>
          <!-- /col-lg-3 -->
        </div>
        <!-- /row -->
      </section>
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
