<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="employee_list.aspx.cs" Inherits="Admin_employee_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="employee_list.aspx">Employee</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Employee Details</h2>

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
 
                 <asp:Button ID="Button1" runat="server" Text="Add new" class="btn btn-default" OnClick="Button1_Click" />
                    
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

                  <asp:TemplateColumn HeaderStyle-BackColor="Black" ItemStyle-Width="120px">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                     <a   class="btn btn-info" href="emp_entry.aspx?id=<%#Eval("e_id") %>&state=Edit"><i class="glyphicon glyphicon-edit icon-white"></i></a>

                        <a class="btn btn-danger" href="employee_list.aspx?id=<%# Eval("e_id")%>&state=Delete" onClick="return confirm('Are You Sure Want to Delete..??');">
																	<i class="glyphicon glyphicon-trash icon-white"></i></a>
                    </ItemTemplate>
                    </asp:TemplateColumn>
              
            </Columns>

        </asp:DataGrid>

                </asp:Panel>
                
                
            </div>


            
        </div>

        
    </div>
    <!--/span-->
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

</div>
          </form>


    

</asp:Content>

