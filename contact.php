<?php include("include/header.php");?>

            <div class="maps">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1994.3770244264374!2d36.70662525787123!3d-1.3234176997586895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f1b6f403045e7%3A0xc44df2ae25045e01!2sMountain+Top+Safaris!5e0!3m2!1sen!2ske!4v1491966016633" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <!-- Section: contact -->
            <section id="contact" class="home-section text-center">
                <div class="heading-contact">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2">
                                <div class="wow bounceInDown" data-wow-delay="0.4s">
                                    <div class="section-heading">
                                        <h2>Get in touch</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">

                    <div class="row">
                        <div class="col-lg-2 col-lg-offset-5">
                            <hr class="marginbot-50">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="boxed-grey">
                                <form id="contact-form">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name">
                                                    Name</label>
                                                <input type="text" class="form-control" id="name" placeholder="Enter name" required />
                                            </div>
                                            <div class="form-group">
                                                <label for="email">
                                                    Email Address</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                                    </span>
                                                    <input type="email" class="form-control" id="email" placeholder="Enter email" required /></div>
                                            </div>
                                            <div class="form-group">
                                                <label for="subject">
                                                    Subject</label>
                                                <select id="subject" name="subject" class="form-control" required="required">
                                                    <option value="na" selected="">Choose One:</option>
                                                    <option value="service">Inquire about a booking</option>
                                                    <option value="suggestions">More about places</option>
                                                    <option value="product">General Question</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name">
                                                    Message</label>
                                                <textarea name="message" id="message" class="form-control" rows="9" cols="25" required placeholder="Message"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">
                                                Send Message</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="col-lg-4">
                            <div class="widget-contact">
                                <h5>Main Office</h5>

                                <address>
                                    <strong>Mountain Top safaris</strong><br>
                                    Karen,Kenya<br>
                                    <abbr title="Phone">Phone:</abbr> +254797583980<br>
                                    <abbr title="Phone">Phone:</abbr> +254722422434

                                </address>

                                <address>
                                    <strong>Email</strong><br>
                                    <a href="mailto:#">info@mountaintopsafarisadventures.co.ke</a><br>
                                    <a href="mailto:#">mountaintopsafaris@gmail.com</a>

                                </address>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        </div>
    </body>

</html>