<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="policy.aspx.cs" Inherits="Admin_policy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            <a href="policy.aspx">Policy</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Policy Details</h2>

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
                        <label for="exampleInputEmail1">Policy Title</label>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Policy Title"></asp:TextBox>
                        
                    </div>
                  
                 <div class="form-group">
                        <label for="exampleInputEmail1">Policy Head Limit</label>
               <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Policy Head Limit"></asp:TextBox>
                        
                    </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Policy Section</label>
               <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Policy Section"></asp:TextBox>
                        
                    </div>

                <div class="form-group">
                        <label for="exampleInputEmail1">Policy Status</label>
                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                         <asp:ListItem>Active</asp:ListItem>
                         <asp:ListItem>Deactive</asp:ListItem>
                        </asp:DropDownList>
                    </div> 
                 <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-default" OnClick="Button1_Click" />
                    
                 <asp:Button ID="Button2" runat="server" Text="Edit" class="btn btn-default" OnClick="Button2_Click"/>
               <br />
                <br />

               

        <asp:Panel ID="Panel1" runat="server">

             <asp:DataGrid ID="policy" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="p_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ShowFooter="True" 
            Style="position: static" Width="100%" PageSize="7" OnPageIndexChanged="policy_pageIndexChanged" >
            <FooterStyle BackColor="Beige" CssClass="blk2" ForeColor="#8C4510" 
                Height="20px" />
            <PagerStyle CssClass="pagelist" ForeColor="#8C4510" HorizontalAlign="Center" 
                Mode="NumericPages"/>
            <HeaderStyle BackColor="Black" CssClass="datagrid blk2" Font-Bold="True" 
                ForeColor="White" Height="20px"  />
                
            <Columns>
                <asp:BoundColumn DataField="p_id" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="p_title" HeaderText="Policy Title" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                 <asp:BoundColumn DataField="p_head_limit" HeaderText="Policy Head Limit" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                <asp:BoundColumn DataField="p_section" HeaderText="Section" 
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="100px" 
                    SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>

                <asp:BoundColumn DataField="p_status" HeaderText="Policy Status" 
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
                    
                         <a  style="background-color:#033c73" class="btn btn-info" href="policy.aspx?id=<%#Eval("p_id") %>&state=Edit">
																	Edit
																</a>
                        <br /><br />
                        <a  style="background-color:Red" class="btn btn-danger" href="policy.aspx?id=<%# Eval("p_id")%>&state=Delete" onClick="return confirm('Are You Sure Want to Delete..??');">
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

