<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update Marks.aspx.cs" Inherits="Table1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            margin-left: 160px;
        }
        .style2
        {}
        .style3
        {
            font-weight: 700;
        }
        .style4
        {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        Select Class:&nbsp;
                <strong class="style3"> 
        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="191px" 
            CssClass="style2">
            <asp:ListItem>Select Class</asp:ListItem>
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
       
        <br />
       
        </strong>
        <br />
        Select Section:
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            CssClass="style4" Height="40px" Width="175px">
            <asp:ListItem>A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>D</asp:ListItem>
        </asp:DropDownList>
        <br />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="FormNo" DataSourceID="SqlDataSource1" 
        GridLines="Horizontal" ShowFooter="True">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="FormNo" HeaderText="FormNo" InsertVisible="False" 
                ReadOnly="True" SortExpression="FormNo" />
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
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" 
        DeleteCommand="DELETE FROM [Admission] WHERE [FormNo] = @FormNo" 
        InsertCommand="INSERT INTO [Admission] ([clas], [name], [English], [Maths], [HindiBengali], [Science], [SocialScience], [Computer]) VALUES (@clas, @name, @English, @Maths, @HindiBengali, @Science, @SocialScience, @Computer)" 
        SelectCommand="SELECT [FormNo], [clas], [name], [English], [Maths], [HindiBengali], [Science], [SocialScience], [Computer] FROM [Admission] WHERE ([clas] = @clas)" 
        UpdateCommand="UPDATE [Admission] SET [clas] = @clas, [name] = @name, [English] = @English, [Maths] = @Maths, [HindiBengali] = @HindiBengali, [Science] = @Science, [SocialScience] = @SocialScience, [Computer] = @Computer WHERE [FormNo] = @FormNo">
        <DeleteParameters>
            <asp:Parameter Name="FormNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="clas" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="English" Type="Int32" />
            <asp:Parameter Name="Maths" Type="Int32" />
            <asp:Parameter Name="HindiBengali" Type="String" />
            <asp:Parameter Name="Science" Type="String" />
            <asp:Parameter Name="SocialScience" Type="String" />
            <asp:Parameter Name="Computer" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="clas" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="clas" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="English" Type="Int32" />
            <asp:Parameter Name="Maths" Type="Int32" />
            <asp:Parameter Name="HindiBengali" Type="String" />
            <asp:Parameter Name="Science" Type="String" />
            <asp:Parameter Name="SocialScience" Type="String" />
            <asp:Parameter Name="Computer" Type="String" />
            <asp:Parameter Name="FormNo" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
