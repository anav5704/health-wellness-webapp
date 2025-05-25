<%@ Page Title="Dashboard" ClientIDMode="Static" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Dashboard.aspx.vb" Inherits="health_wellness_webapp.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Best Health | Dashboard</title>
    <meta name="description" content="Easily view and update your therapy sessions anytime through your personalized booking dashboard." />
    <meta property="og:title" content="Best Health | Dashboard" />
    <meta property="og:description" content="Easily view and update your therapy sessions anytime through your personalized booking dashboard." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="lblUserRole" Text="" runat="server"></asp:Label>
        Dashboard</h1>

    <p class="userInfo">
        You are logged in as
        <asp:Label ID="lblUserName" Text="" runat="server"></asp:Label>
        <asp:HyperLink ID="hlLogout" runat="server" NavigateUrl="Logout.aspx" Text="Log Out" />
    </p>

    <h2>Session Bookings</h2>

    <asp:GridView ID="gvBookings" runat="server" AutoGenerateColumns="False" DataSourceID="adsBookings" DataKeyNames="Booking_Id">
        <Columns>
            <asp:BoundField DataField="User_Name" HeaderText="User" />
            <asp:BoundField DataField="Therapist_Name" HeaderText="Therapist" />
            <asp:BoundField DataField="Booking_Time" HeaderText="Time" />
            <asp:TemplateField HeaderText="Report">
                <ItemTemplate>
                    <asp:HyperLink ID="hlVIew" runat="server" NavigateUrl='<%# Eval("USer_ReportPath") %>' Visible='<%# Not String.IsNullOrEmpty(Eval("User_ReportPath").ToString()) %>' Target="_blank" Text="View" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:HyperLink ID="hlEdit" runat="server" NavigateUrl='<%# Eval("Booking_Id", "Booking.aspx?bookingId={0}") %>' Text="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:Panel ID="pnlMessages" runat="server">
        <h2>Contact Messages</h2>

        <asp:GridView ID="gvContact" runat="server" AutoGenerateColumns="False" DataSourceID="adsContact">
            <Columns>
                <asp:BoundField DataField="Contact_Email" HeaderText="Email" />
                <asp:BoundField DataField="Contact_Message" HeaderText="Message" />
            </Columns>
        </asp:GridView>

        <h2>Feedback Messages</h2>

        <asp:GridView ID="gvFeedback" runat="server" AutoGenerateColumns="False" DataSourceID="adsFeedback">
            <Columns>
                <asp:BoundField DataField="User_Name" HeaderText="User Name" />
                <asp:BoundField DataField="Feedback_Message" HeaderText="Message" />
            </Columns>
        </asp:GridView>
    </asp:Panel>

    <asp:AccessDataSource ID="adsBookings" runat="server" DataFile="~/App_Data/Webapp.accdb"></asp:AccessDataSource>

    <asp:AccessDataSource ID="adsUser" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT [User_Fname] & ' ' & [User_Lname] AS User_Name FROM [User] WHERE [User_Id] = ?">
        <SelectParameters>
            <asp:Parameter Name="User_Id" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>

    <asp:AccessDataSource ID="adsContact" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT [Contact_Email], [Contact_Message] FROM [Contact]"></asp:AccessDataSource>

    <asp:AccessDataSource ID="adsFeedback" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT [User].User_Fname & ' ' & [User].User_Lname AS User_Name, [Feedback].Feedback_Message FROM [Feedback] INNER JOIN [User] ON [Feedback].User_Id = [User].User_Id"></asp:AccessDataSource>

</asp:Content>
