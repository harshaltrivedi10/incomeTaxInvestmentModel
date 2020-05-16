<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="investments.aspx.cs" Inherits="Admin_investments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="investments.aspx">Investments</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Investment Details</h2>

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
                <table>
                    <tr>
               <td> <asp:TextBox ID="TextBox1" class="form-control"  Width="300px" placeholder=" Enter Name / Account|Certificate|Policy No / Policy" runat="server"></asp:TextBox> 
                   </td>
                        <td>
                <asp:Button ID="Button1" Text="Search" class="btn btn-default" runat="server" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
            </div>
            <asp:Panel ID="Panel1" runat="server">
            <asp:DataGrid ID="investments" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="inv_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static; font-size:9px" Width="100%" PageSize="2" OnPageIndexChanged="investments_pageIndexChanged">
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

                <asp:BoundColumn DataField="e_id" HeaderText="Employee ID" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="e_name" HeaderText="Employee" 
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

             
                 

                  <asp:TemplateColumn HeaderStyle-BackColor="Black" ItemStyle-Width="150px">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>

                        <a class="btn btn-success" href="investment_detailed.aspx?id=<%#Eval("inv_id") %>">
                    <i class="glyphicon glyphicon-zoom-in icon-white"></i></a>
                    <a class="btn btn-danger" href="investments.aspx?id=<%# Eval("inv_id")%>&state=Delete" onClick="return confirm('Are You Sure Want to Delete..??');">
																	<i class="glyphicon glyphicon-trash icon-white"></i></a>
                    </ItemTemplate>
                    </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
                </asp:Panel>                
            </div>
      <asp:Label ID="Label1" runat="server" class="form-control" Text="Amount: "></asp:Label>
        </div>
      </div>
    <!--/span-->

</div>
          </form>

</asp:Content>

