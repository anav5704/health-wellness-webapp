Imports System.IO

Public Class Booking
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("User_ID") Is Nothing Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(Request.RawUrl))
        End If

        Dim bookingId As String = Request.QueryString("bookingId")

        If Not IsPostBack Then
            ddlTherapists.DataBind()
            Dim qsId As String = Request.QueryString("therapistId")
            Dim tid As Integer

            If Integer.TryParse(qsId, tid) Then
                Dim li As ListItem = ddlTherapists.Items.FindByValue(tid.ToString())
                If li IsNot Nothing Then
                    ddlTherapists.ClearSelection()
                    li.Selected = True
                End If
            End If

            If bookingId IsNot Nothing Then
                ValidatePermission(bookingId)
                lblBookingType.Text = "Edit"
                lblFileUpload.Text = "Editing medical report is disabled due to security"
                btnConfirm.Text = "Update Booking"
                btnDelete.Visible = True
                fuReport.Visible = False
                LoadBooking(bookingId)
            Else
                lblBookingType.Text = "New"
                lblFileUpload.Text = "You can upload an optional PDF metal report"
                btnConfirm.Text = "Confirm Booking"
                btnDelete.Visible = False
            End If
        End If
    End Sub

    Protected Sub LoadBooking(bookingId As String)
        adsBooking.SelectParameters("Booking_Id").DefaultValue = bookingId
        Dim dv As DataView = CType(adsBooking.Select(DataSourceSelectArguments.Empty), DataView)

        If dv.Count > 0 Then
            Dim row As DataRowView = dv(0)
            ddlTherapists.SelectedValue = row("Therapist_Id").ToString()
            ddlTimeSlots.SelectedValue = row("Booking_Time").ToString()
        End If
    End Sub

    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        lblupload.Text = ""
        LblConfirmation.Text = ""

        Dim userId As String = Session("User_ID").ToString()
        Dim bookingId As String = Request.QueryString("bookingId")
        Dim therapistId As Integer = CInt(ddlTherapists.SelectedValue)
        Dim slot As String = ddlTimeSlots.SelectedValue

        adsCheckBooking.SelectParameters("Therapist_Id").DefaultValue = therapistId.ToString()
        adsCheckBooking.SelectParameters("Booking_Time").DefaultValue = slot

        Dim dv As DataView = CType(adsCheckBooking.Select(DataSourceSelectArguments.Empty), DataView)
        If dv.Count > 0 Then
            LblConfirmation.Text = "Sorry, this time slot is already booked."
            Return
        End If

        Dim reportPath As String = ""
        Dim fileName As String = ""

        If fuReport.HasFile Then
            fileName = IO.Path.GetFileName(fuReport.FileName)
            Dim ext = IO.Path.GetExtension(fileName).ToLower()
            If ext <> ".pdf" Then
                lblupload.Text = "Only .pdf files are accepted."
                Return
            End If

            Dim saveDir = Server.MapPath("~/App_Data/MedicalReports/")
            If Not IO.Directory.Exists(saveDir) Then IO.Directory.CreateDirectory(saveDir)

            Dim uniqueName As String = $"{Guid.NewGuid():N}{ext}"
            reportPath = "/App_Data/MedicalReports/" & uniqueName
            fuReport.SaveAs(IO.Path.Combine(saveDir, uniqueName))
        End If

        If bookingId IsNot Nothing Then
            adsBooking.UpdateParameters("Therapist_Id").DefaultValue = therapistId
            adsBooking.UpdateParameters("Booking_Time").DefaultValue = slot
            adsBooking.UpdateParameters("Booking_Id").DefaultValue = bookingId

            adsBooking.Update()
            LblConfirmation.Text = "Booking successfully updated."
        Else
            adsBooking.InsertParameters("Therapist_Id").DefaultValue = therapistId
            adsBooking.InsertParameters("Booking_Time").DefaultValue = slot
            adsBooking.InsertParameters("User_Id").DefaultValue = userId
            adsBooking.InsertParameters("User_ReportPath").DefaultValue = reportPath

            adsBooking.Insert()
            LblConfirmation.Text = "Session successfully booked."
        End If
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Dim bookingId As String = Request.QueryString("bookingId")

        adsBooking.SelectParameters("Booking_Id").DefaultValue = bookingId.ToString()

        Dim dv As DataView = CType(adsBooking.Select(DataSourceSelectArguments.Empty), DataView)

        If dv.Count > 0 Then
            Dim reportPath As String = dv(0)("User_ReportPath").ToString()

            If Not String.IsNullOrEmpty(reportPath) Then
                Dim physicalPath As String = Server.MapPath(reportPath)
                If File.Exists(physicalPath) Then
                    File.Delete(physicalPath)
                End If
            End If
        End If


        adsBooking.DeleteParameters("Booking_Id").DefaultValue = bookingId
        adsBooking.Delete()

        Response.Redirect("Dashboard.aspx")
    End Sub

    Protected Sub ValidatePermission(bookingId As String)
        Dim currentUserId As String = Session("User_ID").ToString()
        Dim currentUserRole As String = If(Session("User_Role"), "").ToString()

        adsBooking.SelectParameters("Booking_Id").DefaultValue = bookingId
        Dim dv As DataView = CType(adsBooking.Select(DataSourceSelectArguments.Empty), DataView)

        If dv.Count = 0 Then
            Response.Redirect("Booking.aspx")
        End If

        Dim bookingOwnerId As String = dv(0)("User_Id").ToString()

        If currentUserRole <> "Admin" AndAlso bookingOwnerId <> currentUserId Then
            Response.Redirect("Booking.aspx")
        End If
    End Sub

End Class
