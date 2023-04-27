<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div class="login">
          	<div class="wrap">
 
  <h4 class="title">change Password</h4>
            <div class="message" align="right">
    
    <table  >
    <tr >
    <td>
      <asp:Image ID="MessageIcon" runat="server" ImageUrl="~/icon/icon.png" 
        BorderStyle="None" Visible="False" />
    </td>
    <td>
         <asp:Label ID="Message" runat="server" CssClass="error2" ></asp:Label>
    </td>
    </tr>
    
    </table>
 </div>
			</div>	
                 <div class="wrap">
                <div class="col_1_of_login span_1_of_login">
					<h4 class="title">New Customers</h4>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan</p>
					<div class="button1">
					   <a href="Register.aspx" class="button">Create an Account</a>
					 </div>
					 <div class="clear"></div>
				</div>
				<div class="col_1_of_login span_1_of_login">
				<div class="login-title">
	           		<h4 class="title">change Password</h4>
					<div id="loginbox" class="loginbox">
					


						  
						    <p id="login-form-username">
						      <label for="modlgn_username">username (email)</label><br />
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
						    
						    </p>
						    <p id="login-form-password">
						      <label for="modlgn_passwd">New password</label>
                              <br />
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
						   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" CssClass="error">*</asp:RequiredFieldValidator>
						    </p>
						    <div class="remember">
							     <asp:Button ID="Button1" runat="server" Text="Save" CssClass="button"  onclick="Button1_Click" />
                             
                               
                                <div class="clear"></div>
                               
                              
                             </div>
						
						
					</div>
			    </div>
				</div>
				<div class="clear"></div>
			</div>
		

</div>
</asp:Content>

