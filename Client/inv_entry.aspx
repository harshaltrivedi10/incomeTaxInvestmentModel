<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="inv_entry.aspx.cs" Inherits="Client_inv_entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="inv_entry.aspx">Investment Entry</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Investment Entry</h2>

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
               
              
                <div class="form-group">
                        <label for="exampleInputEmail1">Tax Code</label>
                        <asp:TextBox ID="TextBox1" class="form-control"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="****Enter the tax code" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="xthree"></asp:RequiredFieldValidator>
                </div>
                
                <div class="form-group">
                        <label for="exampleInputEmail1">Investment / Policy Type</label>
                        <asp:DropDownList ID="DropDownList1" class="form-control"  runat="server">
                            
                   
                        </asp:DropDownList> 

                </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Date</label>
                        <asp:TextBox ID="TextBox2" class="form-control"  runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="****Enter the date of creation" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="xthree"></asp:RequiredFieldValidator>
                </div>

                 <div class="form-group">
                        <label for="exampleInputEmail1">Policy No / Acc No / Certi No</label>
                        <asp:TextBox ID="TextBox3" class="form-control"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="****Enter valid Policy Account or Certificate Number" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="xthree"></asp:RequiredFieldValidator>
                 </div>
                    
                <div class="form-group">
                        <label for="exampleInputEmail1">Sum Assured / Value of Certificate</label>
                        <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="****Enter the investment's Valuation" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="xthree"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Maturity Date</label> 
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="Date" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="****Enter the maturity date of the investment" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="xthree"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Premium / Amount / Face Value</label>
                        <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="**** Please enter the premium/face amount" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="xthree"></asp:RequiredFieldValidator>
                </div>

               <div class="form-group">
                        <label for="exampleInputEmail1">Holder Name</label>
                        <asp:DropDownList ID="DropDownList2" class="form-control"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                           

                        </asp:DropDownList> 
                
                </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Relation with holder</label>
                                <asp:DropDownList ID="DropDownList3" class="form-control"  runat="server" AutoPostBack="True">
                            
                            
                   
                        </asp:DropDownList> 
                        
                </div>
                    
                    <div class="form-group">
                        <label for="exampleInputEmail1">Installment Type</label>
                     <asp:DropDownList ID="DropDownList5" runat="server" class="form-control">
                         <asp:ListItem>Monthly</asp:ListItem>
                         <asp:ListItem>Quarterly</asp:ListItem>
                         <asp:ListItem>Half-yearly</asp:ListItem>
                         <asp:ListItem>Yearly</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="****How frequently do you pay your premiums?" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="xthree"></asp:RequiredFieldValidator>
                    </div>
                 
                    <div class="form-group">
                        <label for="exampleInputEmail1">Payment Status</label>
                     <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                         <asp:ListItem>Active</asp:ListItem>
                         <asp:ListItem>Deactive</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="****Enter the status of your payment" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="xthree"></asp:RequiredFieldValidator>
                    </div>
                 <asp:Button ID="Button1" runat="server" Text="+Save" class="btn btn-default" OnClick="Button1_Click" ValidationGroup="xthree"/>
                 <asp:Button ID="Button2" runat="server" Text="Edit" class="btn btn-default" OnClick="Button2_Click" Visible="false" ValidationGroup="xthree"/>
                <br />
                <br />

            </div>


            
        </div>

        
    </div>
    <!--/span-->

</div>
          </form>

</asp:Content>

