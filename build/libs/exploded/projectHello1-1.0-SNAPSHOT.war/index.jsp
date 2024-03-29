<%--  Created by IntelliJ IDEA.
  User: HONGJEONGMI
  Date: 2019-10-16
  Time: 오후 4:47
  To change this template use File | Settings | File Templates.--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--http://dev.kbsjob.kr/dg_6/jsp/login.html--%>
<%--http://dev.kbsjob.kr/dg_6/resources/css/login-v6.default.css--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Login</title>
  <meta name="description" content="Login page example">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="/resources/css/login-v6.default.css" rel="stylesheet" type="text/css" />
  <link href="/resources/css/style.bundle.css" rel="stylesheet" type="text/css" />
  <link rel="shortcut icon" href="/resources/images/favicon.ico" />
</head>
<!-- end::Head -->
<body class="kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">
<!-- begin:: Page -->
<div class="kt-grid kt-grid--ver kt-grid--root">
  <div class="kt-grid kt-grid--hor kt-grid--root  kt-login kt-login--v6 kt-login--signin" id="kt_login">
    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--desktop kt-grid--ver-desktop kt-grid--hor-tablet-and-mobile">
      <div class="kt-grid__item  kt-grid__item--order-tablet-and-mobile-2  kt-grid kt-grid--hor kt-login__aside">
        <div class="kt-login__wrapper">
          <div class="kt-login__container">
            <div class="kt-login__body">
              <div class="kt-login__logo">
              </div>
              <div class="kt-login__signin">
                <div class="m-login__head">
                  <div style="text-align: center; font-size:30px;">
                    <span style="color:#d70d19">동구전자 </span> 상담관리 시스템
                  </div>
                  <div style="font-size: 60px; text-align: center;">LOGIN</div>
                  <div  style="text-align: center; color:#777;"> 안녕하세요~ 로그인 페이지 입니다. index</div>
                </div>
                <div class="kt-login__form">
                  <%--<form class="kt-form">--%>
                  <form action="/user/loginPost" method="post">
                    <div class="form-group">
                      <%--<input class="form-control" type="text" placeholder="ID" name="email" autocomplete="off">--%>
                        <input class="form-control" type="text" placeholder="ID" name="user_id" autocomplete="off">
                    </div>
                    <div class="form-group">
                      <%--<input class="form-control form-control-last" type="password" placeholder="Password" name="password">--%>
                        <input class="form-control form-control-last" type="password" placeholder="Password" name="passwd">
                    </div>
                    <div class="kt-login__extra">
                      <label class="kt-checkbox">
                        <input type="checkbox" name="remember">아이디 저장
                        <span></span>
                      </label>
                    </div>
                    <div class="kt-login__actions">
                      <button id="kt_login_signin_submit" class="btn btn-brand btn-pill btn-elevate">로그인</button>
                    </div>
                  </form> <p>${login.name_kor}님 웰컴~!</p>
                </div>
              </div>
            </div>
          </div>
          <div class="kt-login__account">
            <div class="m-login__account">
								<span class="m-login__account-msg"  style="font-size: 13px;">
								  © KBSJOB 2019 ALL RIGHTS RESERVED.
								</span>
            </div>&nbsp;&nbsp;
          </div>
        </div>
      </div>
      <div class="kt-grid__item kt-grid__item--fluid kt-grid__item--center kt-grid kt-grid--ver kt-login__content" style="background-image: url(/resources/images/bg-4.jpg);">
        <div class="kt-login__section">
          <div class="kt-login__block">
            <div class="kt-login__desc">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  var KTAppOptions = {
    "colors": {
      "state": {
        "brand": "#5d78ff",
        "dark": "#282a3c",
        "light": "#ffffff",
        "primary": "#5867dd",
        "success": "#34bfa3",
        "info": "#36a3f7",
        "warning": "#ffb822",
        "danger": "#fd3995"
      },
      "base": {
        "label": ["#c5cbe3", "#a1a8c3", "#3d4465", "#3e4466"],
        "shape": ["#f0f3ff", "#d9dffa", "#afb4d4", "#646c9a"]
      }
    }
  };
</script>

<!-- end::Global Config -->

<!--begin:: Global Mandatory Vendors -->
<script src="../assets/vendors/general/jquery/dist/jquery.js" type="text/javascript"></script>
<script src="../assets/vendors/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
<script src="../assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
<script src="../assets/vendors/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/wnumb/wNumb.js" type="text/javascript"></script>

<!--end:: Global Mandatory Vendors -->

<!--begin:: Global Optional Vendors -->
<script src="../assets/vendors/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/components/vendors/bootstrap-datepicker/init.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/components/vendors/bootstrap-timepicker/init.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/components/vendors/bootstrap-switch/init.js" type="text/javascript"></script>
<script src="../assets/vendors/general/select2/dist/js/select2.full.js" type="text/javascript"></script>
<script src="../assets/vendors/general/ion-rangeslider/js/ion.rangeSlider.js" type="text/javascript"></script>
<script src="../assets/vendors/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
<script src="../assets/vendors/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
<script src="../assets/vendors/general/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
<script src="../assets/vendors/general/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
<script src="../assets/vendors/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
<script src="../assets/vendors/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
<script src="../assets/vendors/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
<script src="../assets/vendors/general/autosize/dist/autosize.js" type="text/javascript"></script>
<script src="../assets/vendors/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
<script src="../assets/vendors/general/summernote/dist/summernote.js" type="text/javascript"></script>
<script src="../assets/vendors/general/markdown/lib/markdown.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/components/vendors/bootstrap-markdown/init.js" type="text/javascript"></script>
<script src="../assets/vendors/general/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/components/vendors/bootstrap-notify/init.js" type="text/javascript"></script>
<script src="../assets/vendors/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
<script src="../assets/vendors/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/components/vendors/jquery-validation/init.js" type="text/javascript"></script>
<script src="../assets/vendors/general/toastr/build/toastr.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/raphael/raphael.js" type="text/javascript"></script>
<script src="../assets/vendors/general/morris.js/morris.js" type="text/javascript"></script>
<script src="../assets/vendors/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/vendors/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
<script src="../assets/vendors/general/counterup/jquery.counterup.js" type="text/javascript"></script>
<script src="../assets/vendors/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
<script src="../assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
<script src="../assets/vendors/custom/components/vendors/sweetalert2/init.js" type="text/javascript"></script>
<script src="../assets/vendors/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
<script src="../assets/vendors/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
<script src="../assets/vendors/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
<script src="../assets/vendors/general/dompurify/dist/purify.js" type="text/javascript"></script>

<!--end:: Global Optional Vendors -->

<!--begin::Global Theme Bundle(used by all pages) -->
<script src="../assets/demo/default/base/scripts.bundle.js" type="text/javascript"></script>

<!--end::Global Theme Bundle -->

<!--begin::Page Scripts(used by this page) -->
<script src="../assets/app/custom/login/login-general.js" type="text/javascript"></script>

<!--end::Page Scripts -->

<!--begin::Global App Bundle(used by all pages) -->
<script src="../assets/app/bundle/app.bundle.js" type="text/javascript"></script>

<!--end::Global App Bundle -->
<!-- 0523 back start
<script src="../resources/js/jquery.js" type="text/javascript"></script>
<script src="../resources/js/init.js" type="text/javascript"></script>
<script src="../resources/js/login-general.js" type="text/javascript"></script>
end-->
</body>

</html>