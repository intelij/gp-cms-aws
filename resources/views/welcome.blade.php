<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Gyapom is a user-friendly point of care system for Health and Social Care with built in electronic verification system solution that puts clients’ care right at the palm of their hands.">
    <meta name="author" content="Gyapom Care Solutions">
    <link rel="icon" href="ico/favicon.ico">

    <title>GYAPOM - A tool for the betterment of healthcare services.</title>

    <!-- CSS Plugins -->
    <link href="css/plugins/animate.css" rel="stylesheet">
    <link href="css/plugins/owl.carousel.css" rel="stylesheet">
    <link href="css/plugins/lightbox.css" rel="stylesheet">
    <link href="fonts/open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">
    <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Roboto:100,300,100italic,400,300italic" rel="stylesheet" type="text/css">

    <!-- CSS Custom -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="71">

<!-- WRAPPER
============================== -->
<div class="wrapper">

    <!-- NAVBAR
    ============================== -->
    <nav class="navbar navbar-default navbar-fixed-top js-navbar-top js-toggleClass">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"></a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right ">
                    <li><a href="/home">HOME</a></li>
                    <li><a href="/home#geo_location">GEO LOCATION</a></li>
                    <li><a href="/home#authentication">AUTHENTICATION</a></li>
                    <li><a href="/home#real_time">REAL TIME</a></li>
                    <li><a href="/awards">AWARDS</a></li>
                    <li><a href="/terms">TERMS</a></li>
                    <li><a href="/home#contact">CONTACT US</a></li>
                    {{--<li class="hidden-xs">--}}
                        {{--<p class="navbar-text navbar__separator"></p>--}}
                    {{--</li>--}}
                    {{--<li><a href="">CLIENT LOGIN</a></li>--}}

                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>


    <!-- HERO
    ============================== -->
    <div class="hero hero_app" id="home">

        <!-- Hero image -->
        <div class="hero__img col-sm-6 hidden-xs">
            <img src="/storage/{!! $posts[3]->image !!}" class="img-responsive" alt="...">
        </div>

        <div class="container">
            <div class="row">

                <div class="col-sm-7 col-sm-offset-5">

                    <div class="intro-section">

                        <!--anywhere, anytime-->
                        <!--Our home health mobile app is a user-friendly, point-of-care solution that puts patient care in the palm of your hands-->


                        <h2 class="intro"><!--Gyapom Mobile App facilitates -->

                            {!! $posts[3]->body !!}
                        </h2>


                    </div>

                </div>
            </div> <!-- / .row -->
        </div> <!-- / .container -->
    </div> <!-- / .hero -->


    <div class="section" id="geo_location">

        <!-- ABOUT
        ============================== -->
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h4 class="heading">{!! $posts[0]->title !!}</h4>
                    <p class="heading__sub">
                        {!! $posts[0]->excerpt !!}
                    </p>
                </div>
            </div> <!-- / .row -->
        </div> <!-- / .container -->


        <!-- FEATURES
        ============================== -->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <img src="/storage/{!! $posts[0]->image !!}" class="col-sm-12 img-responsive"/>
                </div>
            </div> <!-- / .row -->
        </div> <!-- / .container -->

    </div> <!-- / .section -->

    <div class="section" id="authentication">
        <div class="container">
            <div class="row">
                <div class="row-same-height">
                    <div class="col-sm-7 col-sm-height col-middle">
                        <h4 class="heading heading_left">{!! $posts[1]->title !!}</h4>
                        <p class="heading__sub">
                            {{--{!! $posts[1]->excerpt !!}--}}

                            {!! $posts[1]->body !!}

                        </p>

                    </div>
                    <div class="col-sm-5 col-sm-height col-middle">
                        <img src="/storage/{!! $posts[1]->image !!}" alt="..." class="img-responsive max-width">
                    </div>
                </div> <!-- / .row-same-height -->
            </div> <!-- / .row -->
        </div> <!-- / .container -->
    </div> <!-- / .section -->


    <div class="section" id="real_time">
        <div class="container">
            <div class="row">
                <div class="row-same-height">

                    <div class="col-sm-5 col-sm-height col-middle">
                        <img src="/storage/{!! $posts[2]->image !!}" alt="..." class="img-responsive max-width">
                    </div>

                    <div class="col-sm-7 col-sm-height col-middle">
                        <h4 class="heading heading_left">Real time monitoring</h4>
                        <p class="heading__sub">

                            {!! $posts[2]->body !!}

                        </p>
                    </div>

                </div> <!-- / .row-same-height -->
            </div> <!-- / .row -->
        </div> <!-- / .container -->
    </div> <!-- / .section -->


    <div class="forms" id="contact">
        <div class="container">

            <div class="row">
                <div class="col-xs-12">
                    <h4 class="heading">{!! $posts[4]->title !!}</h4>
                    <p class="heading__sub">
                        {!! $posts[4]->excerpt !!}
                    </p>
                </div>
            </div> <!-- / .row -->


            <div class="row">
                <div class="col-lg-6 col-md-6">

                    @if (isset($message))
                    <div class="alert alert-success alert-dismissible fade in" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        Your email has been sent.
                    </div>
                    @endif

                    <!-- contact form start -->
                    <div class="contact-form" style="display: block;">
                        <form method="post" id="contactForm" action="contact" role="form" novalidate="novalidate">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-lg-12 col-lg-offset-0">
                                    <div class="form-group">
                                        {!! Form::label('Your Name') !!}
                                        {!! Form::text('name', null,
                                            array('required',
                                                  'class'=>'form-control',
                                                  'placeholder'=>'Your name')) !!}
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        {!! Form::label('Your E-mail Address') !!}
                                        {!! Form::email('email', null,
                                            array('required',
                                                  'class'=>'form-control',
                                                  'placeholder'=>'Your e-mail address')) !!}
                                    </div>
                                </div>

                                <div class="col-lg-12 col-lg-offset-0">
                                    <div class="form-group">
                                        {!! Form::label('Your Message') !!}
                                        {!! Form::textarea('message', null,
                                            array('required',
                                                  'class'=>'form-control',
                                                  'placeholder'=>'Your message')) !!}
                                    </div>
                                </div>

                                <div class="col-lg-6 col-lg-offset-0">
                                    <div class="form-group">
                                        <!-- reCAPTCHA -->
                                        {!! Recaptcha::render() !!}
                                        <!-- /reCAPTCHA -->
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group text-right">
                                        {!! Form::submit('Contact Us!', array('class'=>'btn btn-primary')) !!}
                                    </div>
                                </div>
                            </div>
                        </form>

                        <!-- container for success and error messages -->
                        <div id="response"></div>

                    </div>
                    <!-- contact form end -->

                </div>

                <div class="col-lg-5 col-md-5 col-lg-offset-1 col-md-offset-1 address">
                    {!! $posts[4]->body !!}
                </div>
            </div>
        </div>
    </div>



    <!-- FOOTER
    ============================== -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <a href="http://gyapom.com">
                        &copy; {!! date('Y') !!} gyapom.com. All Rights Reserved.</a>
                </div>
                <div class="col-sm-6">
                    <div class="footer__social">
                        <a href="https://twitter.com/gyapom" class="footer-social__link footer-social__link_twitter" target="_blank">
                            <i class="fa fa-twitter"></i>
                        </a>
                        <a href="#" class="footer-social__link footer-social__link_facebook">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a href="https://plus.google.com/u/1/" class="footer-social__link footer-social__link_google-plus" target="_blank">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</div> <!-- / .wrapper -->


<!-- JavaScript
================================================== -->

<!-- JS Global -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="js/bootstrap/bootstrap.min.js"></script>

<!-- JS Plugins -->
<script src="js/plugins/smoothscroll.js"></script>
<script src="js/plugins/jquery.waypoints.min.js"></script>
<script src="js/plugins/wow.min.js"></script>
<script src="js/plugins/owl.carousel.min.js"></script>
<script src="js/plugins/jquery.peity.min.js"></script>
<script src="js/plugins/lightbox.min.js"></script>
<script src="js/plugins/contact.js"></script>

<!-- JS Custom -->
<script src="js/custom.js"></script>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-50996202-1', 'auto');
    ga('send', 'pageview');

</script>

</body>
</html>