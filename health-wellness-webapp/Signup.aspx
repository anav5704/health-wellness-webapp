<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Signup.aspx.vb" Inherits="health_wellness_webapp.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Sign Up</title>
    <meta name="description" content="Sign up to Best Health for expert guidance, wellness resources, and a caring community focused on your mental health." />
    <meta property="og:title" content="Best Health | Sign Up" />
    <meta property="og:description" content="Sign up to Best Health for expert guidance, wellness resources, and a caring community focused on your mental health." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Create Account</h1>
    <asp:Panel ID="pnlSignup" CssClass="authForm" runat="server">
        <label for="txtFname">First Name</label>
         <asp:TextBox ID="txtFname" runat="server" />
         <asp:RequiredFieldValidator Display="Dynamic" ID="rfvSignupFname" runat="server" ControlToValidate="txtFname" ErrorMessage="First name is required." CssClass="error" />

        <label for="txtLname">Last Name</label>
        <asp:TextBox ID="txtLname" runat="server" />
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvSignupLname" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name is required." CssClass="error" />

        <label for="txtEmail">Email</label>
         <asp:TextBox ID="txtEmail" runat="server" />
         <asp:RequiredFieldValidator Display="Dynamic" ID="rfvSignupEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="error" />

         <label for="txtPassword">Password</label>
         <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
         <asp:RequiredFieldValidator Display="Dynamic" ID="rfvSignupPasswrd" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." CssClass="error" />

         <asp:Button CssClass="primary-button" ID="btnSignup" runat="server" Text="Sign Up" />

         <asp:Label CssClass="error" ID="lblMessage" runat="server"></asp:Label>
      </asp:Panel>

    <p class="authInfo">Already have an account? <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="Login.aspx">Login</asp:HyperLink></p>

     <asp:AccessDataSource ID="adsUsers" runat="server" DataFile="~/App_Data/Webapp.accdb"
         SelectCommand="SELECT [User_Id], [User_Email], [User_Role] FROM [User] WHERE [User_Email] = ?"
         InsertCommand="INSERT INTO [User] ([User_Fname], [User_Lname], [User_Email], [User_Password], [User_Role]) VALUES (?, ?, ?, ?, ?)">
        <SelectParameters>
            <asp:Parameter Name="User_Email" Type="String" />
        </SelectParameters>
         <InsertParameters>
             <asp:Parameter Name="User_Fname" Type="String" />
             <asp:Parameter Name="User_Lname" Type="String" />
             <asp:Parameter Name="User_Email" Type="String" />
             <asp:Parameter Name="User_Password" Type="String" />
             <asp:Parameter Name="User_Role" Type="String" />
         </InsertParameters>
     </asp:AccessDataSource>
</asp:Content>
