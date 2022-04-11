<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
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
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <!--Chartist CSS-->
    <link rel="stylesheet" href="assets/css/chartist.min.css">
    <!--Datatable-->
    <link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">
    <!--Nice select -->
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <!--Bootstrap Calendar-->
    <link rel="stylesheet" href="assets/js/calendar/bootstrap_calendar.css">

    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <title>Sleek Admin</title>
  </head>
  <body>
  
  
  
  
  
  
  
  
 
    <div class="loader-wrapper">
        <div class="loader-circle">
            <div class="loader-wave"></div>
        </div>
    </div>

    <!--Page Wrapper-->

    <div class="container-fluid">

        <!--Header-->
        <div class="row header shadow-sm">
            
            <!--Logo-->
            <div class="col-sm-3 pl-0 text-center header-logo">
               <div class="bg-theme mr-3 pt-3 pb-2 mb-0">
                    <h3 class="logo"><a href="#" class="text-secondary logo"><i class="fa fa-rocket"></i>Employer<span class="small"></span></a></h3>
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
                                <i class="fa fa-bell"></i>
                                <span class="badge badge-danger">5</span>
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
                                <span class="badge badge-danger">4</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-left mt-10 animated zoomInDown" aria-labelledby="dropdownMenuLink3">
                                <a class="dropdown-item" href="#"><strong>Unread messages</strong></a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                    <div class="media">
                                        <img class="align-self-center mr-3 rounded-circle" src="assets/img/profile.jpg" width="50px" height="50px" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <h6 class="mt-0"><strong>Adam Abdulrahman</strong></h6>
                                            <p>How are you?</p>
                                            <small class="text-success">09:23am</small>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                    <div class="media">
                                        <img class="align-self-center mr-3 rounded-circle" src="assets/img/profile.jpg" width="50px" height="50px" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <h6 class="mt-0"><strong>Adam Abdulrahman</strong></h6>
                                            <p>How are you?</p>
                                            <small class="text-success">09:23am</small>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">
                                    <div class="media">
                                        <img class="align-self-center mr-3 rounded-circle" src="assets/img/profile.jpg" width="50px" height="50px" alt="Generic placeholder image">
                                        <div class="media-body">
                                            <h6 class="mt-0"><strong>Adam Abdulrahman</strong></h6>
                                            <p>How are you?</p>
                                            <small class="text-success">09:23am</small>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-center link-all" href="#">View all messages</a>
                            </div>
                        </span>
                        <!--Inbox icon-->
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                    </div>
                    <!--Menu Icons-->

                    <!--Search box and avatar-->
                    <div class="col-sm-8 col-4 text-right flex-header-menu justify-content-end">
                        <div class="search-rounded mr-3">
                            <input type="text" class="form-control search-box" placeholder="Que rechercher vous.." />
                        </div>
                        <div class="mr-4">
                            <a class="" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img src="assets/img/abdi.jpg" alt="Adam" class="rounded-circle" width="40px" height="40px">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right mt-13" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="#"><i class="fa fa-user pr-2"></i> Profile</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="fa fa-th-list pr-2"></i> Tasks</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="fa fa-book pr-2"></i> Projects</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="fa fa-power-off pr-2"></i> Logout</a>
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
                        <img src="assets/img/abdi.jpg" alt="" class="rounded-circle" />
                        <p><strong>ABDIKARIM MED</strong></p>
                        <span class="text-primary small"><strong>HOUSSEIN</strong></span>
                    </div>
                    <!--Image Avatar-->

                    <!--Sidebar Navigation Menu-->
                    <div class="sidebar-menu-container">
                        <ul class="sidebar-menu mt-4 mb-4">
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('dashboard'); return false" class=""><i class="fa fa-dashboard mr-3"> </i>
                                    <span class="none">Congé<i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="dashboard">
                                    <li class="child"><a href="" class="ml-4"><i class="fa fa-angle-right mr-2"></i>Demande Congé</a></li>
                                    <li class="child"><a href="" class="ml-4"><i class="fa fa-angle-right mr-2"></i>Consultation Etat Congé </a></li>
                                 
                                </ul>
                            </li>
                            </li>
                            
                            <li class="parent">
                                <a href="#" onclick="toggle_menu('ul_element'); return false" class=""><i class="fa fa-puzzle-piece mr-3"></i>
                                    <span class="none">Absences<i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="ul_element">
                                    <li class="child"><a href="" class="ml-4"><i class="fa fa-angle-right mr-2"></i>Consultation Absences </a></li>
                                    
                                    
                                </ul>
                                <li class="parent">
                                <a href="#" onclick="toggle_menu('form_element'); return false" class=""><i class="fa fa-pencil-square mr-3"></i>
                                    <span class="none">Fiche De Paie <i class="fa fa-angle-down pull-right align-bottom"></i></span>
                                </a>
                                <ul class="children" id="form_element">
                                    <li class="child"><a href="orders.html" class="ml-4"><i class="fa fa-angle-right mr-2"></i> Voir Fiche De Paie</a></li>
                                    
                                </ul>
                            </li>
                            </li>
                        </li>
                           
                        </ul>
                    </div>
                    <!--Sidebar Naigation Menu-->
                </div>
            </div>
                            
                            
                            
                            
                            
                            
                            
                           
                            
                            
                       
            <!--Sidebar left-->

            <!--Content right-->
            <div class="col-sm-9 col-xs-12 content pt-3 pl-0">
                <h5 class="mb-0" ><strong>Listes Des Employés</strong></h5>
                <span class="text-secondary">Enregistrer <i class="fa fa-angle-right"></i>Listes</span>
                 
                
                <div class="mt-4 mb-4 p-3 bg-white border shadow-sm lh-sm">
                    <!--Order Listing-->
                    <div class="product-list">
                        
                        <div class="row border-bottom mb-4">
                            <div class="col-sm-8 pt-2"><h6 class="mb-4 bc-header">Listes</h6></div>
                            <div class="col-sm-4 text-right pb-3">
                                <button type="button" class="btn btn-danger icon-round shadow pull-right">
                                    <i class="fas fa-trash"></i>
                                </button>

                                <div class="pull-right mr-3 btn-order-bulk">
                                    
                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                        
                        <div class="table-responsive product-list">
                       
                      <%
                                  String urle="jdbc:mysql://localhost:3306/abdikarim";
                                 String nome="root";
                                 String mdpe="";
                           
                                 int nombre1=0;
                                
                                try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con=DriverManager.getConnection(urle,nome,mdpe);
                                    PreparedStatement ps1=con.prepareStatement("select * from module");
                                    ResultSet rs=ps1.executeQuery();
                                   
                                    ps1=con.prepareStatement("select count(*) from module");
                                     rs=ps1.executeQuery();
                                    rs.next();
                                    nombre1=rs.getInt(1);
                                    rs.close();
                                    ps1.close();
                                    con.close();
                                    
                                }catch(Exception e){
                                    
                                }
                                
                             
                                %>
                                  Nombre des modules :<%=nombre1%>
                            <table class="table table-bordered table-striped mt-3" id="productList">
                            
                                <thead>
                                    <tr>
                                        
                                        <th>ID</th>
                                        <th>Discipline</th>
                                        
                                        <th>Enseignant</th>
                                        
                                
                                        <th>Action</th>

                                    </tr>

                                </thead>
                                
                                
                                <%
                                  String url="jdbc:mysql://localhost:3306/abdikarim";
                                 String nom="root";
                                 String mdp="";
                           
                                 int nombre=0;
                                
                                try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con=DriverManager.getConnection(url,nom,mdp);
                                    PreparedStatement ps=con.prepareStatement("select * from module");
                                    ResultSet rs=ps.executeQuery();
                                    while(rs.next()){
                                        
                                          %>
                                          
                                           <tr>
                                
                                <td><%=rs.getString(1) %></td>
                                <td><%=rs.getString(2) %></td>
                                <td><%=rs.getString(3) %></td>
                                <td class="align-middle text-center">
                                            <button class="btn btn-theme" data-toggle="modal" data-target="#orderInfo">
                                                <i class="fa fa-eye"></i>
                                            </button>
                                            <button class="btn btn-success" data-toggle="modal" data-target="#orderUpdate"><i class="fa fa-pencil"></i></button>
                                            <button class="btn btn-danger"><i class="fas fa-trash"></i></button>
                                        </td>
                                </tr>
                                      <%    
                                    }
                                 
                                   
                                    rs.close();
                                    ps.close();
                                    con.close();
                                    
                                }catch(Exception e){
                                    
                                }
                                
                             
                                %>
                                
                               
                            </table>
                    

                        </div>

                    </div>

                    <!--/Order Listing-->

                    <!--Order Info Modal-->
                    
                    <!--Order Info Modal-->

                    <!--Order Update Modal-->
                 
                    <!--Order Update Modal-->
                </div>

                <!--Footer-->
                
                <!--Footer-->

            </div>
        </div>

        <!--Main Content-->

    </div>

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
    <!--Datatable-->
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/dataTables.bootstrap4.min.js"></script>
    <!--Bootstrap Calendar JS-->
    <script src="assets/js/calendar/bootstrap_calendar.js"></script>
    <script src="assets/js/calendar/demo.js"></script>
    <!--Nice select-->
    <script src="assets/js/jquery.nice-select.min.js"></script>

    <!--Custom Js Script-->
    <script src="assets/js/custom.js"></script>
    <!--Custom Js Script-->
   
  </body>
</html>