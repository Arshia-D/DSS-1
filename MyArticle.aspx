<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyArticle.aspx.cs" Inherits="MyArticle" %>

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
				<li><a href="#"><asp:Label ID="Navigate2" runat="server" Text="My articles "></asp:Label></a>
				</li>
			</ul>
           
		</div>
        <div class="page-title text-light">
			<h1> <asp:Label ID="title" runat="server"   Text="My articles " ></asp:Label></h1>
             
			<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
         
		</div>

</div>
</div>
</div>

</section>
  
    	<section class="article-single">
				<div class="container">
					<div class="row">
    
      <div class="col-lg-12">
 
    
        
 
         <asp:Label ID="Message" runat="server" CssClass="color--error" ></asp:Label>
   
    
<div class="form-row">
     <div class="form-group col-md-6">
Title:
           
           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control required name" ></asp:TextBox>
         </div>
          <div class="form-group col-md-6">
                          Choose a photo:
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control required name"  />
              </div>
    </div>
    <div class="col-md-12">
Description:              
          <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control required name" 
                                   TextMode="MultiLine" Height="100px" Width="100%"></asp:TextBox>
        </div>
          <br /> <br />
         <div class="form-row">      
        

  <asp:Button ID="Button10" runat="server" CssClass="btn btn-primary" 
                                           onclick="Button10_Click" Text="add" />
    
          
                    <asp:Button ID="Button11" runat="server" CssClass="btn btn-primary" 
                                           onclick="Button11_Click" Text="Delete" CausesValidation="False" />  
        
                     <asp:Button ID="Button12" runat="server" CssClass="btn btn-primary" 
                                           onclick="Button12_Click" Text="return" CausesValidation="False" />  
               
                   </div>  
                   
                                      
    
       <div class="col-lg-12"> 
              <div class=" table-responsive"> 
              
               
                 
              <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" 
                        onpagepropertieschanging="ListView2_PagePropertiesChanging">
                        
                           
                           <EmptyDataTemplate>
                              <div align="center">
                                           No data found.</div>
                           </EmptyDataTemplate>
                           
                           <ItemTemplate>
                               <tr >
                                   <td align="center " class="">
                                       
                                       <div class="input-checkbox1">
                                       <asp:CheckBox ID="CheckBox2" runat="server" CssClass="input-checkbox12" />

                                       </div>
                                   </td>
                                    <td align="center" >
                                  
                                       <asp:Label ID="Label5" runat="server" Text='<%# Eval("Id") %>' />
                                   </td>
                                   <td align="center">
                                <asp:Image ID="Image1" runat="server" imageurl='<%# "~/Gallery/S/"+Eval("Image_Name_S")%>'  Width="75" />
                               
                                   </td>
                                   
                                   <td align="center" >
                                   <a href='<%# "Details.aspx?id="+ Eval("Id")   %>' >
                                       <asp:Label ID="GroupNameLabel" runat="server" Text='<%# Eval("Title") %>' /></a>
                                   </td>
                                  
                                   <td align="center" >
                                  
                                       <asp:Label ID="Label15" runat="server" Text='<%# Eval("Visit") %>' />
                                   </td>

                                   <td align="center">
                                   <a href='<%# "SubGroupEdit.aspx?id="+Eval("Id")  %>'>Edit </a>
                                   
                                     </td>
                    
                   
                              
                               </tr>
                           </ItemTemplate>
                           <LayoutTemplate>
                              
                                          <table ID="itemPlaceholderContainer" runat="server"  class="table table-striped1"  >
                                            <thead>
                                               <tr id="Tr2" runat="server" >
                                                   <th id="Th1" runat="server" width="30" align="center" height="30">
                                                       
                                                       <div class="input-checkbox1">
                                                           <asp:CheckBox ID="CheckBox3" runat="server" oncheckedchanged="CheckBox3_CheckedChanged" AutoPostBack="True" Enabled="True" />
                                                          

                                                        </div>
                                                   </th>
                                                    <th id="Th3" runat="server"  align="center" dir="rtl" width="50">
                                                      code  </th>
                                                    <th id="Th4" runat="server"  align="center" dir="rtl" width="75">
                                                      photo  </th>
                                                   <th id="Th2" runat="server"  align="center" dir="rtl" >
                                                       Title  </th>
                                                <th id="Th13" runat="server"  align="center" dir="rtl" >
                                                       visit  </th>
                                               <th id="Th5" runat="server"  align="center" width="50">
                                                  Edit
                                                       </th>
                                               
                                              
                                               </tr><thead><tbody>
                                               <tr ID="itemPlaceholder" runat="server">
                                               </tr></tbody>
                                           </table>
                                      
                           </LayoutTemplate>
                           
                       </asp:ListView>
                   </div>    
           </div>                           
       
            
       
                                    
     
      <div align="center"  class="container framePager" >
         
              

                         
                            <asp:Button ID="Button5" runat="server" onclick="Button1_Click" Text="First" 
                                ToolTip="First"  CssClass="btn btn-primary" />
                               <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView2"     PageSize="20">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowNextPageButton="False" 
                                        ShowPreviousPageButton="False"  />
                                    <asp:NumericPagerField     ButtonCount="4"   CurrentPageLabelCssClass="btn PagerCurrent"     NextPreviousButtonCssClass="btn NextPrevious"      NumericButtonCssClass="btn PagerNormal"               />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowNextPageButton="False"    ShowPreviousPageButton="False" />
                                </Fields>
                              </asp:DataPager>
                          
                        <asp:Button ID="Button4" runat="server" onclick="Button2_Click" Text="Last" 
                              ToolTip="Last"  CssClass="btn btn-primary"/>

                     
                          
                            
        </div>
    
 <br /><br />
   </div>

                        </div>
                    </div>
            </section>
</asp:Content>

