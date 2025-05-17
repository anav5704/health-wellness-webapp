<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="health_wellness_webapp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Account Login</h1>

         <asp:Panel ID="pnlLogin" CssClass="authForm" runat="server">
            <asp:Label ID ="lblEmail" runat ="server" Text ="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RequiredFieldValidator Display="Dynamic"  ID="rfvLoginEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="error" />

             <asp:Label ID ="lblPassword" runat ="server" Text ="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator Display="Dynamic"  ID="rfvLoginPasswrd" runat="server" ControlToValidate="txtPassword" ErrorMessage="Passowrd is required." CssClass="error" />

            <asp:Button CssClass="primary-button" ID="btnLogin" runat="server" Text="Login" />

            <asp:Label CssClass="error" ID="lblMessage" runat="server" />
        </asp:Panel>

        <p class="authInfo">Don't have an account? <asp:HyperLink ID="hlSignup" runat="server" NavigateUrl="Signup.aspx">Sign Up</asp:HyperLink></p>

    <asp:AccessDataSource ID="adsUsers" runat="server" DataFile="~/App_Data/Webapp.accdb"  
        SelectCommand="SELECT [User_Email], [User_Password], [User_Role] FROM [User] WHERE [User_Email] = ?"
    >
       <SelectParameters>
           <asp:Parameter Name="User_Email" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
