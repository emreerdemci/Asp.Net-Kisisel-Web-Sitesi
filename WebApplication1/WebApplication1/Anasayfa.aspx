<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="WebApplication1.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start banner Area -->
    <section class="banner-area">
        <div class="container">
            <div class="row fullscreen align-items-center justify-content-between">
                <div class="col-lg-6 col-md-6 banner-left">
                    <h6><%Response.Write(drConfig["KUCUK_SLOGAN"].ToString()); %></h6>
                    <h1>
                        <%Response.Write(drConfig["SITE_AD"].ToString()); %>

                    </h1>
                    <p>
                        <%Response.Write(drConfig["SLOGAN"].ToString()); %>
                    </p>
                    <a href="#" class="primary-btn text-uppercase">şimdi keşfet</a>
                </div>
                <div class="col-lg-6 col-md-6 banner-right d-flex align-self-end">
                    <img class="img-fluid" src="<%Response.Write(drConfig["SITE_ANA_GORSEL"].ToString()); %>" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->

    <!-- Start home-about Area -->
    <section class="home-about-area pt-120">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-6 col-md-6 home-about-left">
                    <img class="img-fluid" src="<%Response.Write(drConfig["SITE_IKINCI_GORSEL"].ToString()); %>" alt="">
                </div>
                <div class="col-lg-5 col-md-6 home-about-right">
                    <h6>Hakkımda</h6>
                    <h1 class="text-uppercase">
                        <%Response.Write(drConfig["HAKKIMIZDA_BASLIK"].ToString()); %>
                    </h1>
                    <p>
                        <%Response.Write(drConfig["HAKKIMIZDA_ACIKLAMA"].ToString()); %>
                    </p>
                    <a href="Hakkimizda.aspx" class="primary-btn text-uppercase">Detay</a>
                </div>
            </div>
        </div>
    </section>
    <!-- End home-about Area -->

    <!-- Start services Area -->
			<section class="services-area section-gap">
				<div class="container">
		            <div class="row d-flex justify-content-center">
		                <div class="menu-content  col-lg-7">
		                    <div class="title text-center">
		                        <h1 class="mb-10">Sunulan Hizmetlerim</h1>
		                        <p>En İyi Servisler</p>
		                    </div>
		                </div>
		            </div>						
					<div class="row">
                        <asp:Repeater  ID="rptServisler" runat="server"> 
                            <ItemTemplate>


                           
						<div class="col-lg-4 col-md-6">
							<div class="single-services">
								<span class="<%#Eval("ICON") %>"></span>
								<a href="#"><h4><%#Eval("BASLIK") %></h4></a>
								<p>
									<%#Eval("ACIKLAMA") %>
								</p>
							</div>
						</div>
						 </ItemTemplate>
                         
                        </asp:Repeater>														
					</div>
				</div>	
			</section>
			<!-- End services Area -->	

    <!-- Start fact Area -->
    <section class="facts-area section-gap" id="facts-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 single-fact">
                    <h1 class="counter">2536</h1>
                    <p>Projects Completed</p>
                </div>
                <div class="col-lg-3 col-md-6 single-fact">
                    <h1 class="counter">6784</h1>
                    <p>Happy Clients</p>
                </div>
                <div class="col-lg-3 col-md-6 single-fact">
                    <h1 class="counter">2239</h1>
                    <p>Cups of Coffee</p>
                </div>
                <div class="col-lg-3 col-md-6 single-fact">
                    <h1 class="counter">435</h1>
                    <p>Real Professionals</p>
                </div>
            </div>
        </div>
    </section>
    <!-- end fact Area -->

    <!-- Start portfolio-area Area -->
    <section class="portfolio-area section-gap" id="portfolio">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="menu-content pb-70 col-lg-8">
                    <div class="title text-center">
                        <h1 class="mb-10">En Son Öne Çıkan Projelerim</h1>
                        <p>Çevre dostu sisteme son derece aşık olanlar.</p>
                    </div>
                </div>
            </div>

            <div class="filters">
                <ul>
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".vector">Vector</li>
                    <li data-filter=".raster">Raster</li>
                    <li data-filter=".ui">UI/UX</li>
                    <li data-filter=".printing">Printing</li>
                </ul>
            </div>

            <div class="filters-content">
                <div class="row grid">
                    <div class="single-portfolio col-sm-4 all vector">
                        <div class="relative">
                            <div class="thumb">
                                <div class="overlay overlay-bg"></div>
                                <img class="image img-fluid" src="img/p1.jpg" alt="">
                            </div>
                            <a href="img/p1.jpg" class="img-pop-up">
                                <div class="middle">
                                    <div class="text align-self-center d-flex">
                                        <img src="img/preview.png" alt=""></div>
                                </div>
                            </a>
                        </div>
                        <div class="p-inner">
                            <h4>2D Vinyl Design</h4>
                            <div class="cat">vector</div>
                        </div>
                    </div>
                    <div class="single-portfolio col-sm-4 all raster">
                        <div class="relative">
                            <div class="thumb">
                                <div class="overlay overlay-bg"></div>
                                <img class="image img-fluid" src="img/p2.jpg" alt="">
                            </div>
                            <a href="img/p2.jpg" class="img-pop-up">
                                <div class="middle">
                                    <div class="text align-self-center d-flex">
                                        <img src="img/preview.png" alt=""></div>
                                </div>
                            </a>
                        </div>
                        <div class="p-inner">
                            <h4>2D Vinyl Design</h4>
                            <div class="cat">vector</div>
                        </div>
                    </div>
                    <div class="single-portfolio col-sm-4 all ui">
                        <div class="relative">
                            <div class="thumb">
                                <div class="overlay overlay-bg"></div>
                                <img class="image img-fluid" src="img/p3.jpg" alt="">
                            </div>
                            <a href="img/p3.jpg" class="img-pop-up">
                                <div class="middle">
                                    <div class="text align-self-center d-flex">
                                        <img src="img/preview.png" alt=""></div>
                                </div>
                            </a>

                        </div>
                        <div class="p-inner">
                            <h4>Creative Poster Design</h4>
                            <div class="cat">Agency</div>
                        </div>
                    </div>
                    <div class="single-portfolio col-sm-4 all printing">
                        <div class="relative">
                            <div class="thumb">
                                <div class="overlay overlay-bg"></div>
                                <img class="image img-fluid" src="img/p4.jpg" alt="">
                            </div>
                            <a href="img/p4.jpg" class="img-pop-up">
                                <div class="middle">
                                    <div class="text align-self-center d-flex">
                                        <img src="img/preview.png" alt=""></div>
                                </div>
                            </a>
                        </div>
                        <div class="p-inner">
                            <h4>Embosed Logo Design</h4>
                            <div class="cat">Portal</div>
                        </div>
                    </div>
                    <div class="single-portfolio col-sm-4 all vector">
                        <div class="relative">
                            <div class="thumb">
                                <div class="overlay overlay-bg"></div>
                                <img class="image img-fluid" src="img/p5.jpg" alt="">
                            </div>
                            <a href="img/p5.jpg" class="img-pop-up">
                                <div class="middle">
                                    <div class="text align-self-center d-flex">
                                        <img src="img/preview.png" alt=""></div>
                                </div>
                            </a>
                        </div>
                        <div class="p-inner">
                            <h4>3D Helmet Design</h4>
                            <div class="cat">vector</div>
                        </div>
                    </div>
                    <div class="single-portfolio col-sm-4 all raster">
                        <div class="relative">
                            <div class="thumb">
                                <div class="overlay overlay-bg"></div>
                                <img class="image img-fluid" src="img/p6.jpg" alt="">
                            </div>
                            <a href="img/p6.jpg" class="img-pop-up">
                                <div class="middle">
                                    <div class="text align-self-center d-flex">
                                        <img src="img/preview.png" alt=""></div>
                                </div>
                            </a>
                        </div>
                        <div class="p-inner">
                            <h4>2D Vinyl Design</h4>
                            <div class="cat">raster</div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- End portfolio-area Area -->

    

    

   

    <!-- Start brands Area -->
    <section class="brands-area">
        <div class="container">
            <div class="brand-wrap">
                <div class="row align-items-center active-brand-carusel justify-content-start no-gutters">
                    <div class="col single-brand">
                        <a href="#">
                            <img class="mx-auto" src="img/l1.png" alt=""></a>
                    </div>
                    <div class="col single-brand">
                        <a href="#">
                            <img class="mx-auto" src="img/l2.png" alt=""></a>
                    </div>
                    <div class="col single-brand">
                        <a href="#">
                            <img class="mx-auto" src="img/l3.png" alt=""></a>
                    </div>
                    <div class="col single-brand">
                        <a href="#">
                            <img class="mx-auto" src="img/l4.png" alt=""></a>
                    </div>
                    <div class="col single-brand">
                        <a href="#">
                            <img class="mx-auto" src="img/l5.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End brands Area -->
</asp:Content>
