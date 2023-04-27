<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <section class="fullscreen" style="background-image: url(images/bg.jpg)">
            <div class="container container-fullscreen">
                <div class="text-middle">
                   
                    <div class="row">
                        <div class="col-lg-6 center p-40 background-white b-r-6">
                            <div class="form-transparent-grey">
                                <div class="row">
                                <div class="col-lg-12">
                                    <h3>Register</h3>
                                    <p>Register </p>
                                </div>

                                <div class="col-lg-12 form-group">
                                    <label class="sr-only">Name</label>
                                    <asp:TextBox ID="name" runat="server" CssClass="form-control" Placeholder="Name"></asp:TextBox>
                                </div>
                                <div class="col-lg-12 form-group">
                                    <label class="sr-only">Email</label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="Email"></asp:TextBox>
                                </div>
                                <div class="col-lg-12 form-group">
                                    <label class="sr-only">Password</label>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                    
                                 
                                <div class="col-lg-12 form-group">
                                    
                                    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn form-control" onclick="Button1_Click" />
                                    

                                </div>
                             </div>
                            </div>
                            <asp:Label ID="Message" runat="server" CssClass="text-red" Text=""></asp:Label>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="name" 
                ErrorMessage="Enter Name" CssClass="text-red">*</asp:RequiredFieldValidator>
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" 
                ErrorMessage="Enter the username" CssClass="text-red">*</asp:RequiredFieldValidator>
                
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Email format is not correct" 
                
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-red">*</asp:RegularExpressionValidator>
                     
                      
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter the password" CssClass="error">*</asp:RequiredFieldValidator>
                   
                    
		    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-red" />    

                        </div>
                    </div>
                </div>
            </div>
        </section>


    	


</asp:Content>

