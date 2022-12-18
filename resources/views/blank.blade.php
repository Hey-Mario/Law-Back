<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from themepixels.me/demo/bracketplus1.4/app/template/blank.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 02 Sep 2021 12:46:55 GMT -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Meta -->
    <meta name="description" content="Premium Quality and Responsive UI for Dashboard.">
    <meta name="author" content="ThemePixels">

    <title>Admin | Loi&Lalana </title>

    <!-- vendor css -->
    <link href="{{ asset('css/all.min.css')}}" rel="stylesheet">
    <link href="{{ asset('css/css/ionicons.min.css') }}" rel="stylesheet">

    <!-- Bracket CSS -->
    <link rel="stylesheet" href="{{ asset('css/bracket.css') }}">
    <style>
      * {
        color: black;
      }
    </style>
  </head>

  <body>

    <!-- ########## START: LEFT PANEL ########## -->
    <div class="br-logo"><a href="#"><span></span>L&L <i style="color: #37d09c">Admin</i><span></span></a></div>
    <div class="br-sideleft sideleft-scrollbar" style="background-color: #37d09c">
      <label class="sidebar-label pd-x-10 mg-t-20 op-3" style="color: black">Navigation</label>
      <ul class="br-sideleft-menu">

        <li class="br-menu-item">
          <a href="{{route('theme.index')}}" class="br-menu-link with-sub" style="background-color: #37d09c">
            <i class="menu-item-icon icon ion-ios-photos-outline tx-20"></i>
            <span class="menu-item-label">Theme</span>
          </a><!-- br-menu-link -->
        </li> 

        <li class="br-menu-item">
          <a href="{{route('avie.index')}}" class="br-menu-link with-sub" style="background-color: #37d09c">
            <i class="menu-item-icon icon ion-ios-photos-outline tx-20"></i>
            <span class="menu-item-label">Avies</span>
          </a><!-- br-menu-link -->
        </li> 

        <li class="br-menu-item">
          <a href="{{route('plainte.index')}}" class="br-menu-link with-sub" style="background-color: #37d09c">
            <i class="menu-item-icon icon ion-ios-photos-outline tx-20"></i>
            <span class="menu-item-label">Plaintes</span>
          </a><!-- br-menu-link -->
        </li> 

      </ul><!-- br-sideleft-menu -->

     

      <br>
    </div><!-- br-sideleft -->
    <!-- ########## END: LEFT PANEL ########## -->

    <!-- ########## START: HEAD PANEL ########## -->
    <div class="br-header">
      <div class="br-header-left">
        <div class="navicon-left hidden-md-down"><a id="btnLeftMenu" href="#"><i class="icon ion-navicon-round"></i></a></div>
        <div class="navicon-left hidden-lg-up"><a id="btnLeftMenuMobile" href="#"><i class="icon ion-navicon-round"></i></a></div>
        <!-- input-group -->
      </div><!-- br-header-left -->
      <div class="br-header-right">
        <nav class="nav">

          <div class="dropdown">
            <a href="#" class="nav-link nav-link-profile" data-toggle="dropdown">
              <span class="logged-name hidden-md-down">{{Auth::user()->name}}</span>
            </a>
            <div class="dropdown-menu dropdown-menu-header wd-250">
              <div class="tx-center">
                <h6 class="logged-fullname">{{Auth::user()->name}}</h6>
                <p>{{Auth::user()->email}}</p>
              </div>
              <hr>
              
              <ul class="list-unstyled user-profile-nav">
                <li>
                  <a href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        <i class="icon ion-power"></i>{{ __('Se deconnecter') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                </li>
              </ul>
            </div><!-- dropdown-menu -->
          </div><!-- dropdown -->
        </nav>
      </div><!-- br-header-right -->
    </div><!-- br-header -->
    <!-- ########## END: HEAD PANEL ########## -->

    <!-- ########## START: RIGHT PANEL ########## -->
    <!-- ########## END: RIGHT PANEL ########## --->

    <!-- ########## START: MAIN PANEL ########## -->
    <div class="br-mainpanel">
      <div class="br-pageheader">
        <nav class="breadcrumb pd-0 mg-0 tx-12">
          <a class="breadcrumb-item" href="index-2.html">Loi & Lalana</a>
          <span class="breadcrumb-item active">@yield('page-title')</span>
        </nav>
      </div><!-- br-pageheader -->
      <div class="br-pagetitle">
        <i class="icon icon ion-ios-book-outline"></i>
        <div>
          <h4>@yield('page-title')</h4>
          <p class="mg-b-0">@yield('page-description')</p>
        </div>
      </div><!-- d-flex -->

      <div class="br-pagebody">

          @yield('main-content')    
        
      </div><!-- br-pagebody -->
    </div><!-- br-mainpanel -->
    <!-- ########## END: MAIN PANEL ########## -->

    
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/datepicker.js') }}"></script>
    <script src="{{ asset('js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('js/perfect-scrollbar.min.js') }}"></script>
    <script src="{{ asset('js/moment.min.js') }}"></script>
    <script src="{{ asset('js/jquery.peity.min.js') }}"></script>

    <script src="{{ asset('js/bracket.js') }}"></script>
  </body>

</html>
