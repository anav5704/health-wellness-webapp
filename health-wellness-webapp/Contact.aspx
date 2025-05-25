<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Contact.aspx.vb" Inherits="health_wellness_webapp.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Contact</title>
    <meta name="description" content=" Send us a message regarding any of your queries." />
    <meta property="og:title" content="Best Health | Contact" />
    <meta property="og:description" content=" Send us a message regarding any of your queries." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Us</h1>
    <p class ="subtitle">Should you have any queries regarding our <br /> services, please do send us a message</p>
    <br />
    <asp:Panel ID="pnlContact" CssClass="contactForm" runat="server">
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="error" />
        <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
        <asp:TextBox ID="txtMessage" runat="server" Rows="8" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required." CssClass="error" />
        <asp:Button CssClass="primary-button" ID="btnMessage" runat="server" Text="Send Message" />
        <asp:Label ID="lblConfirmation" runat="server" />
    </asp:Panel>
    <asp:AccessDataSource ID="adsContact" runat="server" DataFile="~/App_Data/Webapp.accdb"
        InsertCommand="INSERT INTO Contact ([Contact_Email], [Contact_Message]) VALUES (?, ?)">
    <InsertParameters>
        <asp:Parameter Name="Contact_Email" Type="String" />
        <asp:Parameter Name="Contact_Message" Type="String" />
    </InsertParameters>
</asp:AccessDataSource>
</asp:Content>
