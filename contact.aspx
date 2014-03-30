<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />


    <div id="main">
    <h3> Contact Our Website </h3>


        <br />


    <p> Phone: 555-555-5555 </p>
       <p> Email: Nba@nba.com</p>


        <br />
    <p> Email:</p>
    <p> 
        <asp:TextBox ID="EmailTB" runat="server" Width="255px"></asp:TextBox>
    </p>
    <p> Message:</p>
    <p> 
        <asp:TextBox ID="MessageTB" runat="server" Height="90px" Width="253px"></asp:TextBox>
    </p>
        <p> 
            <asp:Button ID="Button1" runat="server" Text="Send " Width="92px" />
    </p>
        <p> 
            <asp:Label ID="confirmSent" runat="server"></asp:Label>
    </p>


    </div>

</asp:Content>

