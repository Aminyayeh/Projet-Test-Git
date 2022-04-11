<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="description" content="" >
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!--Meta Responsive tag-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!--Custom style.css-->
    <link rel="stylesheet" href="assets/css/quicksand.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!--Font Awesome-->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <!--Chartist CSS-->
    <link rel="stylesheet" href="assets/css/chartist.min.css">
    <!--Bootstrap Calendar-->
    <link rel="stylesheet" href="assets/js/calendar/bootstrap_calendar.css">

    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <title>Ajouter Employer</title>
  </head>
  <body>
    
    <!--Page Wrapper-->

    <div class="container-fluid">

        <!--Header-->
        <div class="row header shadow-sm">
            
            <!--Logo-->
            <div class="col-sm-3 pl-0 text-center header-logo">
               <div class="bg-theme mr-3 pt-3 pb-2 mb-0">
                    <h3 class="logo"><a href="#" class="text-secondary logo"><i class="fa fa-rocket"></i>AJOUTER EMPLOYES <span class="small"></span></a></h3>
               </div>
            </div>
            <!--Logo-->

            <!--Header Menu-->
            <div class="col-sm-9 header-menu pt-2 pb-0">
                <div class="row">
                    
                    <!--Menu Icons-->
                    <div class="col-sm-4 col-8 pl-0">
                        <!--Toggle sidebar-->
                        <span class="menu-icon" onclick="toggle_sidebar()">
                            <span id="sidebar-toggle-btn"></span>
                        </span>
                        <!--Toggle sidebar-->
                        <!--Notification icon-->
                        <div class="menu-icon">
                            <a class="" href="#" onclick="toggle_dropdown(this); return false" role="button" class="dropdown-toggle">
                                <!--<i class="fa fa-bell"></i>-->
                                 <!--<span class="badge badge-danger">5</span>-->
                            </a>
                            <div class="dropdown dropdown-left bg-white shadow border">
                                <a class="dropdown-item" href="#"><strong>Notifications</strong></a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                    <div class="media">
                                        <div class="align-self-center mr-3 rounded-circle notify-icon bg-primary">
                                            <i class="fa fa-bookmark"></i>
                                        </div>
                                        <div class="media-body">
                                            <h6 class="mt-0"><strong>Meeting</strong></h6>
                                            <p>You have a meeting by 8:00</p>
                                            <small class="text-success">09:23am</small>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                    <div class="media">
                                        <div class="align-self-center mr-3 rounded-circle notify-icon bg-secondary">
                                            <i class="fa fa-link"></i>
                                        </div>
                                        <div class="media-body">
                                            <h6 class="mt-0"><strong>Events</strong></h6>
                                            <p>Launching new programme</p>
                                            <small class="text-success">09:23am</small>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                    <div class="media">
                                        <div class="align-self-center mr-3 rounded-circle notify-icon bg-warning">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="media-body">
                                            <h6 class="mt-0"><strong>Personnel</strong></h6>
                                            <p>New employee arrival</p>
                                            <small class="text-success">09:23am</small>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-center link-all" href="#">See all notifications ></a>
                            </div>
                        </div>
                        <!--Notication icon-->

                        <!--Inbox icon-->
                         <span class="menu-icon inbox">
                            <a class="" href="#" role="button" id="dropdownMenuLink3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-envelope"></i>
                                <span class="badge badge-danger"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-left mt-10 animated zoomInDown" aria-labelledby="dropdownMenuLink3">
                                <a class="dropdown-item" href="#"><strong>1 messages</strong></a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                    
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                   <div class="media">
                                         <a  href="afficherdemande.php"><img class="align-self-center mr-3 rounded-circle" src="avatar.png" width="70px" height="70px">
                                        <div class="media-body">
                                            <h6 class="mt-0"><strong>demande conge</strong></h6></a>
                                            <p></p>
                                            <small class="text-success"></small>
                                        </div>
                                    </div>
                                </a> 
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                   
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-center link-all" href="#"></a>
                            </div>
                        </span>
                        <!--Inbox icon-->
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                    </div>
                    <!--Menu Icons-->
                    <!--Menu Icons-->

                    <!--Search box and avatar-->
                     <div class="col-sm-8 col-4 text-right flex-header-menu justify-content-end">
                        <div class="search-rounded mr-3">
                            <input type="text" class="form-control search-box" placeholder="Que rechercher vous.." />
                        </div>
                        <div class="mr-4">
                            <a class="" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img src="assets/img/de.png" alt="Adam" class="rounded-circle" width="40px" height="40px">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right mt-13" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="profile.html"><i class="fa fa-user pr-2"></i> Profile</a>
                                
                                <a class="dropdown-item" href='logout.php'><i class="fa fa-power-off pr-2"></i> Logout</a>
                               
                            </div>
                        </div>
                    </div>
                    <!--Search box and avatar-->
                </div>    
            </div>
            <!--Header Menu-->
        </div>
        <!--Header-->

        <!--Main Content-->

        <div class="row main-content">
            <!--Sidebar left-->
            <div class="col-sm-3 col-xs-6 sidebar pl-0">
                <div class="inner-sidebar mr-3">
                    <!--Image Avatar-->
                    <div class="avatar text-center">
                        <img src="assets/img/de.png" alt="" class="rounded-circle" />
                        <p><strong>ABDIKARIM MED</strong></p>
                        <span class="text-primary small"><strong>HOUSSEIN</strong></span>
                    </div>
                    <!--Image Avatar-->
                    <!--Sidebar Navigation Menu-->
                   <div class="sidebar-menu-container">
                        <ul class="sidebar-menu mt-4 mb-4">
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('dashboard'); return false" class=""><i class="fa fa-dashboard mr-3"> </i>
                                    <span class="none">Enregister un Employer<i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="dashboard">
                                    <li class="child"><a href="AjouterEmployer.html" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Ajouter Employer</a></li>
                                     <li class="child"><a href="afficheremployer.php" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Listes Des Employers </a></li>-->
                                 
                                </ul>
                            </li>
                            </li>
                            
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('ul_element'); return false" class=""><i class="fa fa-puzzle-piece mr-3"></i>
                                    <span class="none">Fiche De Paie <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="ul_element">
                                    <li class="child"><a href="AjouterFicherDeBaie.php" class="ml-4"><i class="fa fa-angle-right mr-2"></i>Ajouter une Fiche de paie</a></li>
                                         <li class="child"><a href="afficherfiche.php" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Listes de fiche de paie</a></li>-->
                                    
                                </ul>
                            </li>
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('form_element'); return false" class=""><i class="fa fa-pencil-square mr-3"></i>
                                    <span class="none">Conges <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="form_element">
                                    <li class="child"><a href="afficherdemande.php" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Traiter congés</a></li>
                                    
                                </ul>
                            </li>
                        </li>
                           
                        </ul>
                    </div>
                    <!--Sidebar Naigation Menu-->
                </div>
            </div>
            <!--Sidebar left-->

            <!--Content right-->

            <!--Content right-->

            <div class="col-sm-9 col-xs-12 content pt-3 pl-0">
                <h5 class="mb-0" ><strong>Ajouter une discipline</strong></h5>
                <span class="text-secondary">Enregistrer <i class="fa fa-angle-right"></i> Ajouter</span>
               
                <div class="row mt-3">
                    <div class="col-sm-12">
                        <!--Default elements-->
                        <div class="mt-1 mb-3 p-3 button-container bg-white border shadow-sm">
                        
                             
                            <form class="form-horizontal mt-4 mb-5" action="sevajoutermodule" method="POST">
                              
                                     <div class="form-group row">

                                    <label class="control-label col-sm-2" for="input-1">ID</label>
                                    <div class="col-sm-10">
                                        <input type="number" name="id" class="form-control" id="input-1" placeholder="ID" />
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="control-label col-sm-2" for="input-1">Nom de la matiére</label>
                                    <div class="col-sm-10">

                                          <select name="module" class="form-control" id="input-3" >
                                          <option value="JAVA WEB">JAVA WEB</option>  
                                           <option value="ANDROID">ANDROID</option>  
                                            <option value="ORACLE">OARACLE</option>  
                                            

                                         </select>
                                       
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-sm-2" for="input-2">Enseignant</label>
                                    <div class="col-sm-10">
                                    
                                  <select name="enseignant" class="form-control" id="input-3" >
                                          <option value="FAHMI">FAHMI</option>  
                                           <option value="KADER">KADER</option>  
                                            <option value="GINALEH">GINALEH</option>  
                                            

                                         </select>
                                    </div>
                                </div>
                              
                        <!--Form grid-->
                        
                                        </div>
                                        <div class="form-group">
                                       <input type="submit" class="btn btn-primary" value="Enregistrer">
                                            
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!--/Vertical form-->

                            <!--Horizontal form-->
                           
                                    </form>
                                </div>
                            </div>
                            <!--/Horizontal form-->
                        </div>


                    </div>
                </div>
               

                <!--Footer-->
                

    <!--Page Wrapper-->

    <!-- Page JavaScript Files-->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery-1.12.4.min.js"></script>
    <!--Popper JS-->
    <script src="assets/js/popper.min.js"></script>
    <!--Bootstrap-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!--Sweet alert JS-->
    <script src="assets/js/sweetalert.js"></script>
    <!--Progressbar JS-->
    <script src="assets/js/progressbar.min.js"></script>
    <!--Charts-->
    <!--Canvas JS-->
    <script src="assets/js/charts/canvas.min.js"></script>
    <!--Bootstrap Calendar JS-->
    <script src="assets/js/calendar/bootstrap_calendar.js"></script>
    <script src="assets/js/calendar/demo.js"></script>
    <!--Bootstrap Calendar-->

    <!--Custom Js Script-->
    <script src="assets/js/custom.js"></script>
    <!--Custom Js Script-->
     <style >
          body{
            background-image: url(tarred.jpeg);
          }
      </style>
  </body>
</html>