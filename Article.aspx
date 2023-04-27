<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Article.aspx.cs" Inherits="Article" %>

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
				<li><a href="Articles.aspx">articles</a>
				</li>
				<li><a href="#"><asp:Label ID="Navigate2" runat="server" Text=""></asp:Label></a>
				</li>
			</ul>
           
		</div>
        <div class="page-title text-light">
			<h1> <asp:Label ID="title" runat="server"   Text="" ></asp:Label></h1>
             
			<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
         
		</div>

</div>
</div>
</div>

 
</section>



			<section class="article-single">
				<div class="container">
					<div class="row">
	    <div id="blog" class="single-post col-lg-9">

<div class="post-item">
<div class="post-item-wrap">
<div class="post-image">
<a href="#">
<asp:Image ID="Image1" runat="server"    />
</a>
</div>
<div class="post-item-description">
<%--<h2>Standard post with a single image</h2>--%>
<div class="post-meta">
<%--<span class="post-meta-date"><i class="fa fa-calendar-o"></i>Jan 21, 2017</span>--%>
<span class="post-meta-comments"><a href=""><i class="fa fa-comments-o"></i><asp:Label ID="Label4" runat="server" Text=" visit:" ></asp:Label>
        <asp:Label ID="Visit" runat="server" Text="" ></asp:Label></a></span>
<span class="post-meta-category"><a href=""><i class="fa fa-tag"></i>articles</a></span>
<div class="post-meta-share">
<a class="btn btn-xs btn-slide btn-facebook" href="#">
 <i class="fab fa-facebook-f"></i>
<span>Facebook</span>
</a>
<a class="btn btn-xs btn-slide btn-twitter" href="#" data-width="100">
<i class="fab fa-twitter"></i>
<span>Twitter</span>
</a>
<a class="btn btn-xs btn-slide btn-instagram" href="#" data-width="118">
<i class="fab fa-instagram"></i>
<span>Instagram</span>
</a>
<a class="btn btn-xs btn-slide btn-googleplus" href="mailto:#" data-width="80">
<i class="far fa-envelope"></i>
<span>Mail</span>
</a>
</div>
</div>
<p><asp:Label ID="Des" runat="server" Text=""></asp:Label></p>
<%--<div class="blockquote">
<p>The world is a dangerous place to live; not because of the people who are evil, but because of the people who don't do anything about it.</p>
<small>by <cite>Albert Einstein</cite></small>
</div>--%>

    <asp:ListView ID="ListView1" runat="server">
                            
                            <EmptyDataTemplate>
                          <div >   </div>
                            </EmptyDataTemplate>
                          
                           
                            <ItemTemplate>
                            
                          <div  align="right" >
                          
                             <br />
                               <h2> <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'  CssClass="gray" /></h2>
                                   
                                <p>       
                                   <asp:Label ID="Des" runat="server"  Text='<%# Eval("Des") %>'  />

                                </p>   
                                    
                                  
                           </div> <br />

                         <div class="post-image">
                             <a href="#">
        
                                 <asp:Image ID="Image1" runat="server" imageurl='<%# "/Gallery/M/"+Eval("Image_Name_M")%>'  ToolTip='<%#Eval("Title") %>'  AlternateText='<%#Eval("Title") %>' />
                             </a>
			              </div>
           
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div ID="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                               
                            </LayoutTemplate>
                           
          </asp:ListView>


</div>




<div class="post-navigation">
<a ID="aPre" runat="server" class="post-prev">
<div class="post-prev-title"><span class="span">Previous </span><asp:Label ID="Pre" runat="server" Text="" ></asp:Label> </div>
</a>
<a href="Articles.aspx" class="post-all">
<i class="icon-grid"> </i>
</a>
<a ID="aNext" runat="server" class="post-next">
<div class="post-next-title"><span class="span">Next</span><asp:Label ID="Next" runat="server" Text="" ></asp:Label></div>
</a>
</div>



<div class="comments" id="comments">
<div class="comment_number">
Comments <span></span>
</div>
<div class="comment-list">


<asp:ListView ID="Comment" runat="server" >
                   
                  
                   <EmptyDataTemplate>
                    <div style="padding: 10px; background-color: #e9eaed; margin-top: 1px; margin-bottom: 1px;">Leave a comment</div>
                   </EmptyDataTemplate>
                   
             <ItemTemplate>
                 <div class="comment" id="comment-1">
                   <div class="image"><img alt="" src="/images/avatar-round-3.png" class="avatar"></div>
                   <div class="text">
                     <h5 class="name"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("NA") %>'  /></h5>
                     <span class="comment_date"><asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("PD") %>' ></asp:Label></span>
                     
                     <div class="text_holder">
                        <p><asp:Label ID="Label9" runat="server" Text='<%# Eval("DE") %>' /></p>
                     </div>
                   </div>
                 </div>
               
                      
            </ItemTemplate>
                   <LayoutTemplate>
                      
                           <span runat="server" id="itemPlaceholder" />
                      
                      
                   </LayoutTemplate>
                   
               </asp:ListView>




</div>
</div>

<div class="respond-form" id="respond">
    <div class="message" align="right">
    
    <table cellpadding="0" cellspacing="0" >
    <tr >
    <td>
      <asp:Image ID="MessageIcon" runat="server" ImageUrl="~/images/MessageIcon.png" 
        BorderStyle="None" Visible="False" />
    </td>
    <td>
         <asp:Label ID="Message" runat="server" CssClass="error2" ></asp:Label>
    </td>
    </tr>
    
    </table>
 </div><br />
<div class="respond-comment">
Save <span>Comments</span></div>
<form class="form-gray-fields">
<div class="row">
<div class="col-lg-6">
<div class="form-group">

    <asp:TextBox ID="TextBox1" runat="server" Placeholder="Name" CssClass="form-control required"></asp:TextBox>
</div>
</div>
<div class="col-lg-6">
<div class="form-group">
 
    <asp:TextBox ID="TextBox2" runat="server" Placeholder="Email" CssClass="form-control required email"></asp:TextBox>
</div>
</div>

</div>
<div class="row">
<div class="col-lg-12">
<div class="form-group">

<asp:TextBox ID="TextBox3" runat="server" Placeholder="Comment" CssClass="form-control required" TextMode="MultiLine" rows="9"></asp:TextBox>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12">
<div class="form-group text-center">
<%--<button class="btn" type="submit">Submit Comment</button>--%>
<asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn "  OnClick="Button1_Click"/>
</div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" 
                ErrorMessage="Filling all fields is mandatory" CssClass="error"></asp:RequiredFieldValidator>     
                <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" 
                ErrorMessage="Filling all fields is mandatory" CssClass="error"></asp:RequiredFieldValidator>     
                <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox2" 
                ErrorMessage="Filling all fields is mandatory" CssClass="error"></asp:RequiredFieldValidator>   
                
    <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" />--%>  
                <br />
					 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage=" Email format is not correct" 
               
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error">Email format is not correct</asp:RegularExpressionValidator>       	

</div>
</div>
</form>
</div>
</div>
</div>

</div>


<%-----------------------------------------------------%>
<div class="sidebar sticky-sidebar col-lg-3" style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">

     <div class="widget">
                                <h4>Related articles</h4>
                                <ul class="list-icon list-icon-arrow">
                                     <asp:ListView ID="web" runat="server">
                                                 <EmptyDataTemplate>
                                                   <div>
                                                   </div>
                                                   </EmptyDataTemplate>
                                                   <ItemTemplate>
                                                   <li>
                                                      <a href="<%# "Article.aspx?id="+Eval("id")  %>" class="block gray">
                                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' />
                                                                     

                                                      </a>
                                                   </li>

                                          </ItemTemplate>
                                          <LayoutTemplate>
                                           <div id="itemPlaceholderContainer" runat="server" style="">
                                
                                              <span runat="server" id="itemPlaceholder" />
                               
                                          </div>
                                         </LayoutTemplate>
                                        </asp:ListView>
                                </ul>
                              <div class="text-right"> <a href="Articles.aspx">+ More</a></div> 
                            </div>

                    </div>
     	
	 
      </div>
                    </div>
              </section>
             
</asp:Content>

