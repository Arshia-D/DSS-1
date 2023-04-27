<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
      <!-- Inspiro Slider -->
        <div id="slider" class="inspiro-slider background-black" data-height-xs="360">
            <!-- Slide 1 -->
            <div class="slide" style="background-image:url('images/1.jpg');">
                <div class="bg-overlay" data-style="10"></div>
                <div class="container">
                    <div class="slide-captions text-center text-light">
                        <!-- Captions -->
                        <h3>ASPCore</h3>
                        <h2><span class="text-rotator" data-animation="flip" data-speed="2500">ASPCore</span></h2>

                        <!-- end: Captions -->
                    </div>
                </div>
            </div>
            <!-- end: Slide 1 -->

        </div>
        <!--end: Inspiro Slider -->
 
    <%--articles--%>
    <section class="background-grey1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="heading-text heading-section">
                            <h2>articles</h2>
                        </div>
                    </div>
                    <div class="col-lg-9">

                       <div class="row">   
   
 
                           
    <ul class="timeline">
                                     <asp:ListView ID="Articles" runat="server">
                                                 <EmptyDataTemplate>
                                                   <div>
                                                   </div>
                                                   </EmptyDataTemplate>
                                                   <ItemTemplate>
                                                   <li class="timeline-item">
                                                       <div class="timeline-icon"><i class="icon-box"></i></div>

                                                      <a href="<%# "Article.aspx?id="+Eval("id")  %>" class="block gray">
                                                       <h3>  <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' /></h3>
                                                      
                                                      </a>
                                                       <asp:Label ID="Label2" runat="server" Text='<%# Eval("Des") %>' CssClass="justify1 overflow"/>
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

