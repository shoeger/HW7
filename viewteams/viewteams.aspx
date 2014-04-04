<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewteams.aspx.vb" Inherits="Customer_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Teams %>" SelectCommand="SELECT * FROM [Teams]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="tID" DataSourceID="SqlDataSource1" Width="875px">
            <Columns>
                <asp:BoundField DataField="tName" HeaderText="Team Name" SortExpression="tName" />
                <asp:BoundField DataField="tLocation" HeaderText="Location" SortExpression="tLocation" />
                <asp:BoundField DataField="tWin" HeaderText="Wins" SortExpression="tWin" />
                <asp:BoundField DataField="tLoss" HeaderText="Losses" SortExpression="tLoss" />
                <asp:BoundField DataField="tFieldGoal" HeaderText="FG %" SortExpression="tFieldGoal" />
                <asp:BoundField DataField="t3Point" HeaderText="3 Point %" SortExpression="t3Point" />
                <asp:BoundField DataField="tReb" HeaderText="Rebounds" SortExpression="tReb" />
                <asp:BoundField DataField="tAst" HeaderText="Assists" SortExpression="tAst" />
                <asp:BoundField DataField="tPoints" HeaderText="Points" SortExpression="tPoints" />
            </Columns>
        </asp:GridView>

</asp:Content>

