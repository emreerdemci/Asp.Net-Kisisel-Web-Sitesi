<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Servisler.aspx.cs" Inherits="WebApplication1.Servisler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

			
</asp:Content>
