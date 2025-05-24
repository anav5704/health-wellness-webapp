<%@ Page Title="" ClientIDMode="Static" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Dashboard.aspx.vb" Inherits="health_wellness_webapp.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Dashboard</title>
    <meta name="description" content="Easily view and update your therapy sessions anytime through your personalized booking dashboard." />
    <meta property="og:title" content="Best Health | Dashboard" />
    <meta property="og:description" content="Easily view and update your therapy sessions anytime through your personalized booking dashboard." />
    <meta property="og:image" content="/images/og.png" />
    <link rel="icon" type="image/png" href="/images/favicon.ico" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h1><asp:Label ID="lblUserRole" Text="" runat="server"></asp:Label> Dashboard</h1>

    <p class="userInfo">
        You are logged in as <asp:Label ID="lblUserName" Text="" runat="server"></asp:Label>
        <asp:HyperLink ID="hlLogout" runat="server" NavigateUrl="Logout.aspx" Text="Log Out" />
    </p>

    <asp:GridView ID="gvBookings" runat="server" AutoGenerateColumns="False"  DataSourceID="adsBookings" DataKeyNames="Booking_Id">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="User" />
            <asp:BoundField DataField="Therapist_Name" HeaderText="Therapist" />
            <asp:BoundField DataField="Booking_Time" HeaderText="Time" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:HyperLink ID="hlEdit" runat="server" NavigateUrl='<%# Eval("Booking_Id", "Booking.aspx?bookingId={0}") %>' Text="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:AccessDataSource ID="adsBookings" runat="server" DataFile="~/App_Data/Webapp.accdb">
    </asp:AccessDataSource>

    <asp:AccessDataSource ID="adsUser" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT [User_Fname] & ' ' & [User_Lname] AS User_Name FROM [User] WHERE [User_Id] = ?">
        <SelectParameters>
            <asp:Parameter Name="User_Id" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>

</asp:Content>
