<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.master" AutoEventWireup="true" CodeFile="holder.aspx.cs" Inherits="Client_holder_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="Form1" role="form" runat="server">
    <div>
    <ul class="breadcrumb">
        <li>
            <a href="index.aspx">Dashboard</a>
        </li>
        <li>
            
        <a href="holder<asp:RequiredFieldValidator runat=" requiredfieldvalidator="" server="">Holder</a>
        </li>
    </ul>
</div>
    <div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i>Holder Details</h2>

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
                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        
                        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select a relation code!" ControlToValidate="DropDownList2" ForeColor="Red" ValidationGroup="xone"></asp:RequiredFieldValidator>
                    </div>
                  
                 <div class="form-group">
                        <label for="exampleInputEmail1">Relation Description</label>
                     <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                         
                        </asp:DropDownList>
                    </div>
                <div class="form-group">
                       <label for="exampleInputEmail1">Holder Name</label>
                       <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Holder name" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the name of your holder! Ex. John Smith" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="xone"></asp:RequiredFieldValidator>
                    </div>
                <div class="form-group">
                        <label for="exampleInputEmail1">Holder Status</label>
                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                         <asp:ListItem>Active</asp:ListItem>
                         <asp:ListItem>Deactive</asp:ListItem>
                         
                        </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please select status of the holder!" ControlToValidate="DropDownList1" ForeColor="Red" ValidationGroup="xone"></asp:RequiredFieldValidator>
                    </div> 
                 <asp:Button ID="Button1" runat="server" Text="+Save" class="btn btn-default" OnClick="Button1_Click" ValidationGroup="xone"  />
                    
                 <asp:Button ID="Button2" runat="server" Text="Edit" class="btn btn-default" OnClick="Button2_Click" />
               <br />
                <br />

               

       <asp:Panel ID="Panel1" runat="server">

            <asp:DataGrid ID="holder" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" CssClass="table table-striped table-bordered table-hover"
            DataKeyField="h_id" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
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
                <asp:BoundColumn DataField="h_id" HeaderText="ID" 
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

                <asp:BoundColumn DataField="h_name" HeaderText="Holder Name" 
                    ItemStyle-HorizontalAlign="Left" SortExpression="title asc" HeaderStyle-BackColor="Black">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundColumn>
                
                <asp:BoundColumn DataField="h_status" HeaderText="Holder Status" 
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
                    
                         <a  style="background-color:#033c73" class="btn btn-info"  href="holder.aspx?id=<%#Eval("h_id") %>&state=Edit">
																	<i class="glyphicon glyphicon-edit icon-white"></i>
																</a>

                        <a  style="background-color:Red" class="btn btn-danger" href="holder.aspx?id=<%# Eval("h_id")%>&state=Delete" onClick="return confirm('Are You Sure Want to Delete..??');">
																<i class="glyphicon glyphicon-trash icon-white"></i>
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

