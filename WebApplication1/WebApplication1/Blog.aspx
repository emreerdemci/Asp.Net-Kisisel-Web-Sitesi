<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="WebApplication1.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start banner Area -->
    <section class="banner-area relative blog-home-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content blog-header-content col-lg-12">
                    <h1 class="text-white">Dude You’re Getting
								a Telescope				
                    </h1>
                    <p class="text-white">
                        There is a moment in the life of any aspiring astronomer that it is time to buy that first
                    </p>
                    <a href="blog-single.html" class="primary-btn">Detay</a>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->

    <!-- Start top-category-widget Area -->
    <section class="top-category-widget-area pt-90 pb-90 ">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </section>
    <!-- End top-category-widget Area -->

    <!-- Start post-content Area -->
    <section class="post-content-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 posts-list">

                    <asp:Repeater ID="rptBlog" runat="server">
                        <ItemTemplate>
                            <div class="single-post row">
                                <div class="col-lg-3  col-md-3 meta-details">

                                    <div class="user-details row">
                                        <p class="user-name col-lg-12 col-md-12 col-6"><a href="#"><%#Eval("YAZAR") %></a> <span class="lnr lnr-user"></span></p>
                                        <p class="date col-lg-12 col-md-12 col-6"><a href="#"><%#Eval("TARIH") %></a> <span class="lnr lnr-calendar-full"></span></p>
                                        <p class="view col-lg-12 col-md-12 col-6"><a href="#"><%#Eval("GORUNTULENME_SAYISI") %>Görüntülenme</a> <span class="lnr lnr-eye"></span></p>
                                       
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-9 ">
                                    <div class="feature-img">
                                        <img class="img-fluid" src="<%#Eval("GORSEL") %>" alt="">
                                    </div>
                                    <a class="posts-title" href="BlogDetay.aspx?id=<%#Eval("BLOG_ID") %>">
                                        <h3><%#Eval("BASLIK") %></h3>
                                    </a>
                                    <p class="excert">
                                       <%#Eval("ACIKLAMA1") %>
                                    </p>
                                    <a href="BlogDetay.aspx?id=<%#Eval("BLOG_ID") %>" class="primary-btn">Detay</a>
                                </div>
                            </div>
                        </ItemTemplate>

                    </asp:Repeater>



                </div>

            </div>
        </div>
    </section>
    <!-- End post-content Area -->
</asp:Content>
