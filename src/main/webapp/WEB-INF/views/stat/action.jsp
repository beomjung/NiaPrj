<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="keywords" content="airbnb, booking, city guide, directory, events, hotel booking, listings, marketing, places, restaurant, restaurant">
  <meta name="description" content="Guido - Directory & Listing HTML Template">
  <meta name="CreativeLayers" content="ATFN">
  <!-- css file -->
  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/fileuploader.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/dashbord_navitaion.css">
  <!-- Responsive stylesheet -->
  <link rel="stylesheet" href="/css/responsive.css">
  <!-- Title -->
  <title>행동요령</title>
  <!-- Favicon -->
  <link href="images/favicon.ico" sizes="128x128" rel="shortcut icon" type="image/x-icon" />
  <link href="images/favicon.ico" sizes="128x128" rel="shortcut icon" />

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="wrapper">
  <div class="preloader"></div>

  <!-- Main Header Nav -->
  <%@include file="../../views/header.jsp" %>

  <!-- Main Header Nav For Mobile -->
  <div id="page" class="stylehome1 h0">
    <div class="mobile-menu">
      <div class="header stylehome1">
        <div class="main_logo_home2 text-left">
          <img class="nav_logo_img img-fluid mt15" src="/images/header-logo2.svg" alt="header-logo2.svg">
          <span class="mt15">Guido</span>
        </div>
        <ul class="menu_bar_home2">
          <li class="list-inline-item"><a class="custom_search_with_menu_trigger msearch_icon" href="#" data-toggle="modal" data-target="#staticBackdrop"><span class="flaticon-loupe"></span></a></li>
          <li class="list-inline-item"><a class="muser_icon" href="page-register.html"><span class="flaticon-avatar"></span></a></li>
          <li class="list-inline-item"><a class="menubar" href="#menu"><span></span></a></li>
        </ul>
      </div>
    </div><!-- /.mobile-menu -->
    <nav id="menu" class="stylehome1">
      <ul>
        <li><span>Home</span>
          <ul>
            <li><a href="index.html">Home V1</a></li>
            <li><a href="index2.html">Home V2</a></li>
            <li><a href="index3.html">Home V3</a></li>
          </ul>
        </li>
        <li><span>Explore</span>
          <ul>
            <li><a href="page-author-single.html">Author Single</a></li>
            <li><a href="page-city-single.html">City Single</a></li>
            <li><a href="page-add-new-listing.html">New Listing</a></li>
          </ul>
        </li>
        <li><span>Listing</span>
          <ul>
            <li><span>Listing Styles</span>
              <ul>
                <li><a href="page-listing-v1.html">Listing v1</a></li>
                <li><a href="page-listing-v2.html">Listing v2</a></li>
                <li><a href="page-listing-v3.html">Listing v3</a></li>
                <li><a href="page-listing-v4.html">Listing v4</a></li>
                <li><a href="page-listing-v5.html">Listing v5</a></li>
              </ul>
            </li>
            <li><span>Listing Map</span>
              <ul>
                <li><a href="page-listing-v6.html">Map v1</a></li>
                <li><a href="page-listing-v7.html">Map v2</a></li>
                <li><a href="page-listing-v8.html">Map v3</a></li>
                <li><a href="page-listing-v9.html">Map v4</a></li>
              </ul>
            </li>
            <li><span>Listing Single</span>
              <ul>
                <li><a href="page-listing-single-v1.html">Single V1</a></li>
                <li><a href="page-listing-single-v2.html">Single V2</a></li>
                <li><a href="page-listing-single-v3.html">Single V3</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li><span>Blog</span>
          <ul>
            <li><a href="page-blog-grid.html">Blog Grid</a></li>
            <li><a href="page-blog-grid-sidebar.html">Blog Grid Sidebar</a></li>
            <li><a href="page-blog-details.html">Blog Details</a></li>
            <li><a href="page-blog-list.html">Blog List</a></li>
            <li><a href="page-blog-single.html">Blog Single</a></li>
          </ul>
        </li>
        <li><span>Pages</span>
          <ul>
            <li><span>Shop</span>
              <ul>
                <li><a href="page-shop.html">Shop Pages</a></li>
                <li><a href="page-shop-single.html">Shop Single</a></li>
                <li><a href="page-shop-cart.html">Cart</a></li>
                <li><a href="page-shop-checkout.html">Checkout</a></li>
                <li><a href="page-shop-order.html">Order</a></li>
              </ul>
            </li>
            <li><a href="page-about.html">About Us</a></li>
            <li><a href="page-contact.html">Contact</a></li>
            <li><a href="page-coming-soon.html">Coming Soon</a></li>
            <li><span>User Detils</span>
              <ul>
                <li><a href="page-my-dashboard.html">Dashboard</a></li>
                <li><a href="page-profile.html">My Profile</a></li>
                <li><a href="page-my-listing.html">My Listings</a></li>
                <li><a href="page-my-bookmark.html">Bookmarks</a></li>
                <li><a href="page-message.html">Messages</a></li>
                <li><a href="page-my-review.html">Reviews</a></li>
                <li><a href="page-add-new-listing.html">Add New Property</a></li>
              </ul>
            </li>
            <li><a href="page-gallery.html">Gallery</a></li>
            <li><a href="page-faq.html">Faq</a></li>
            <li><a href="page-invoice.html">Invoice</a></li>
            <li><a href="page-login.html">LogIn</a></li>
            <li><a href="page-pricing.html">Pricing V1</a></li>
            <li><a href="page-pricing2.html">Pricing V2</a></li>
            <li><a href="page-register.html">Register</a></li>
            <li><a href="page-error.html">404 Page</a></li>
            <li><a href="page-terms.html">Terms and Conditions</a></li>
            <li><a href="page-ui-element.html">UI Elements</a></li>
          </ul>
        </li>
        <li><a href="page-contact.html">Contact</a></li>
        <li><a href="page-login.html"><span class="flaticon-avatar"></span> Login</a></li>
        <li><a href="page-register.html"><span class="flaticon-edit"></span> Register</a></li>
        <li class="cl_btn"><a class="btn btn-block btn-lg btn-thm rounded" href="#"><span class="icon">+</span> Create Listing</a></li>
      </ul>
    </nav>
  </div>

  <!-- Search Field Modal -->
  <section class="modal fade search_dropdown" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-body">
          <div class="popup_modal_wrapper">
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-12">
                  <a class="close closer" data-dismiss="modal" aria-label="Close" href="#"><span><img src="/images/icons/close.svg" alt=""></span></a>
                </div>
              </div>
            </div>
            <div class="container">
              <div class="row">
                <div class="col-lg-12 mb30">
                  <h3>Filter by Category</h3>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-2">
                  <div class="icon-box text-center">
                    <div class="icon"><span class="flaticon-cutlery"></span></div>
                    <div class="content-details">
                      <div class="title">Restaurant</div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-2">
                  <div class="icon-box text-center">
                    <div class="icon"><span class="flaticon-shopping-bag"></span></div>
                    <div class="content-details">
                      <div class="title">Shopping</div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-2">
                  <div class="icon-box text-center">
                    <div class="icon"><span class="flaticon-tent"></span></div>
                    <div class="content-details">
                      <div class="title">Outdoor Activities</div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-2">
                  <div class="icon-box text-center">
                    <div class="icon"><span class="flaticon-desk-bell"></span></div>
                    <div class="content-details">
                      <div class="title">Hotels</div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-2">
                  <div class="icon-box text-center">
                    <div class="icon"><span class="flaticon-mirror"></span></div>
                    <div class="content-details">
                      <div class="title">Beautu & Spa</div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-2">
                  <div class="icon-box text-center">
                    <div class="icon"><span class="flaticon-brake"></span></div>
                    <div class="content-details">
                      <div class="title">Automotive</div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12 mb15 mt20">
                  <h3>Explore Hot Location</h3>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3">
                  <div class="property_city_home6 tac-xsd">
                    <div class="thumb"><img class="w100" src="/images/property/pc18.jpg" alt="pc18.jpg"></div>
                    <div class="details">
                      <h4>Miami</h4>
                      <p>62 Listings</p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3">
                  <div class="property_city_home6 tac-xsd">
                    <div class="thumb"><img class="w100" src="/images/property/pc19.jpg" alt="pc19.jpg"></div>
                    <div class="details">
                      <h4>Roma</h4>
                      <p>92 Listings</p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3">
                  <div class="property_city_home6 tac-xsd">
                    <div class="thumb"><img class="w100" src="/images/property/pc20.jpg" alt="pc20.jpg"></div>
                    <div class="details">
                      <h4>New Delhi</h4>
                      <p>12 Listings</p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3">
                  <div class="property_city_home6 tac-xsd">
                    <div class="thumb"><img class="w100" src="/images/property/pc21.jpg" alt="pc21.jpg"></div>
                    <div class="details">
                      <h4>London</h4>
                      <p>74 Listings</p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3">
                  <div class="property_city_home6 tac-xsd">
                    <div class="thumb"><img class="w100" src="/images/property/pc22.jpg" alt="pc22.jpg"></div>
                    <div class="details">
                      <h4>Amsterdam</h4>
                      <p>62 Listings</p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3">
                  <div class="property_city_home6 tac-xsd">
                    <div class="thumb"><img class="w100" src="/images/property/pc23.jpg" alt="pc23.jpg"></div>
                    <div class="details">
                      <h4>Berlin</h4>
                      <p>92 Listings</p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3">
                  <div class="property_city_home6 tac-xsd">
                    <div class="thumb"><img class="w100" src="/images/property/pc24.jpg" alt="pc24.jpg"></div>
                    <div class="details">
                      <h4>Paris</h4>
                      <p>12 Listings</p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-3">
                  <div class="property_city_home6 tac-xsd">
                    <div class="thumb"><img class="w100" src="/images/property/pc25.jpg" alt="pc25.jpg"></div>
                    <div class="details">
                      <h4>New Zealand</h4>
                      <p>74 Listings</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Our Dashbord -->
  <section class="our-dashbord dashbord bgc-f4 ovh">
    <div class="container mt80">
      <div class="row">
        <div class="col-lg-12">
          <div class="dashboard_navigationbar dn db-992">
            <div class="dropdown">
              <button onclick="myFunction()" class="dropbtn"><i class="fa fa-bars pr10"></i> Dashboard Navigation</button>
              <ul id="myDropdown" class="dropdown-content">
                <li><a href="page-my-dashboard.html"><span class="flaticon-web-page"></span> Dashboard</a></li>
                <li><a href="page-profile.html"><span class="flaticon-avatar"></span> My Profile</a></li>
                <li><a href="page-my-listing.html"><span class="flaticon-list"></span> My Listings</a></li>
                <li><a href="page-my-bookmark.html"><span class="flaticon-love"></span> Bookmarks</a></li>
                <li><a href="page-message.html"><span class="flaticon-chat"></span> Message</a></li>
                <li><a href="page-my-review.html"><span class="flaticon-note"></span> Reviews</a></li>
                <li class="active"><a href="page-add-new-listing.html"><span class="flaticon-web-page"></span> Add New Listing</a></li>
                <li><a href="page-my-logout.html"><span class="flaticon-logout"></span> Logout</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-12 mb10">
          <div class="breadcrumb_content style2 mb25">
            <h2 class="breadcrumb_title">신종인플루엔자 행동요령 </h2>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-lg-7">
          <div class="my_dashboard_review">
            <div class="row">
              <div class="col-lg-12">
                <h4 class="mb30"><strong>일반 국민</strong></h4>
                <div class="my_profile_setting_input form-group">
                  <label>• 손을 자주 씻으세요<br><br>• 사람이 많이 모이는 곳에는 출입을 삼가세요.<br><br>• 평소 규칙적인 생활, 정기적인 운동, 절주, 금연으로 건강을 관리하세요.
                    <br><br>• 환자와 접촉하여 전염이 우려되는 경우 1주일간 자신에게 증상이 발생하는지 관찰하세요.<br><br>• 증상이 나타나기 전에는 전염가능성이 낮으므로 일상생활을 하세요.<br><br>• 증상이 나타나면 진료를 받고 의사의 지시에 따르세요.</label>

                  <br><br>

                  <label><h5><strong>&nbsp;&nbsp;&nbsp;▶ 손씻기 개인위생 수칙</strong></h5></label>
                  <label>• 비누와 물을 사용하여 15~20초 동안 씻습니다.<br><br>• 알코올이 함유된 손 세정제를 사용해도 좋으며 완전히 마를 때까지 비벼주세요.
                    <br><br>• 알코올이 함유된 손 세정제를 사용할 때에는 물을 묻히지 마세요.<br><br>• 외출 후 반드시 손을 씻고, 평소에도 자주 손을 씻으세요.</label>


                </div>
              </div>

            </div>
          </div>
          <div class="my_dashboard_review mt30">
            <div class="row">
              <div class="col-lg-12">
                <h4 class="mb30"><strong>확진환자 및 의심환자 </strong></h4>
                <div class="my_profile_setting_input form-group">
                  <label>• 증상이 있는 경우 진료를 받고 의사의 지시에 따르세요. <br><br>• 진료 후 2~3일 후에도 증상이 나아지지 않으면 다시 진료를 받으세요.<br><br>
                    • 증상 발생 후 1주일 간은 출근, 등교, 학원수강, 쇼핑 등 외출을 삼가세요.<br><br>• 1주일간 친지나 동료 등 외부인의 방문도 사적하세요.<br><br>
                    • 가능하면 환자 전용 생활공간이나 침실을 마련하는 것이 좋습니다.<br><br>• 가족 등 타인과 함께 있을 때에는 반드시 마스크를 착용하세요.<br><br>
                    • 진료를 받기 위해 부득이 외출을 할 경우에는 반드시 마스크를 착용하세요.<br><br>• 손을 자주 씻고 기침예절을 지키세요.</label>

                  <br><br>

                  <label><h5><strong>&nbsp;&nbsp;&nbsp;▶ 환자의 올바른 기침예절</strong></h5></label>
                  <label>• 평소 마스크를 착용하세요.<br><br>• 기침이나 재채기를 할 때는 티슈나 손수건으로 입과 코를 가리세요.
                    <br><br>• 사용한 휴지는 휴지통에 버려주세요.<br><br>• 눈, 코, 입을 만진 손으로 전파가 되므로 만지지 않거나 만진 후 손을 씻으세요.
                    <br><br>• 기침, 재채기 후 반드시 손을 씻고, 평소에도 자주 손을 씻으세요. </label>


                </div>
              </div>
            </div>
          </div>
          <div class="my_dashboard_review mt30">
            <div class="row">
              <div class="col-lg-12">
                <h4 class="mb30"><strong>고위험군</strong></h4>
                <div class="my_profile_setting_input form-group">
                  <label>• 손을 자주 씻으세요.<br><br>• 사람이 많이 모이는 곳에는 출입을 삼가세요.<br><br>• 만성질환자는 의사의 지시에 따라 자신의 질병을 잘 관리하세요.
                    <br><br>• 환자의 2미터 이내 근접 접촉을 피하세요. <br><br>• 환자와 접촉하여 전염이 우려되는 경우 의사의 진료를 받고, 1주일간 자신에게 증상이 발생하는지 관찰하세요.<br><br>
                    • 불가피하게 환자와 접촉할 수 밖에 없다면 환자와 함께 마스크를 쓰도록 하고 접촉 후에는 반드시 손을 씻으세요. <br><br>• 증상이 나타나기 전에는 전염가능성이 낮으므로 일상생활을 하세요.<br><br>
                    • 증상이 나타나면 다시 진료를 받고 의사의 지시에 따르세요.</label>

                  <br><br>

                  <label><h5><strong>&nbsp;&nbsp;&nbsp;▶ 2미터 이내 근접 접촉이란?</strong></h5></label>
                  <label>• 2미터 이내 거리에서 1시간 이상 접촉한 경우를 말함<br><br>• 2미터 : 기침과 재채기를 통해 배출되는 미세한 분비물이 도달하는 최대 거리
                    <br><br>• 근접 접촉의 예 : 가족, 같은 반 학생, 함께 어울린 친구, 같은 내무반 생활자 등  </label>


                </div>

              </div>

            </div>
          </div>
          <div class="my_dashboard_review mt30">
            <div class="row">
              <div class="col-lg-12">
                <h4 class="mb30"><strong>영유아 환자의 보호자</strong></h4>
                <div class="my_profile_setting_input form-group">
                  <label>• 환아와 접촉한 후 반드시 손을 씻으세요.<br><br>• 환아와 얼굴을 맞대거나 분비물이 묻지 않도록 주의하세요.<br><br>
                    • 환아를 안을 때 얼굴에 기침하지 않도록 환아의 턱이 어깨에 닿게 하세요.<br><br>• 환아가 수유 중인 경우, 컵이나 주사기 등을 사용하여 젖을 먹이세요.
                    <br><br>• 당신이 고위험군이라면 고위험군이 아닌 사람이 돌볼 수 있도록 하세요. <br><br>• 당신외에 돌볼 사람이 없다면 반드시 마스크를 쓰고 돌보세요.
                    <br><br>• 매일 자신의 건강상태를 관찰하세요.<br><br>• 환아와 같은 증상이 생기면 진료를 받고 의사의 지시에 따르세요.</label>


                </div>

              </div>

            </div>
          </div>






        </div>
      </div>
    </div>
  </section>

  <!-- Our Footer -->
  <%@include file="../../views/footer.jsp" %>

  <a class="scrollToHome" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- Wrapper End -->
<script src="/js/jquery-3.6.0.js"></script>
<script src="/js/jquery-migrate-3.0.0.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.mmenu.all.js"></script>
<script src="/js/ace-responsive-menu.js"></script>
<script src="/js/chart.min.js"></script>
<script src="/js/bootstrap-select.min.js"></script>
<script src="/js/snackbar.min.js"></script>
<script src="/js/simplebar.js"></script>
<script src="/js/parallax.js"></script>
<script src="/js/scrollto.js"></script>
<script src="/js/jquery-scrolltofixed-min.js"></script>
<script src="/js/jquery.counterup.js"></script>
<script src="/js/wow.min.js"></script>
<script src="/js/progressbar.js"></script>
<script src="/js/slider.js"></script>
<script src="/js/timepicker.js"></script>
<script src="/js/wow.min.js"></script>
<script src="/js/jquery.smartuploader.js"></script>
<script src="/js/dashboard-script.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAz77U5XQuEME6TpftaMdX0bBelQxXRlM&callback=initMap"></script>
<script src="/js/googlemaps1.js"></script>
<!-- Custom script for all pages -->
<script src="/js/script.js"></script>
</body>
</html>