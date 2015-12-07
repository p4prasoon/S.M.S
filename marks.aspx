 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Marks.aspx.cs" Inherits="Default3" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 597px;
            text-align: right;
        }
        .style3
        {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        &nbsp;<table class="style1">
            <tr>
                <td class="style2">
&nbsp;&nbsp; Select Subject:&nbsp;&nbsp;&nbsp;</td>
                <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="English">English</asp:ListItem>
            <asp:ListItem Value="Maths">Maths</asp:ListItem>
            <asp:ListItem Value="Hindi">Hindi/Bengali</asp:ListItem>
            <asp:ListItem Value="Science">Science</asp:ListItem>
            <asp:ListItem Value="Social">Social Science</asp:ListItem>
            <asp:ListItem Value="Computer">Computer</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;Enter Registration Number:&nbsp;&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            DataSourceID="SqlDataSource1" ForeColor="Black" CssClass="style3">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="clas" HeaderText="clas" SortExpression="clas" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
            SelectCommand="SELECT [name], [clas] FROM [Admission] WHERE ([FormNo] = @FormNo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="FormNo" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;Enter the marks:</td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                        BorderStyle="Outset" />
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
            
    </div>
    </form>
</body>
</html>
