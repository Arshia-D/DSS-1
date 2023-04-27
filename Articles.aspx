<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Articles.aspx.cs" Inherits="Articles" %>

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
				
			</ul>
           
		</div>
        <div class="page-title text-light">
			<h1>articles </h1>
    
		</div>


</div>
</div>
</div>

 
</section>


<section id="page-content">
<div class="container">



<div id="blog" class="grid-layout post-3-columns m-b-30 grid-loaded" data-item="post-item" >


<asp:ListView ID="Article" runat="server" onpagepropertieschanging="Article_PagePropertiesChanging">
                        <EmptyDataTemplate>
                            <div>
                            </div>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <div class="post-item border shadow1" >
<div class="post-item-wrap">
<div class="post-image">
<a  href="<%# "Article.aspx?id="+Eval("Id")  %>">
<asp:Image ID="Image1" runat="server" imageurl='<%# "~/Gallery/s/"+Eval("Image_Name_S")%>'   AlternateText='<%# Eval("Title") %>' ToolTip='<%# Eval("Title") %>' />
</a>
<span class="post-meta-category"><a href="#">articles</a></span>
</div>
<div class="post-item-description">

<span class="post-meta-comments"><a href="#"><i class="fa fa-comments-o"></i><asp:Label ID="Label4" runat="server" Text='<%# Eval("Visit") %>'  /> visit</a></span>
<h2 class="overflowTitle"><a href="<%# "Article.aspx?id="+Eval("Id")  %>" >
    <asp:Label ID="Label2" runat="server" Text='<%# SubStringHtml(Eval("Title"),0,80) %>'  /> </a></h2>
 

</div>
</div>
</div>

                          
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" >
                              
                                    <span runat="server" id="itemPlaceholder" />
                               
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>


</div>

 
<div align="center"  >
         
               <table  class="framePager">
            
                       <tr>
                         <td> 
                             <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Last" 
                              ToolTip="Last"  CssClass="btn btn-primary"/>
                         </td>
                         <td dir="ltr">
                            
                               <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Article"     PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowNextPageButton="False" 
                                        ShowPreviousPageButton="False"  />
                                    <asp:NumericPagerField     ButtonCount="5"   CurrentPageLabelCssClass="btn PagerCurrent"     NextPreviousButtonCssClass="btn NextPrevious"      NumericButtonCssClass="btn PagerNormal"               />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowNextPageButton="False"    ShowPreviousPageButton="False" />
                                </Fields>
                              </asp:DataPager>
                          </td>
                            <td>  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="First" 
                                ToolTip="First"  CssClass="btn btn-primary" /></td>
                     </tr>
               </table>
                          
                            
        </div>
</div>

</section>

            




</asp:Content>

