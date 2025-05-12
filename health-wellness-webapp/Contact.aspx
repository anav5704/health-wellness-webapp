<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Contact.aspx.vb" Inherits="health_wellness_webapp.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Us</h1>
    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." />
    <br />
    <br />
    <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
    <asp:TextBox ID="txtMessage" runat="server" Rows="6" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required." />
    <br />
    <br />
    <asp:Button ID="btnMessage" runat="server" Text="Send Message" />
    <asp:Label ID="lblMssg" runat="server" />
    <asp:AccessDataSource ID="adsContact" runat="server" DataFile="~/App_Data/Webapp.accdb"
        InsertCommand="INSERT INTO Contact ([contact_Email], [Contact_Message]) VALUES (?, ?)">
    <InsertParameters>
        <asp:Parameter Name="Contact_Email" Type="String" />
        <asp:Parameter Name="Contact_Message" Type="String" />
    </InsertParameters>
</asp:AccessDataSource>
</asp:Content>
