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
  <link rel="stylesheet" href="/css/style.css">
  <!-- Responsive stylesheet -->
  <link rel="stylesheet" href="/css/responsive.css">
  <!-- Title -->
  <title>Q&A</title>
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
  <!-- Modal -->
  <div class="sign_up_modal modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md mt100" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body container pb20 pl0 pr0 pt0">
          <div class="row">
            <div class="col-lg-12">
              <ul class="sign_up_tab nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Sign in</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Register</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="tab-content container" id="myTabContent">
            <div class="row mt40 tab-pane fade show active pl20 pr20" id="home" role="tabpanel" aria-labelledby="home-tab">
              <div class="col-lg-12">
                <div class="login_form">
                  <form action="#">
                    <div class="input-group mb-2 mr-sm-2">
                      <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Username / Email">
                    </div>
                    <div class="input-group form-group mb5">
                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="exampleCheck1">
                      <label class="custom-control-label" for="exampleCheck1">Remember me</label>
                      <a class="btn-fpswd float-right" href="#">Forgot password?</a>
                    </div>
                    <button type="submit" class="btn btn-log btn-block btn-thm">Sign in</button>
                    <p class="text-center mb30 mt20">Don't have an account? <a class="text-thm" href="#">Sign up</a></p>
                    <hr>
                    <div class="row mt30">
                      <div class="col-lg-6">
                        <button type="submit" class="btn btn-fb btn-block"><i class="fa fa-facebook float-left mt5"></i> Log In via Facebook</button>
                      </div>
                      <div class="col-lg-6">
                        <button type="submit" class="btn btn-googl btn-block"><i class="fa fa-google float-left mt5"></i> Log In via Google+</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="row mt40 tab-pane fade pl20 pr20" id="profile" role="tabpanel" aria-labelledby="profile-tab">
              <div class="col-lg-12">
                <div class="sign_up_form">
                  <ul class="nav nav-pills mb-4" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Customer</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Business Owner</a>
                    </li>
                  </ul>
                  <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                      <form action="#">
                        <div class="form-group input-group">
                          <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email">
                        </div>
                        <div class="form-group input-group">
                          <input type="text" class="form-control" id="exampleInputName" placeholder="Username">
                        </div>
                        <div class="form-group input-group mb20">
                          <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-log btn-block btn-thm">Sign Up</button>
                        <hr>
                        <div class="row">
                          <div class="col-lg-6">
                            <button type="submit" class="btn btn-block btn-fb"><i class="fa fa-facebook float-left mt5"></i> Log In via Facebook</button>
                          </div>
                          <div class="col-lg-6">
                            <button type="submit" class="btn btn-block btn-googl"><i class="fa fa-google float-left mt5"></i> Log In via Google+</button>
                          </div>
                        </div>
                      </form>
                    </div>
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                      <form action="#">
                        <div class="form-group input-group">
                          <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">
                        </div>
                        <div class="form-group input-group">
                          <input type="text" class="form-control" id="exampleInputName2" placeholder="Username">
                        </div>
                        <div class="form-group input-group mb20">
                          <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-log btn-block btn-thm">Sign Up</button>
                        <hr>
                        <div class="row">
                          <div class="col-lg-6">
                            <button type="submit" class="btn btn-block btn-fb"><i class="fa fa-facebook float-left mt5"></i> Log In via Facebook</button>
                          </div>
                          <div class="col-lg-6">
                            <button type="submit" class="btn btn-block btn-googl"><i class="fa fa-google float-left mt5"></i> Log In via Google+</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

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

  <!-- Inner Page Breadcrumb -->
  <section class="inner_page_breadcrumb" style="background-image: url('');">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-xl-6">
          <div class="breadcrumb_content">
            <h3 class="breadcrumb_title">감염병 관련 질문사항입니다.</h3>
            <p></p>
            <ol class="breadcrumb">
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Our FAQ -->
  <section class="our-faq">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 offset-lg-2">
          <h2 class="mt0 mb35">신종인플루엔자란?</h2>
          <div class="faq_content mb40">
            <div class="faq_according">
              <div class="accordion" id="accordionExample">
                <div class="card">
                  <div class="card-header active" id="headingOne">
                    <h4 class="mb-0">
                      <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">신종인플루엔자란?</button>
                    </h4>
                  </div>
                  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample" style="">
                    <div class="card-body">
                      <p>• 사람과 사람간 전파를 통해 인체감염을 일으키는 새로운 인플루엔자 바이러스</p>
                      <p>• 계절 인플루엔자와 같은 방식으로 전파되고 비슷한 증상을 나타냄</p>
                      <p>• 증상은 가벼운 증상에서 심한 증상까지 나타날 수 있고 회복 수 면역이 생김</p>
                      <p>• 새로운 바이러스지만 항바이러스제로 치료가 가능하고 백신은 개발 중에 있음</p>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header" id="headingTwo">
                    <h4 class="mb-0">
                      <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">신종인플루엔자 바이러스의 전파경로</button>
                    </h4>
                  </div>
                  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                    <div class="card-body">
                      <p>• 감염된 사람의 기침과 재채기를 통해 배출되는 미세한 분비물을 통해 전파</p>
                      <p>• 분비물이 1~2미터 이내를 날아가서 직접 타인의 손, 호흡기, 눈을 통해 감염</p>
                      <p>• 분비물이 주위 물체에 뭍어 타인의 손에 닿고, 손을 통해 호흡기, 눈으로 감염</p>
                      <p>• 환자가 마스크를 착용하거나 기침예절을 지킴으로써 분비물의 배출을 방지 </p>
                      <p>※ 물이나 음식을 통해서는 전파되지 않습니다.</p>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header" id="headingThree">
                    <h4 class="mb-0">
                      <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">신종인플루엔자 증상과 진료 </button>
                    </h4>
                  </div>
                  <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample" style="">
                    <div class="card-body">
                      <p>• 감염이 되어도 증상이 없거나, 경미한 감기 증상만 나타날 수 있음</p>
                      <p><strong>• 급성열성호흡기증상</strong> : 발열(37.8℃), 콧물 또는 코막힘, 인후통, 기침</p>
                      <p>• 그 밖에 계정 인플루엔자 증상과 같은 증상 : 두통, 근육통, 피로 등 </p>
                      <p>• 증상이 있는 경우 의사의 진료를 받거나, 집에서 휴식을 취할 것</p>
                      <p>• 대부분의 환자는 특별한 치료없이 회복됨</p>
                      <p>• 고위험군은 증상이 있는 경우 반드시 진료를 받고, 의사의 지시에 따를 것</p>
                      <p>• 진찰 후 의사는 임상진단에 따라 증상완화에 필요한 약물이나 항바이러스제를 처방하고 주의사항을 지시하며, 필요한 경우 입원치료나 확진검사 등을 권유</p>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header" id="headingFour">
                    <h4 class="mb-0">
                      <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">신종인플루엔자 치료 중 즉시 병원에 가야할 경우 </button>
                    </h4>
                  </div>
                  <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample" style="">
                    <div class="card-body">
                      <p>• 숨이 가쁘고 호흡이 곤란한 경우</p>
                      <p>• 피부색이 파랗게 또는 회색으로 변한 경우</p>
                      <p>• 잘 먹거나 마시지 못하는 경우</p>
                      <p>• 심한 구토증상이 지속되는 경우</p>
                      <p>• 의식이 없거나 정신상태가 혼미한 경우</p>
                      <p>• 환아가 장시간 계속 보채는 경우</p>
                      <p>• 흉통이나 복통이 생긴 경우</p>
                      <p>• 기침, 발열 등의 증상이 호전되다가 다시 악화된 경우 </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-8 offset-lg-2">
          <h2 class="mt0 mb35">신종인플루엔자 관련 Q & A</h2>
          <div class="faq_content">
            <div class="faq_according">
              <div class="accordion" id="accordionExample2">
                <div class="card">
                  <div class="card-header active" id="headingFive">
                    <h2 class="mb-0">
                      <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">신종인플루엔자를 막기 위해서 어떻게 해야 하나요?</button>
                    </h2>
                  </div>
                  <div id="collapseFive" class="collapse show" aria-labelledby="headingFive" data-parent="#accordionExample2">
                    <div class="card-body">
                      <p>• 재채기나 기침을 할 경우에는 화장지로 입과 코를 가리고, 화장지를 버린 후 손을 깨끗하게 씻으십시오.</p>
                      <p>• 손을 자주 씻고, 손으로 눈, 코, 입을 만지는 것을 피하십시오.</p>
                      <p>• 발열이나 호흡기 증상 등이 있는 사람과는 접촉을 피하십시오.</p>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingSix">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">신종인플루엔자의 잠복기는 어떻게 되나요?</button>
                      </h2>
                    </div>
                    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample2">
                      <div class="card-body">
                        <p>• 잠복기란 병원체가 몸에 들어온 시점부터 처음 증상이 나타나기까지 시간을 말합니다.</p>
                        <p>• 신종인플루엔자의 경우에는 대부분 2~3일, 최장 7일입니다.</p>
                        <p>• 따라서 7일간 자택 격리하고, 해외를 다녀오면 7일간 열이 나는지 감시하라는 이유가 바로 최장 잠복기가 7일이기 때문입니다.</p>
                        <p>• 7일은 만 7일이기에 시간으로 계산하면 168시간 동안 감시한다는 의미입니다.</p>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingSeven">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">신종인플루엔자는 얼마동안 전파가 가능한가요?</button>
                      </h2>
                    </div>
                    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample2">
                      <div class="card-body">
                        <p>• 신종인플루엔자는 증상이 나타난 날로부터 보통 5일째까지 전파가 가능합니다.</p>
                        <p>• 가장 길게는 7일인데 소아청소년의 경우에는 이 기간이 좀더 길 수 있습니다.</p>
                        <p>• 바이러스가 배출된다고 다 전파력이 있는 것은 아니며 비록 바이러스는 증상 나타나기 하루 전부터 배출은 되지만 주로 증상 즉 기침 등의 증상이 나타나면서 다른 사람에게 전파가 가능합니다.</p>
                        <p>• 따라서 기침을 하는 경우에 다른 사람들을 위해서 마스크를 사용토록 권고하는 것입니다.</p>
                      </div>
                    </div>
                  </div>
                  <div class="card mb0">
                    <div class="card-header" id="headingEight">
                      <h2 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">신종인플루엔자 증상은 어떤가요?</button>
                      </h2>
                    </div>
                    <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordionExample2">
                      <div class="card-body">
                        <p>• 일반적으로 계절 독감 증상과 크게 다르지 않습니다.</p>
                        <p>• 발열(37.8℃이상)이 있고 기침을 하거나 콧물이 나거나 또는 목이 아프거나 하는 호흡기 증상이 주로 발생합니다.</p>
                        <p>• 다만, 사람들에 따라서는 오심, 무력감, 식욕부진, 석사와 구토 증상이 함께 나타나기도 합니다.</p>
                      </div>
                    </div>
                  </div>
                  <br><br>
                  <p><strong>※ 자세한 정보는 질병관리본부 홈페이지(http://www.cdc.go.kr)를 참고하세요.</strong></p>
                  <p><strong>※ 질의응답 내용은 수시로 추가되고, 유행상황에 따라 답변이 달라질 수 있습니다.</strong></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </section>

  <!-- Submit Property -->
  <section class="start-partners home1 bgc-thm pt60 pb60">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="start_partner tac-smd">
            <h2>Submit Your Property Today!</h2>
            <p>Explore some of the best tips from around the city from our partners and friends.</p>
          </div>
        </div>
        <div class="col-lg-4 pr10">
          <div class="parner_reg_btn text-right tac-smd">
            <a class="btn" href="#">Submit Now</a>
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
<!-- Custom script for all pages -->
<script src="/js/script.js"></script>
</body>
</html>