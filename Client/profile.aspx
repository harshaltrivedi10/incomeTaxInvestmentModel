<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="profile.aspx">Profile</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Employee Profile</h2>

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

                <div class="row">
        <div class="col-md-4">
            <div>
                <h5><i class=" glyphicon glyphicon-user"></i> Employee Image </h5>
                <asp:Image ID="Image1" runat="server" Height="250px" width="250px"/><br /><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:HiddenField ID="HiddenField1" runat="server" />
            </div>
            <br>
 </div>
        <div class="col-md-4">
            <div class="well">
                <ul class="nav nav-list">
                    <li>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Employee Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Employee Name"></asp:TextBox>
                        
                        </div> 

                    </li>
                    <li>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Employee Pan number</label>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Employee Pan number"></asp:TextBox>
                        </div>
                    </li>
                    <li>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Employee Code</label>
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Employee Code"></asp:TextBox>
                        
                        </div>

                    </li>
                    <li>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Employee Bank Account Number</label>
                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter Employee Bank Account Number"></asp:TextBox>
                        
                        </div>

                    </li>
                </ul>
            </div>
            <!-- /well -->
        </div>
        <div class="col-md-4">
            <div class="well">
                <ul class="nav nav-list">
                    <li>
                       
                        <div class="form-group">
                        <label for="exampleInputEmail1">Employee Email Address</label>
                        <asp:TextBox ID="TextBox5" runat="server" readonly="true" class="form-control" placeholder="Enter Employee Email Address"></asp:TextBox>
                        </div>  
                    </li>
                    <li>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Employee Date of Birth</label>
                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Enter Employee Date of Birth" Height="50px" TextMode="Date"></asp:TextBox>
                        </div>
                    </li>
                    <li>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Employee Aadhar number</label>
                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" readonly="true" placeholder="Enter Employee Aadhar number" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                        </div>
                    </li>
                    <li>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Employee Contact number</label>
                        <asp:TextBox ID="TextBox10" runat="server" class="form-control" placeholder="Enter Employee Contact number"></asp:TextBox>
                        </div>
                    </li>
                </ul>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-default" OnClick="Button1_Click" />
            <!-- /well -->
        </div>
    </div>

               
            </div>


            
        </div>

        
    </div>
    <!--/span-->

</div>
          </form>
    


    

</asp:Content>

