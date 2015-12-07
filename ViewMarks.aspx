<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewMarks.aspx.cs" Inherits="ViewMarks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            margin-left: 560px;
        }
        .style1
        {
            margin-left: 440px;
        }
    </style>
</head>
<body>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
    <p class="style1">
        Enter Registration No:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p class="style2">
        <asp:Button ID="Button1" runat="server" Text="Show" />
    </p>
    <p class="style2">
        &nbsp;</p>
    <p class="style2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="clas" HeaderText="clas" SortExpression="clas" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="English" HeaderText="English" 
                    SortExpression="English" />
                <asp:BoundField DataField="Maths" HeaderText="Maths" SortExpression="Maths" />
                <asp:BoundField DataField="HindiBengali" HeaderText="HindiBengali" 
                    SortExpression="HindiBengali" />
                <asp:BoundField DataField="Science" HeaderText="Science" 
                    SortExpression="Science" />
                <asp:BoundField DataField="SocialScience" HeaderText="SocialScience" 
                    SortExpression="SocialScience" />
                <asp:BoundField DataField="Computer" HeaderText="Computer" 
                    SortExpression="Computer" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
            SelectCommand="SELECT [clas], [name], [English], [Maths], [HindiBengali], [Science], [SocialScience], [Computer] FROM [Admission] WHERE ([FormNo] = @FormNo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="FormNo" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <div>
    
    </div>
    </form>
</body>
</html>
