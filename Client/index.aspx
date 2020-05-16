<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Client_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h4>Payments</h4>
     <div class=" row">
        <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments_list.aspx">
                <i class=" glyphicon glyphicon-plus-sign"></i>

                <div>Total Payments</div>
                <div> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
            </div>
       
         <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payment_search.aspx">
                <i class="glyphicon glyphicon-warning-sign"></i>

                <div>Pending Payment Requests </div>
                <div> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
             </div>

             <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments_list.aspx">
                <i class="glyphicon glyphicon-ok"></i>

                <div>Approved Payments</div>
                <div> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
        </div>

         <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments_list.aspx">
                <i class=" glyphicon glyphicon-plus-sign"></i>

                <div>Total Payment Amount</div>
                <div> <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" class="well top-block" href="payment_search.aspx">
                <i class="glyphicon glyphicon-warning-sign"></i>

                <div>Pending Payment Amount</div>
                <div> <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
            </div>

            <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments_list.aspx">
                <i class="glyphicon glyphicon-ok"></i>

                <div>Approved Payment Amount</div>
                <div> <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>

                </span>
            </a>

        </div>
         </div>


     <div class=" row">
        
         <h4>Investments</h4>
     <div class=" row">
        <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="inv_list.aspx">
                <i class="glyphicon glyphicon-briefcase"></i>

                <div>Total Investments</div>
                <div> <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>


                </span>
            </a>
            </div>

         <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="inv_list.aspx">
                <i class="glyphicon glyphicon-briefcase"></i>

                <div>Total Investments Amount</div>
                <div> <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>


                </span>
            </a>
            </div>
         </div>
         </div>

    <h4>Holders</h4>
     <div class=" row">
         <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="holder.aspx">
                <i class="glyphicon glyphicon-user red"></i>

                <div>Total Holders</div>
                <div> <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>


                </span>
            </a>
            </div>
         </div>

    </div>    

</asp:Content>

