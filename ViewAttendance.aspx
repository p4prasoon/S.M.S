<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAttendance.aspx.cs" Inherits="ViewAttendance" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Enter Registration Number:
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Show" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="clas" HeaderText="clas" SortExpression="clas" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="JanA" HeaderText="JanA" SortExpression="JanA" />
            <asp:BoundField DataField="FebA" HeaderText="FebA" SortExpression="FebA" />
            <asp:BoundField DataField="MarA" HeaderText="MarA" SortExpression="MarA" />
            <asp:BoundField DataField="AprA" HeaderText="AprA" SortExpression="AprA" />
            <asp:BoundField DataField="MayA" HeaderText="MayA" SortExpression="MayA" />
            <asp:BoundField DataField="JunA" HeaderText="JunA" SortExpression="JunA" />
            <asp:BoundField DataField="JulA" HeaderText="JulA" SortExpression="JulA" />
            <asp:BoundField DataField="AugA" HeaderText="AugA" SortExpression="AugA" />
            <asp:BoundField DataField="SeptA" HeaderText="SeptA" SortExpression="SeptA" />
            <asp:BoundField DataField="OctA" HeaderText="OctA" SortExpression="OctA" />
            <asp:BoundField DataField="NovA" HeaderText="NovA" SortExpression="NovA" />
            <asp:BoundField DataField="DecA" HeaderText="DecA" SortExpression="DecA" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
        SelectCommand="SELECT [clas], [name], [JanA], [FebA], [MarA], [AprA], [MayA], [JunA], [JulA], [AugA], [SeptA], [OctA], [NovA], [DecA] FROM [Admission] WHERE ([FormNo] = @FormNo)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="FormNo" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
