<%@ Page Language="C#" AutoEventWireup="true" CodeFile="investment_report.aspx.cs" Inherits="Admin_investment_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Investment Report</title>
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
        Investment Report
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
            <asp:DataGrid ID="investments" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="inv_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static; font-size:9px" Width="100%">
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="inv_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="e_name" HeaderText="Employee Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="h_name" HeaderText="Holder Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                 <asp:BoundColumn DataField="rel_desc" HeaderText="Relation" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="i_date" HeaderText="Investment Creation Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>


                <asp:BoundColumn DataField="i_pol_acc_certi" HeaderText="Policy/Account/Certificate No" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="i_sum_value" HeaderText="Sum / Value" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="p_title" HeaderText="Policy Description" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>


                <asp:BoundColumn DataField="c_date" HeaderText="Create Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="i_status" HeaderText="Status" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

            </Columns>
        </asp:DataGrid>
                </asp:Panel>
                
                
            </div>

    </div>
    </form>
    
</body>
</html>
