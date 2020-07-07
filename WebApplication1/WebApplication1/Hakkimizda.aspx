<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="WebApplication1.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- start banner Area -->
			<section class="about-banner">
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								 <%Response.Write(drConfig["HAKKIMIZDA_BASLIK"].ToString()); %>				
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Anasayfa </a>  <span class="lnr lnr-arrow-right"></span>  <a href="Hakkimizda.aspx"> Hakkımda</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start home-about Area -->
			<section class="home-about-area section-gap">
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
							
						</div>
						
					</div>
					<div class="row skillbar-wraps">					
						<div class="col-lg-6 skill-left">
                            <asp:Repeater ID="prtBecerilerSol" runat="server">
                                <ItemTemplate>
                                    <div class="single-skill">
								<p>
									 <%#Eval("BECERI")%> <%#Eval("DEGER") %>%
								</p>
								<div class="skill" data-width="<%#Eval("DEGER") %>"></div>
							</div>
                                </ItemTemplate>
                                
                              </asp:Repeater>

																																	
						</div>
						<div class="col-lg-6 skill-right">
						<asp:Repeater ID="prtBecerilerSag" runat="server">

                            <ItemTemplate>
                                <div class="single-skill">
								<p>
								 <%#Eval("BECERI")%> <%#Eval("DEGER") %>%
								</p>
								<div class="skill" data-width="<%#Eval("DEGER") %>"></div>
							</div>	

                            </ItemTemplate>
						</asp:Repeater>
                            
                            
                            							
														
						</div>
					</div>
				</div>	
			</section>
			<!-- End home-about Area -->	

			<!-- Start timeline Area -->
			<section class="timeline pb-120">
            <div class="text-center">
                <div class="menu-content pb-70">
                    <div class="title text-center">
                        <h1 class="mb-10">Niteliklerim</h1>
                        <p>Niteliklerimiz vs.....</p>
                    </div>
                </div>
            </div>				
                <ul>
                    <asp:Repeater ID="rptVasiflar" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="content">
                                    <h4>
                                        <time><%#Eval("VASIF_BASLIK") %></time>
                                    </h4>
                                    <p><%#Eval("VASIF_ACIKLAMA1") %></p>
                                    <p><%#Eval("VASIF_ACIKLAMA2") %></p>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>
			</section>		

			<!-- End timeline Area -->


		    <!-- Start brands Area -->
		    <section class="brands-area">
		        <div class="container">
		            <div class="brand-wrap">
		                <div class="row align-items-center active-brand-carusel justify-content-start no-gutters">
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l1.png" alt=""></a>
		                    </div>
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l2.png" alt=""></a>
		                    </div>
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l3.png" alt=""></a>
		                    </div>
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l4.png" alt=""></a>
		                    </div>
		                    <div class="col single-brand">
		                        <a href="#"><img class="mx-auto" src="img/l5.png" alt=""></a>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </section>
		    <!-- End brands Area -->

</asp:Content>
