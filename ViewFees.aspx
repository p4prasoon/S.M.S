<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewFees.aspx.cs" Inherits="ViewFees" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Enter Registration No:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Show" onclick="Button1_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="clas" HeaderText="clas" SortExpression="clas" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="January" HeaderText="January" 
                    SortExpression="January" />
                <asp:BoundField DataField="February" HeaderText="February" 
                    SortExpression="February" />
                <asp:BoundField DataField="March" HeaderText="March" SortExpression="March" />
                <asp:BoundField DataField="April" HeaderText="April" SortExpression="April" />
                <asp:BoundField DataField="May" HeaderText="May" SortExpression="May" />
                <asp:BoundField DataField="June" HeaderText="June" SortExpression="June" />
                <asp:BoundField DataField="July" HeaderText="July" SortExpression="July" />
                <asp:BoundField DataField="August" HeaderText="August" 
                    SortExpression="August" />
                <asp:BoundField DataField="September" HeaderText="September" 
                    SortExpression="September" />
                <asp:BoundField DataField="October" HeaderText="October" 
                    SortExpression="October" />
                <asp:BoundField DataField="November" HeaderText="November" 
                    SortExpression="November" />
                <asp:BoundField DataField="December" HeaderText="December" 
                    SortExpression="December" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
            SelectCommand="SELECT [clas], [name], [January], [February], [March], [April], [May], [June], [July], [August], [September], [October], [November], [December] FROM [Admission] WHERE ([FormNo] = @FormNo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="FormNo" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </form>
</body>
</html>
