<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="fullscreen" style="background-image: url(images/bg.jpg)">
           
    <div class="container">
         <div>
                <div class="text-center m-b-30">
                        <a href="index.html" class="logo">
                            <img src="images/logo-dark.png" alt="Polo Logo">
                        </a>
                    </div>
                
     
                    <div class="row">
                       <div class="col-lg-5 center p-50 background-white b-r-6">


                            <h3>Login</h3>
                            <div>
                                <div class="form-group">
                                    <label class="sr-only">Username or Email</label>
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Email Address" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group m-b-5">
                                    <label class="sr-only">Password</label>
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group form-inline text-left">

                                    <div class="form-check">
                                        <label>
                                            <input type="checkbox"><small> Remember me</small>
                                        </label>
                                        <%--<a href="#" class="right"><small>Lost your Password?</small></a>--%>
                                    </div>
                                   
                                </div>
                                <div class=" form-group">
                                    <%--<button type="button" class="btn">Login</button>--%>
                                    <asp:Button ID="Button1" runat="server" Text="login" CssClass="btn form-control"  onclick="Button1_Click" />

                                </div>
                            </div>
                            <p class="small">Not Register?  <a href="register.aspx">Register</a> </p>
                            <span class="small">Forgot your password?
                                <a href="ForgetPass.aspx">Password recovery</a>
                            </span>

                            <div class="message" align="right">
    
    <table cellpadding="0" cellspacing="0" >
    <tr >
    <td>
      <asp:Image ID="MessageIcon" runat="server" ImageUrl="~/icon/icon.png" 
        BorderStyle="None" Visible="False" />
    </td>
    <td>
         <asp:Label ID="Message" runat="server" CssClass="text-red" ></asp:Label>
    </td>
    </tr>
    
    </table>
 </div>
                        </div>

                         

                    </div>
                </div>
            </div>
        </section>


 
  	
    

</asp:Content>

