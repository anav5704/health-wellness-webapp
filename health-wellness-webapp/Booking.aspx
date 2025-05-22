<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Booking.aspx.vb" Inherits="health_wellness_webapp.Booking2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:AccessDataSource ID="adsGetUser" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT User_Id FROM [User] WHERE User_Email = ?">
        <SelectParameters>
            <asp:SessionParameter Name="User_Email" SessionField="User_Email" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>

    <h1 class="top-heading">Booking</h1>

    <section class="therapists-section">
        <h2 class="booking-title">Therapist</h2>

        <article class="therapist-avatar">
            <asp:Panel ID="Panel1" CssClass="therapist" runat="server">
                <asp:Image ID="Image1" ImageUrl="/images/Therapist1.jpg" alt="John Doe" runat="server" />
                <asp:Label ID="Label1" Text="John Doe" runat="server" />
                <asp:Label ID="Label5" Text="$800.00/Session" runat="server" />
            </asp:Panel>

            <asp:Panel ID="TherapistJameSmith" CssClass="therapist" runat="server">
                <asp:Image ID="Image2" ImageUrl="/images/therapist2.jpg" alt="Jame Smith" runat="server" />
                <asp:Label ID="Label6" Text="Jame Smith" runat="server" />
                <asp:Label ID="Label7" Text="$800.00/Session" runat="server" />
            </asp:Panel>

            <asp:Panel ID="TherapistCharlesDow" CssClass="therapist" runat="server">
                <asp:Image ID="Image3" ImageUrl="/images/therapist3.jpg" alt="Charles Dow" runat="server" />
                <asp:Label ID="Label8" Text="Charles Dow" runat="server" />
                <asp:Label ID="Label9" Text="$800.00/Session" runat="server" />
            </asp:Panel>

            <asp:Panel ID="TherapistEmilyJones" CssClass="therapist" runat="server">
                <asp:Image ID="Image4" ImageUrl="/images/therapist4.jpg" alt="Emily Jones" runat="server" />
                <asp:Label ID="Label10" Text="Emily Jones" runat="server" />
                <asp:Label ID="Label11" Text="$800.00/Session" runat="server" />
            </asp:Panel>
        </article>



        <asp:DropDownList ID="ddlTherapists" runat="server" DataSourceID="adsTherapists" DataTextField="Name" DataValueField="Therapist_ID" AutoPostBack="False" AppendDataBoundItems="true" CssClass="dropdownlist">
            <asp:ListItem Value=""></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTherapist" runat="server" ControlToValidate="ddlTherapists" ErrorMessage="Choose a therapist." CssClass="warning" />

        <asp:AccessDataSource ID="adsTherapists" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT Name, Therapist_Id FROM [Therapist]"></asp:AccessDataSource>

    </section>

    <section class="timeSlot-section">
        <h2 class="booking-title">Time Slot</h2>


        <asp:DropDownList ID="ddlTimeSlots" runat="server" DataSourceID="xdsTimeSlots" DataTextField="value" CssClass="dropdownlist">
        </asp:DropDownList>
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTimeSlot" runat="server" ControlToValidate="ddlTimeSlots" ErrorMessage="Choose a time slot." CssClass="warning" />
        <h5 class="session-info">*Each session lasts 60 minutes</h5>
        <asp:XmlDataSource ID="xdsTimeSlots" runat="server" DataFile="~/App_Data/TimeSlots.xml"></asp:XmlDataSource>


        <asp:AccessDataSource ID="adsCheckBooking" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT Booking_ID FROM Booking WHERE Therapist_Id = ? AND Booking_Time = ?">
            <SelectParameters>
                <asp:Parameter Name="Therapist_Id" Type="Int32" />
                <asp:Parameter Name="Booking_Time" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </section>

    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="Confirmbutton" CausesValidation="true" />



    <asp:Label ID="LblConfirmation" runat="server" CssClass="ConfirmMessage"></asp:Label>

    <asp:AccessDataSource ID="adsBooking" runat="server" DataFile="~/App_Data/Webapp.accdb"
        InsertCommand="INSERT INTO Booking ([User_Id], [Therapist_Id] , [Booking_Time]) VALUES (?,?,?)">
        <InsertParameters>
            <asp:SessionParameter Name="User_Id" SessionField="User_Mail" Type="String" />
            <asp:Parameter Name="Therapist_Id" Type="Int32" />
            <asp:Parameter Name="Booking_Time" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>

</asp:Content>
