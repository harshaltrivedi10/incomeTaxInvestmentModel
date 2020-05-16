<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Admin_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
    </ul>
</div>
    <h4>Payments</h4>
     <div class=" row">
        <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments.aspx">
                <i class=" glyphicon glyphicon-plus-sign"></i>

                <div>Total Payments</div>
                <div> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
            </div>
        
         <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments.aspx">
                <i class="glyphicon glyphicon-warning-sign"></i>

                <div>Pending Payment Requests </div>
                <div> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
             </div>

         <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="pending_payment_view.aspx">
                <i class="glyphicon glyphicon-warning-sign"></i>

                <div>Pending Payments</div>
                <div> <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
             </div>

             <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments.aspx">
                <i class="glyphicon glyphicon-ok"></i>

                <div>Approved Payments</div>
                <div> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
        </div>

         <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments.aspx">
                <i class=" glyphicon glyphicon-plus-sign"></i>

                <div>Total Payment Amount</div>
                <div> <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="pending_payment_view.aspx">
                <i class="glyphicon glyphicon-warning-sign"></i>

                <div>Pending Payment Amount</div>
                <div> <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
            </div>

            <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="payments.aspx">
                <i class="glyphicon glyphicon-ok"></i>

                <div>Approved Payment Amount</div>
                <div> <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>

                </span>
            </a>

        </div>
    </div>

    <h4>Employees</h4>
     <div class=" row">
        <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="employee_list.aspx">
                <i class="glyphicon glyphicon-user blue"></i>

                <div>Total Employees</div>
                <div> <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
            </div>
         </div>

<h4>Policies</h4>
     <div class=" row">
        <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="policy.aspx">
                <i class="glyphicon glyphicon-user blue"></i>

                <div>Total Policies</div>
                <div> <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>

                </span>
            </a>
            </div>
         </div>

<h4>Investments</h4>
     <div class=" row">
        <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="investments.aspx">
                <i class="glyphicon glyphicon-briefcase"></i>

                <div>Total Investments</div>
                <div> <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>


                </span>
            </a>
            </div>

         <div class="col-md-3 col-sm-3 col-xs-6">
            <a data-toggle="tooltip" title="" class="well top-block" href="investments.aspx">
                <i class="glyphicon glyphicon-briefcase"></i>

                <div>Total Investments Amount</div>
                <div> <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label> </div>
                <span class="notification">
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>


                </span>
            </a>
            </div>
         </div>
   
</asp:Content>

