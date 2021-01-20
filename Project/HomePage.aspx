<%@ Page Title="" Language="C#" MasterPageFile="~/Header.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
            
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Pipeline Bootstrap 4.0 Theme</title>

    <!-- load stylesheets -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400">   <!-- Google web font "Open Sans", https://fonts.google.com/ -->
    <link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">           <!-- Font Awesome, http://fontawesome.io/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                 <!-- Bootstrap style, http://v4-alpha.getbootstrap.com/ -->
    <link rel="stylesheet" href="css/magnific-popup.css">                                <!-- Magnific pop up style, http://dimsemenov.com/plugins/magnific-popup/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">                              <!-- Templatemo style -->

    
      </head>

      <body>
        <div class="tm-body">
                <div class="tm-sidebar">
                    <nav class="tm-main-nav">
                        <ul class="tm-main-nav-ul">
                            <li class="tm-nav-item"><a href="#welcome" class="tm-nav-item-link tm-button">
                                <i class="fa fa-smile-o tm-nav-fa"></i>Welcome</a>
                            </li>
                            <li class="tm-nav-item"><a href="#gallery" class="tm-nav-item-link tm-button">
                                <i class="fa fa-image tm-nav-fa"></i>Image Gallery</a>
                            </li>
                            <li class="tm-nav-item"><a href="#services" class="tm-nav-item-link tm-button">
                                <i class="fa fa-tasks tm-nav-fa"></i>Our Services</a>
                            </li>
                            <li class="tm-nav-item"><a href="#about" class="tm-nav-item-link tm-button">
                                <i class="fa fa-sitemap tm-nav-fa"></i>About Company</a>
                            </li>
                            <li class="tm-nav-item"><a href="#contact" class="tm-nav-item-link tm-button">
                                <i class="fa fa-envelope-o tm-nav-fa"></i>Contact Us</a></li>
                        </ul>
                    </nav>
                </div>
                
                <div class="tm-main-content">
                    
                    <div class="tm-content-box tm-content-box-home">                        
                        <img src="img/libraries.jpg" alt="Image 1" class="img-fluid tm-welcome-img">                        
                        <div class="tm-welcome-boxes-container">
                            <div class="tm-welcome-box">
                                <div class="tm-welcome-text">
                                    <h2 class="tm-section-title">Brief Intro </h2>
                                    <p>Over Library Provides each and every type of books for the ages of all kind of people</p>    
                                </div>                            
                                <a href="#" class="tm-welcome-link tm-button">Learn More</a>&nbsp;&nbsp;
                            </div>
                            <div class="tm-welcome-box">
                                <div class="tm-welcome-text">
                                    <h2 class="tm-section-title">Browse More Books</h2>
                                    <p>Come on go through for more books we assure you that you would surely enjoy them</p>    
                                </div>                            
                                <a href="#" class="tm-welcome-link tm-button">Read Details</a>
                            </div>
                        </div>
                    </div>
                        
                    <div id="gallery" class="tm-content-box">                        
                        <div class="grid tm-gallery">
                            <figure class="effect-bubba">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/kaneabel.jpg" OnClick="ImageButton1_Click"  />
                            </figure>

                            <figure class="effect-bubba">
                                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/Lee-Child-Killing-Floor.jpg" OnClick="ImageButton2_Click" />
                                
                            </figure>

                            <figure class="effect-bubba">
                                &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/lifepi.jpeg" OnClick="ImageButton3_Click" />
                                
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                
                            </figure>

                            <figure class="effect-bubba">
                                
                                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/img/Nehruauto.jpg" OnClick="ImageButton4_Click" />
                                
                            </figure>

                            <figure class="effect-bubba">
                                
                                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/img/sachinauto.jpg" OnClick="ImageButton5_Click" />
                                
                            </figure>

                            <figure class="effect-bubba">
                               
                                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/img/steve.jpg" OnClick="ImageButton6_Click" />
                               
                            </figure>                                
                        </div>
                        
                    </div>

                    <div id="services" class="tm-content-box tm-gray-bg tm-services">

                        <div class="tm-services-img-container">
                            <img src="img/450x900-01.jpg" alt="Green Field" class="img-fluid tm-services-img">    
                        </div> 
                            
                        <div class="tm-box-pad tm-services-description-container">
                            <h2 class="tm-section-title">Vivamus eget convallis tellus</h2>
                            <p class="tm-section-description">Pipeline Bootstrap 4.0 Template is provided by <a href="http://templatemo.com" target="_parent">templatemo</a> website. You may use this HTML CSS template and also share it to friends. Thank you for visiting our site.</p>
                        <p class="tm-section-description">Duis vel elit eu eros dapibus vestibulum vel vel nibh. Morbi efficitur erat nulla, id tempor mi accumsan sed. Suspendisse sollicitudin condimentum interdum. <span class="tm-blue-text">BG #F4F4F4 Button BG #936</span> <span class="tm-red-text">Button Hover BG #C33</span></p> 
                            <p class="tm-section-description">Nulla id ornare eros, at efficitur risus. Fusce sodales lorem magna, id tempor justo mattis eget. Aenean accumsan semper commodo. Aliquam ante sapien, tincidunt sed vaius et, luctus condimentum sapien.</p>   
                        </div>                                              
                        
                    </div>

                    <!-- slider -->
                    <div id="about" class="tm-content-box">
                        <div class="tm-box-pad tm-bordered-box">
                            <h2 class="tm-section-title">Mauris sollicitudin a nibh ut sollicitudin</h2>
                            <p>Pellentesque quam libero, hendrerit pretium feugiat sed, rhoncus ac nunc. Etiam eget dui vel ex eleifend mattis eget vitae risus. Nullam eu libero sit amet quam finibus condimentum. Aenean vulputate dictum suscipit. Morbi efficitur erat nulla, id tempor mi accumsan sed.</p>
                            <a href="#" class="tm-button tm-button-normal">Read More</a>
                        </div>
                        <div class="tm-flex">
                            <div class="tm-purple-bg tm-box-pad tm-bordered-box tm-no-border-top">
                                <h2 class="tm-section-title">Cras volutpat fermentum</h2>
                                <p>Aliquam ante sapien, tincidunt sed varius et, luctus condimentum sapien. Duis vel elit eu eros dapibus vestibulum vel vel nibh. Nulla id ornare eros.</p>
                            </div>
                            <div class="tm-gray-bg tm-box-pad tm-bordered-box tm-no-border-top">
                                <h2 class="tm-section-title">Aenean vulputate dictum</h2>
                                <p>Suspendisse ultricies egestas nulla, non vestibulum quam suscipit et. Sed sit amet enim ultricies, auctor nisl eu, porta augue. Cras et tristique augue.</p>
                            </div>    
                        </div>                        
                    </div>

                                </div>                                
                            </div>

                              

                    
 
 </body>
    </html>
    </p>
</asp:Content>
     


