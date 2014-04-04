<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="add.aspx.vb" Inherits="Admin_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Teams %>" DeleteCommand="DELETE FROM [Teams] WHERE [tID] = @tID" InsertCommand="INSERT INTO [Teams] ([tName], [tLocation], [tWin], [tLoss], [tFieldGoal], [t3Point], [tReb], [tAst], [tPoints]) VALUES (@tName, @tLocation, @tWin, @tLoss, @tFieldGoal, @t3Point, @tReb, @tAst, @tPoints)" SelectCommand="SELECT * FROM [Teams]" UpdateCommand="UPDATE [Teams] SET [tName] = @tName, [tLocation] = @tLocation, [tWin] = @tWin, [tLoss] = @tLoss, [tFieldGoal] = @tFieldGoal, [t3Point] = @t3Point, [tReb] = @tReb, [tAst] = @tAst, [tPoints] = @tPoints WHERE [tID] = @tID">
            <DeleteParameters>
                <asp:Parameter Name="tID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tName" Type="String" />
                <asp:Parameter Name="tLocation" Type="String" />
                <asp:Parameter Name="tWin" Type="Int32" />
                <asp:Parameter Name="tLoss" Type="Int32" />
                <asp:Parameter Name="tFieldGoal" Type="Int32" />
                <asp:Parameter Name="t3Point" Type="Int32" />
                <asp:Parameter Name="tReb" Type="Int32" />
                <asp:Parameter Name="tAst" Type="Int32" />
                <asp:Parameter Name="tPoints" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tName" Type="String" />
                <asp:Parameter Name="tLocation" Type="String" />
                <asp:Parameter Name="tWin" Type="Int32" />
                <asp:Parameter Name="tLoss" Type="Int32" />
                <asp:Parameter Name="tFieldGoal" Type="Int32" />
                <asp:Parameter Name="t3Point" Type="Int32" />
                <asp:Parameter Name="tReb" Type="Int32" />
                <asp:Parameter Name="tAst" Type="Int32" />
                <asp:Parameter Name="tPoints" Type="Int32" />
                <asp:Parameter Name="tID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="tID" DataSourceID="SqlDataSource1" Height="50px" Width="197px">
            <Fields>
                <asp:BoundField DataField="tName" HeaderText="Team Name" SortExpression="tName" />
                <asp:BoundField DataField="tLocation" HeaderText="Location" SortExpression="tLocation" />
                <asp:BoundField DataField="tWin" HeaderText="Wins" SortExpression="tWin" />
                <asp:BoundField DataField="tLoss" HeaderText="Losses" SortExpression="tLoss" />
                <asp:BoundField DataField="tFieldGoal" HeaderText="FG %" SortExpression="tFieldGoal" />
                <asp:BoundField DataField="t3Point" HeaderText="3 Point %" SortExpression="t3Point" />
                <asp:BoundField DataField="tReb" HeaderText="Rebounds" SortExpression="tReb" />
                <asp:BoundField DataField="tAst" HeaderText="Assists" SortExpression="tAst" />
                <asp:BoundField DataField="tPoints" HeaderText="Points" SortExpression="tPoints" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

</asp:Content>

