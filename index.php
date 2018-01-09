<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Mountain Top Safaris</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="images/favicon.png" type="image/png" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.0.47/jquery.fancybox.min.css" />
        <script src="assets/js/mountainTop.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.0.47/jquery.fancybox.min.js"></script>
        <style>
            .col-sm-9{
                width: 100%;
                height: auto;
            }
        </style>
    </head>

    <body class="homepage">
        <div id="page-wrapper">
            <!-- Header -->

            <header id="header" class="container">
                <!-- Logo -->
                <div id="logo">
                    <img src="images/new_logo.jpg">
                </div>
                <!-- Nav -->
                <div class="social">
                    <a href="#"><i class="fa fa-facebook-square fa-4x" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-twitter-square fa-4x" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-google-plus-square fa-4x" aria-hidden="true"></i></a>
                </div>
                <nav id="navi">
                    <ul>
                        <li class="active" onclick="changeContent('home')">HOME</li>
                        <li onclick="changeContent('about')">ABOUT US</li>
                        <li onclick="changeContent('tour')">TOURS</li>
                        <li onclick="changeContent('gallery')">GALLERY</li>
                        <li onclick="changeContent('book')">BOOK US</li>
                        <li onclick="changeContent('contact')">CONTACT US</li>
                    </ul>
                </nav>
            </header>

            <div class="container">

            </div>

            <!-- Footer -->
            <div id="footer-wrapper">
                <footer id="footer" class="container">
                    <div id="contact">
                        <h3>Contact us:</h3>
                        <ul>
                            <li><i fa fa-map-marker></i>
                                <address>P.O Box 195-00502<br>Karen, Nairobi</address></li>
                            <li><i fa fa-phone></i>(+254)716 479 022<br> (+254)722 422 434<br>(+254)750 635 435<br>(+254)729 654 116</li>
                            <li><i fa fa-envelope-o></i>info@mountaintopsafarisadventures.co.ke
                            </li>
                        </ul>
                    </div>
                    <div>
                        <iframe src="https://www.facebook.com/plugins/page.php?href=http%3A%2F%2Fwww.facebook.com%2Fmountaintopsafaris&tabs=timeline&width=340&height=150&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="340" height="150"
                                style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
                        <h4>Subscribe to our Newsletter</h4>
                        <form id="newsletter" enctype="text/plain" action="mailto:info@mountaintopsafarisadventures.co.ke" method="post">
                            <input type="text" placeholder="name" />
                            <input type="email" placeholder="email" />
                            <input type="submit" value="submit" />
                        </form>
                    </div>
                    <div>
                        <h3>links</h3>
                        <ul>
                            <li><a href="index.html">HOME</a></li>
                            <li><a href="booking.html">BOOK</a></li>
                            <li><a href="tours.html">TRAVEL</a></li>
                            <li><a href="gallery.html">GALLERY</a></li>
                            <li><a href="contact.php">COMPANY</a></li>
                        </ul>
                    </div>
                </footer>
                <div class="12u">
                    <div id="copyright">
                        <ul class="menu">
                            <li>&copy; Untitled. All rights reserved</li>
                            <li>Design: <a href="www.mutall.co.ke">Mutall Developers</a></li>
                            <li> <a href="/webmail">WEBMAIL</a></li>
                            <li> <a href="admin.php">LOGIN</a></li>
                        </ul>
                    </div>
                </div>
            </div>
    </body>

</html>