<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select a group
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="PersonEntityEDS" DataTextField="Group" >
            </asp:DropDownList>
            <asp:EntityDataSource ID="PersonEntityEDS" runat="server"
                ConnectionString="name=DatabaseEntities" DefaultContainerName="DatabaseEntities" EnableFlattening="true"
                EntitySetName="Person" Select="DISTINCT it.[Group]">
            </asp:EntityDataSource>
            <br />
            People:<br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EntityDataSource1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Group" HeaderText="Group" SortExpression="Group" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DatabaseEntities" DefaultContainerName="DatabaseEntities" 
                EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Person"
                Where="it.[Group] == @GroupParameter" OrderBy="it.[FirstName]">
                <WhereParameters>
                    <asp:ControlParameter Name="GroupParameter" ControlID="DropDownList1" DbType="String" DefaultValue="NULL" />
                </WhereParameters>
            </asp:EntityDataSource>
        </div>
    </form>
</body>
</html>
