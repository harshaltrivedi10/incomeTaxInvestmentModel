<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="payment_detailed.aspx.cs" Inherits="Admin_payment_detailed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="investment_detailed.aspx">This Payment's details</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Individual Payment Details</h2>

                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                            class="glyphicon glyphicon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
           

                  <table class="nav-justified table table-striped table-bordered bootstrap-datatable datatable responsive">
                      <tr>
                          <td colspan="2">
                              <strong>
                                  Employee Details
                              </strong>
                          </td>
                      </tr>
                      <tr>
                            <td>Employee Image</td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" /> 
                            </td>
                      </tr>
                        <tr>
                            <td>Employee Name</td>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Employee Linked Account Number</td>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>

                      
                      <tr>
                          <td colspan="2">
                              <strong>
                                  Holder Details
                              </strong>
                          </td>
                      </tr>
                <tr>
                    <td>Holder Name</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Relation Description</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Relation Code</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                      <tr>
                          <td colspan="2">
                              <strong>
                                  Investment Details
                              </strong>
                          </td>
                      </tr>
                <tr>
                    <td>Tax Code</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Policy Description</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Investment Date</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Policy/Account/Certificate No</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Sum/Value</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Premium</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Installment</td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Maturity</td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            
                <tr>
                    <td>Creation Date</td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Update Date</td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                      <tr>
                          <td colspan="2">
                              <strong>
                                  Payment Details
                              </strong>
                          </td>
                      </tr>
                <tr>
                    <td>Payment Receipt</td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Payment Amount</td>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Payment Date</td>
                    <td>
                        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Payment Transaction Number</td>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                    <tr>
                    <td>Payment Type</td>
                    <td>
                        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Payment Remarks</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>


                    <tr>
                    <td>Payment Status</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Pending</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                    <tr>
                    <td>Request Status</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Active</asp:ListItem>
                            <asp:ListItem>Deactive</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                      <tr>
                          <td colspan="2">
                              <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Back" OnClick="Button1_Click"/>
                          </td>
                      </tr>
            </table>          
            </div>
      
        </div>
      </div>
    <!--/span-->

</div>
          </form>

</asp:Content>

