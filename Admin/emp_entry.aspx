<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="emp_entry.aspx.cs" Inherits="Admin_emp_entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="emp_entry.aspx">Policy</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Employee Detail Entry</h2>

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
                        <label for="exampleInputEmail1">Employee Name</label>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Employee Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="***" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Only Characters" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-zA-Z  ]*$" ValidationGroup="a1"></asp:RegularExpressionValidator>
                    </div>
                  
                 <div class="form-group">
                        <label for="exampleInputEmail1">Employee Pan number</label>
                     <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Employee Pan number"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="***" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                     
                    </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Employee Code</label>
               <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Employee Code"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="***" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Field Accepts Up to 2 Digit." ForeColor="Red" ValidationExpression="\d{1,2}" ValidationGroup="a1"></asp:RegularExpressionValidator>
                        
                    </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Employee Bank Account Number</label>
               <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter Employee Bank Account Number"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="***" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Your Bank Account  Number" ForeColor="Red" ValidationExpression="^[0-9]*$" ValidationGroup="a1"></asp:RegularExpressionValidator>
                              
                    </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Employee Email Address</label>
               <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Enter Employee Email Address"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="***" ControlToValidate="TextBox5" ForeColor="Red" ValidationGroup="a1"></asp:RequiredFieldValidator>
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Ex.John@gmail.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a1"></asp:RegularExpressionValidator>

                    </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Employee Date of Birth</label>
               <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Enter Employee Date of Birth" Height="50px" TextMode="Date"></asp:TextBox>
                        
                    </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Employee Display Picture</label>
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="50px" Width="50px" />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                       
                    </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Employee Aadhar number</label>
               <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Enter Employee Aadhar number"></asp:TextBox>
                        
                    </div>
                 <div class="form-group">
                        <label for="exampleInputEmail1">Employee Status</label>
                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                         <asp:ListItem>Active</asp:ListItem>
                         <asp:ListItem>Deactive</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                 <div class="form-group">
                        <label for="exampleInputEmail1">Employee Contact number</label>
               <asp:TextBox ID="TextBox10" runat="server" class="form-control" placeholder="Enter Employee Contact number"></asp:TextBox>
                      </div>
                 <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-default" OnClick="Button2_Click" ValidationGroup="a1" />
                <asp:Button ID="Button3" runat="server" Text="Edit" class="btn btn-default" OnClick="Button3_Click"/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ValidationGroup="a1" />
                    <asp:HiddenField ID="HiddenField1" runat="server" />
               
            </div>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>

            
        </div>

        
    </div>
    <!--/span-->

</div>
          </form>
</asp:Content>
