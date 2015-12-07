<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Low Marks.aspx.cs" Inherits="Low_Marks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 100%;
            margin-left: 0px;
        }
        .style3
        {
            width: 451px;
            text-align: right;
        }
        .style4
        {
            width: 280px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table class="style2">
        <tr>
            <td class="style3">
        Select Class:&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style4">
                <strong> 
        <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="180px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>
       
        </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
        Select Subject:&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style4">
        <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
            <asp:ListItem Value="English">English</asp:ListItem>
            <asp:ListItem Value="Maths">Maths</asp:ListItem>
            <asp:ListItem Value="Hindi">Hindi/Bengali</asp:ListItem>
            <asp:ListItem Value="Science">Science</asp:ListItem>
            <asp:ListItem Value="Social">Social Science</asp:ListItem>
            <asp:ListItem Value="Computer">Computer</asp:ListItem>
        </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Marks between :&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="FormNo" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="FormNo" HeaderText="FormNo" InsertVisible="False" 
                            ReadOnly="True" SortExpression="FormNo" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="English" HeaderText="English" 
                            SortExpression="English" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
                    
                    SelectCommand="SELECT [FormNo], [name], [English] FROM [Admission] WHERE (([clas] = @clas) AND ([English] &gt;= @English) AND ([English] &lt;= @English2))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="clas" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="English" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="English2" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
