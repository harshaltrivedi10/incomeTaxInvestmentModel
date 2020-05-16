<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="payment_add.aspx.cs" Inherits="Client_payment_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="payment_add.aspx">Payment Entry</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Payment Entry</h2>

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
               <asp:Panel ID="Panel1" runat="server">
                    <table class="nav-justified table table-striped table-bordered bootstrap-datatable datatable responsive">
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
                    <td>Policy/Account/Certi No</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
           </table>
                   </asp:Panel>
            </div>
                <div class="form-group">
                        <label for="exampleInputEmail1">Payment Date</label>
                        <asp:TextBox ID="TextBox1" class="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**Please select the date on which you made the payment" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="xtwo"></asp:RequiredFieldValidator>
                </div>
                
                

                <div class="form-group">
                        <label for="exampleInputEmail1">Payment Amount</label>
                        <asp:TextBox ID="TextBox2" class="form-control"  runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**How much premium did you pay" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="xtwo"></asp:RequiredFieldValidator>
                </div>

                 <div class="form-group">
                        <label for="exampleInputEmail1">Receipt No</label>
                        <asp:TextBox ID="TextBox3" class="form-control"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="** Enter the receipt no of your payment" ForeColor="Red" ValidationGroup="xtwo"></asp:RequiredFieldValidator>
                 </div>
                    
                <div class="form-group">
                        <label for="exampleInputEmail1">Transaction Number</label>
                        <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="** Which transaction is this? Ex. 1" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="xtwo"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Payment Type</label>
                        <asp:DropDownList ID="DropDownList1" class="form-control"  runat="server">
                        <asp:ListItem>Current</asp:ListItem>
                        <asp:ListItem>Post-Dated</asp:ListItem>   
                        </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="**Please select the type of payment you performed" ControlToValidate="DropDownList1" ForeColor="Red" ValidationGroup="xtwo"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="Button1" runat="server" Text="+Save" class="btn btn-default" OnClick="Button1_Click" ValidationGroup="xtwo" />
                <asp:Button ID="Button2" runat="server" Text="Edit" Visible="false" class="btn btn-default" OnClick="Button2_Click" ValidationGroup="xtwo" />
                <br />
                <br />

            </div>


            
        </div>

        
    </div>
    <!--/span-->

</div>
          </form>

</asp:Content>

