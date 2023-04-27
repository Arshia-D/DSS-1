<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



  <section class="halfscreen p-b-60 background-colored" >
   

<div class="container">
<div class="container-fullscreen">
<div class="text-middle text-center text-light">

<div class="breadcrumb ">
				<ul>
				<li><a href="default.aspx">Home</a>
				</li>
				<li><a href="#">Dashboard</a>
				</li>
				
				
			</ul>
           
		</div>
  

</div>
</div>
</div>


</section>
    <section class="background-grey">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
 <div id="blog" class="single-post ">

<div class="post-item">
<div class="post-item-wrap">
<div class="post-image">
<a href="#">
<asp:Image ID="avatar" runat="server"    />
</a>
</div>
    </div>
    </div>
     </div>
                       
                    </div>
                    <div class="col-lg-9">
                     <div class="heading-text heading-section">
                            <h2><asp:Label ID="Name" runat="server" Text=""></asp:Label></h2>
                        </div>
 <div class="row">
                            <div data-animate-delay="300" data-animate="fadeInUp" class="col-lg-12 animated fadeInUp visible">
                        <h4><asp:Label ID="Pos" runat="server" Text=""></asp:Label></h4>
                        <asp:Label ID="Tel" runat="server" Text=""></asp:Label>
                       
                                <p>
                               <asp:Label ID="Des" runat="server" Text=""></asp:Label>
                                             
                              
                                </p>
                                 </div>
                            </div>
                        <a   class="btn btn-dark btn-outline" href="#">edit profile</a>
                        <a   class="btn btn-dark btn-outline" href="#">change Password</a>
                        <a   class="btn btn-dark btn-outline" href="#">Add photo</a>
                        <a   class="btn btn-dark btn-outline" href="MyArticle.aspx">My articles </a>
                        <a   class="btn btn-dark btn-outline" href="MyComment.aspx">My Comments </a>
                        <asp:Button ID="Button1" runat="server" class="btn btn-dark btn-outline" Text="Logout" onclick="Button1_Click"></asp:Button>

                      

                    </div>
                </div>




            </div>
        </section>
    

</asp:Content>

