<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="relation.aspx.cs" Inherits="Admin_relation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="relation.aspx">Relation</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Relation Details</h2>

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
                        <label for="exampleInputEmail1">Relation Code</label>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Relation Code"></asp:TextBox>
                        
                    </div>
                  
                 <div class="form-group">
                        <label for="exampleInputEmail1">Relation Description</label>
               <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Description of Relation"></asp:TextBox>
                
                     <div class="form-group">
                        <label for="exampleInputEmail1">Relation Status</label>
                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                         <asp:ListItem>Active</asp:ListItem>
                         <asp:ListItem>Deactive</asp:ListItem>
                        </asp:DropDownList>
                    </div>        
                    </div>
                 <asp:Button ID="Button1" runat="server" Text="+Save" class="btn btn-default" OnClick="Button1_Click" />
                    
                 <asp:Button ID="Button2" runat="server" Text="Edit Relation" class="btn btn-default" OnClick="Button2_Click"/>
               <br />
                <br />

               

        <asp:Panel ID="Panel1" runat="server">

             <asp:DataGrid ID="relation" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="rel_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" 
                      >
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="rel_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="rel_code" HeaderText="Relation Code" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                 <asp:BoundColumn DataField="rel_desc" HeaderText="Relation Description" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
               
                <asp:BoundColumn DataField="rel_status" HeaderText="Relation Status" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="c_date" HeaderText="Create Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="u_date" HeaderText="Update Date" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                  <asp:TemplateColumn HeaderStyle-BackColor="Black">
                    <HeaderTemplate >
                        <asp:Label ID="Label2" runat="server" Text="Action" ForeColor="White" ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                         <a  style="background-color:#033c73" class="btn btn-info" href="relation.aspx?id=<%#Eval("rel_id") %>&state=Edit">
																	Edit
																</a>

                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a  style="background-color:Red" class="btn btn-danger" href="relation.aspx?id=<%# Eval("rel_id")%>&state=Delete" onClick="return confirm('Are You Sure Want to Delete..??');">
																	Remove
																</a>
                    </ItemTemplate>
                    </asp:TemplateColumn>
              
            </Columns>

        </asp:DataGrid>

        </asp:Panel>
            </div>


            
        </div>

        
    </div>
    <!--/span-->

</div>
          </form>

</asp:Content>

