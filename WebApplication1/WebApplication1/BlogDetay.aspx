<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="WebApplication1.BlogDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start post-content Area -->
			<section class="post-content-area single-post-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 posts-list">
							<div class="single-post row">
								<div class="col-lg-12">
									<div class="feature-img">
										<img class="img-fluid" src="<%Response.Write(drDetay["GORSEL"].ToString()); %>" alt="">
									</div>									
								</div>
								<div class="col-lg-3  col-md-3 meta-details">
									
									<div class="user-details row">
										<p class="user-name col-lg-12 col-md-12 col-6"><a href="#"> <%Response.Write(drDetay["YAZAR"].ToString()); %></a> <span class="lnr lnr-user"></span></p>
										<p class="date col-lg-12 col-md-12 col-6"><a href="#"> <%Response.Write(drDetay["TARIH"].ToString()); %></a> <span class="lnr lnr-calendar-full"></span></p>
										<p class="view col-lg-12 col-md-12 col-6"><a href="#"><%Response.Write(drDetay["GORUNTULENME_SAYISI"].ToString());%>Görüntülenme</a> <span class="lnr lnr-eye"></span></p>
										
																													
									</div>
								</div>
								<div class="col-lg-9 col-md-9">
									<h3 class="mt-20 mb-20"><%Response.Write(drDetay["BASLIK"].ToString()); %></h3>
									<p class="excert">
										<%Response.Write(drDetay["ACIKLAMA1"].ToString()); %>
                                        
									</p>
									
								</div>
								<div class="col-lg-12">
									<div class="quotes">
										
										<%Response.Write(drDetay["ACIKLAMA2"].ToString()); %>
                                        
									</div>
									<div class="row mt-30 mb-30">
										<asp:Repeater ID="rptGorseller" runat="server">
                                            <ItemTemplate>

                                           
                                        <div class="col-6">
											<img class="img-fluid" src="<%#Eval("GORSEL")%>" alt="">
										</div>
										 </ItemTemplate>

										</asp:Repeater>
										<div class="col-lg-12 mt-30">
											<p>
                                                <%Response.Write(drDetay["ACIKLAMA3"].ToString()); %>
												
											</p>
																					
										</div>									
									</div>
								</div>
							</div>
							
						</div>
						
					</div>
				</div>	
			</section>
			<!-- End post-content Area -->
</asp:Content>
