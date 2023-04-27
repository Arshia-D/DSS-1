<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPass.aspx.cs" Inherits="ForgetPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="halfscreen p-b-60 background-colored" >
        
<div class="container">
<div class="container-fullscreen">
<div class="text-middle text-center1 text-light">
<div class="breadcrumb">
<ul>
<li><a href="#">Home</a>
</li>
<%--<li><a href="#">Pages</a>
</li>--%>
<li class="active"><a href="#">forget password</a>
</li>
</ul>
</div>

        <div class="page-title text-light">
			<h1><asp:Label ID="title" runat="server" Text=""></asp:Label> forget password </h1>
			<asp:Label ID="des" runat="server" Text=""></asp:Label>
      
		</div>

</div>
</div>
</div>
<div id="particles-dots" class="particles"><canvas class="particles-js-canvas-el"  style="width: 100%; height: 100%;"></canvas></div>
</section>
    <section>
	<div class="container">
		<div class="row ">
			<div class="col-md-6 offset-3">
				<h2 class="text-center">Password recovery</h2>
				<div class="form-validation ">
					<div class="form-group">
						<p class="center">Enter your username (Email).</p>
						
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Email Address" CssClass="form-control form-white placeholder"></asp:TextBox>
					</div>
					<div class="text-center">
						<asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn " onclick="Button1_Click" />
                        <br />
                        <asp:Label ID="Message" runat="server" CssClass="text-red" Text=""></asp:Label>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

	     
                         
</asp:Content>

