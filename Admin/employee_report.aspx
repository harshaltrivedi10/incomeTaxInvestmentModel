<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_report.aspx.cs" Inherits="Admin_employee_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Report</title>
<style type="text/css">
    @media print
    {
         .noprint {display:none !important;}
         .noshow {display:block !important;}
         
    }
   
    .style1
    {
        width: 100%;
    }
   

        .style4
        {
            color: #0000FF;
            text-align: center;
        }
   

    </style>
  
</head>
<body>
    <h1>
        <center>
        IncomeTax Investment Model
        </center>
    </h1>

    <h2 color="red">
        <center>
        Employee Report
        </center>
    </h2>
    <form id="form1" runat="server">
    <div class="noprint">
        <br />
        <asp:TextBox ID="TextBox1" placeholder="---" runat="server"></asp:TextBox>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" TextMode="Date" runat="server"></asp:TextBox>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
        <div align="right">
            <asp:Label ID="Label1" runat="server" Text="Label">Date:</asp:Label>
            <asp:Label align="left" ID="Label2" runat="server" Text=""></asp:Label>
        </div>

        <div class="box-content" class="noprint">
            <asp:Button ID="Button1" runat="server" Text="Refresh" class="btn btn-default" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Search" class="btn btn-default" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Print"  class="btn btn-primary btn-lg"  OnClientClick="javascript:window.print();"/>
            <asp:Button ID="Button4" runat="server" Text="Back" class="btn btn-default" OnClick="Button4_Click"/>
              
        </div>
        </div>
        <div>
                <br />
                <br />
                <asp:Panel ID="Panel1" runat="server">

                    <asp:DataGrid ID="employee" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="e_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static; font-size:9px" Width="100%">
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="e_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="e_name" HeaderText="Employee Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                 <asp:BoundColumn DataField="e_pan" HeaderText="Employee Pan no" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="e_acc_no" HeaderText="Employee Bank Acc no" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="e_mail" HeaderText="Employee Email Add" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="e_aadhar" HeaderText="Employee Aadhar no" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                <asp:BoundColumn DataField="c_date" HeaderText="Create Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="e_status" HeaderText="Employee Status" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="e_contact" HeaderText="Employee Contact no" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>


                <asp:BoundColumn DataField="u_date" HeaderText="Update Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                 <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Image" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                      <img src='../upload/<%#Eval("e_image") %>' width="50px" height="50px" />
                    </ItemTemplate>
                    </asp:TemplateColumn>

              
            </Columns>

        </asp:DataGrid>

                </asp:Panel>
                
                
            </div>

    </div>
    </form>
    
</body>
</html>
