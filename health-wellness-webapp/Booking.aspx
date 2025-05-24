<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Booking.aspx.vb" Inherits="health_wellness_webapp.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="top-heading"><asp:Label ID="lblBookingType" runat="server" Text=""></asp:Label> Booking</h1>

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



        <asp:DropDownList ID="ddlTherapists" runat="server" DataSourceID="adsTherapists" DataTextField="Therapist_Name" DataValueField="Therapist_ID" AutoPostBack="False" AppendDataBoundItems="true" CssClass="dropdownlist">
           <asp:ListItem Text="Select a therapist" Value="" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTherapist" runat="server" ControlToValidate="ddlTherapists" ErrorMessage="Therapist is required." CssClass="error" />

        <asp:AccessDataSource ID="adsTherapists" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT [Therapist_Name], [Therapist_Id] FROM [Therapist]"></asp:AccessDataSource>

    </section>

    <section class="timeSlot-section">
        <h2 class="booking-title">Time Slot</h2>
        <p>Each session lasts 60 minutes</p>

       <asp:DropDownList ID="ddlTimeSlots" runat="server" AppendDataBoundItems="true" DataSourceID="xdsTimeSlots" DataTextField="text" DataValueField="value" CssClass="dropdownlist">
        <asp:ListItem Text="Select a time slot" Value="0" Selected="True"/>
           </asp:DropDownList>
        <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTimeSlot" runat="server" ControlToValidate="ddlTimeSlots" ErrorMessage="Time slot is required." CssClass="error" />
        
        <asp:XmlDataSource ID="xdsTimeSlots" runat="server" DataFile="~/App_Data/TimeSlots.xml" ></asp:XmlDataSource>


        <asp:AccessDataSource ID="adsCheckBooking" runat="server" DataFile="~/App_Data/Webapp.accdb" SelectCommand="SELECT [Booking_Id] FROM [Booking] WHERE [Therapist_Id] = ? AND [Booking_Time] = ?">
            <SelectParameters>
                <asp:Parameter Name="Therapist_Id" Type="Int32" />
                <asp:Parameter Name="Booking_Time" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </section>

    <section class="fileUpload-section">
        <h2 class="booking-title">Medical Report</h2>
        <asp:Label ID="lblFileUpload" runat="server" Value=""></asp:Label>
        <asp:FileUpload  ID="fuReport" runat="server" CssClass="dropdownlist" onchange="checkFileSize(this)" />
        <asp:Label ID="lblupload" runat="server" CssClass="error"></asp:Label>
        <asp:Button ID="btnConfirm" runat="server" Text="" CssClass="primary-button" CausesValidation="true" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete Booking" CssClass="warning-button" CausesValidation="true" />
        <asp:Label ID="LblConfirmation" runat="server"></asp:Label>
    </section>

    <asp:AccessDataSource ID="adsBooking" runat="server" DataFile="~/App_Data/Webapp.accdb"
        SelectCommand="SELECT * FROM [Booking] WHERE [Booking_Id] = ?"
        InsertCommand="INSERT INTO [Booking] ([User_Id], [Therapist_Id], [Booking_Time],[User_ReportPath]) VALUES (?,?,?,?)"
        UpdateCommand="UPDATE [Booking] SET [Therapist_Id]=?, [Booking_Time]=? WHERE [Booking_Id]=?"
        DeleteCommand="DELETE FROM [Booking] WHERE [Booking_Id]=?"
        >
        <SelectParameters>
            <asp:Parameter Name="Booking_Id" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="User_Id" Type="Int32" />
            <asp:Parameter Name="Therapist_Id" Type="Int32" />
            <asp:Parameter Name="Booking_Time" Type="String" />
            <asp:Parameter Name="User_ReportPath" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Therapist_Id" Type="Int32" />
            <asp:Parameter Name="Booking_Time" Type="String" />
            <asp:Parameter Name="Booking_Id" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="Booking_Id" Type="Int32" />
        </DeleteParameters>
    </asp:AccessDataSource>

</asp:Content>
