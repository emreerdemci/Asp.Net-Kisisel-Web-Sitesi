<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="WebApplication1.Iletisim" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
			<!-- Start contact-page Area -->
			<section class="contact-page-area section-gap">
				<div class="container">
					<div class="row">
						<iframe class="map-wrap" style="width:100%; height:445px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12587.172376463788!2d41.92694354764768!3d37.93526384816544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x400c87be7d25fb93%3A0x3974ef65067b10cd!2sSiirt%20%C3%9Cniversitesi!5e0!3m2!1str!2str!4v1590156109786!5m2!1str!2str" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
						<div class="col-lg-4 d-flex flex-column address-wrap">
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-home"></span>
								</div>
								<div class="contact-details">
									<h5>Adres </h5>
									<p>
										<%Response.Write(drConfig["ADRES"].ToString()); %>
									</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-phone-handset"></span>
								</div>
								<div class="contact-details">
									<h5><%Response.Write(drConfig["TEL"].ToString()); %></h5>
									<p>Pzt - Cuma 09 : 00 - 18 : 00</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-envelope"></span>
								</div>
								<div class="contact-details">
									<h5><%Response.Write(drConfig["MAIL"].ToString()); %></h5>
									<p>Bana her zaman mail gönderebilirsiniz. </p>
								</div>
							</div>														
						</div>
						<div class="col-lg-8">
							<form class="form-area contact-form text-right" id="myForm" action="mail.php" method="post">
								<div class="row">	
									<div class="col-lg-6 form-group">
										<input runat="server" id="txtAd" name="name" placeholder=" Adınızı Giriniz"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
									
										<input runat="server" id="txtEmail" name="email" placeholder="Mail Adresinizi Giriniz" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">

										<input runat="server" id="txtBaslik" name="subject" placeholder="Başlık Giriniz" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" class="common-input mb-20 form-control" required="" type="text">
									</div>
									<div class="col-lg-6 form-group">
										<textarea runat="server" id="txtAciklama" class="common-textarea form-control" name="message" placeholder="Mesajınızı Giriniz" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Messege'" required=""></textarea>				
									</div>
									<div class="col-lg-12">
										<div class="alert-msg" style="text-align: left;"></div>
                                        <asp:Button ID="btnGonder" runat="server" class="genric-btn primary" style="float: right;" Text="Gönder" OnClick="btnGonder_Click"/>
																			
									</div>
								</div>
							</form>	
						</div>
					</div>
				</div>	
			</section>
			<!-- End contact-page Area -->
</asp:Content>
