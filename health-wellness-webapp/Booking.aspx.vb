Imports System.IO

Public Class Booking
    Inherits System.Web.UI.Page

    Private Property IsModalVisible As Boolean
        Get
            Return If(ViewState("IsModalVisible"), False)
        End Get

        Set(value As Boolean)
            ViewState("IsModalVisible") = value
        End Set
    End Property

    Private Property IsModalSuccess As Boolean
        Get
            Return If(ViewState("IsModalSuccess"), False)
        End Get
        Set(value As Boolean)
            ViewState("IsModalSuccess") = value
        End Set
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User_ID") Is Nothing Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(Request.RawUrl))
        End If

        pnlModal.Visible = IsModalVisible

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
                lblFileUploadInfo.Text = "Editing medical report is disabled due to security"
                btnConfirm.Text = "Update Booking"
                btnDelete.Visible = True
                fuReport.Visible = False
                lblFileUpload.Visible = False
                LoadBooking(bookingId)
            Else
                lblBookingType.Text = "New"
                lblFileUploadInfo.Text = "You can upload an optional PDF medical report"
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
            ddlTimeSlots.SelectedValue = row("TimeSlot_Id").ToString()
        End If
    End Sub

    Protected Sub btnCloseModal_Click(sender As Object, e As EventArgs) Handles btnCloseModal.Click
        IsModalVisible = False
        pnlModal.Visible = False

        If IsModalSuccess Then
            Response.Redirect("Dashboard.aspx")
        End If
    End Sub

    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        lblFileUploadError.Text = ""

        Dim userId As String = Session("User_ID").ToString()
        Dim bookingId As String = Request.QueryString("bookingId")
        Dim therapistId As Integer = CInt(ddlTherapists.SelectedValue)
        Dim slot As Integer = CInt(ddlTimeSlots.SelectedValue)

        adsCheckBooking.SelectParameters("Therapist_Id").DefaultValue = therapistId.ToString()
        adsCheckBooking.SelectParameters("TimeSlot_Id").DefaultValue = slot

        Dim dv As DataView = CType(adsCheckBooking.Select(DataSourceSelectArguments.Empty), DataView)
        If dv.Count > 0 Then
            IsModalVisible = True
            ShowModal("Booking Error.", "Sorry, this time slot is already booked.", False)
            Return
        End If

        Dim reportPath As String = ""
        Dim fileName As String = ""

        If fuReport.HasFile Then
            fileName = IO.Path.GetFileName(fuReport.FileName)
            Dim ext = IO.Path.GetExtension(fileName).ToLower()
            If ext <> ".pdf" Then
                lblFileUploadError.Text = "Only .pdf files are accepted."
                Return
            End If

            Dim saveDir = Server.MapPath("~/uploads/")
            If Not IO.Directory.Exists(saveDir) Then IO.Directory.CreateDirectory(saveDir)

            Dim uniqueName As String = $"{Guid.NewGuid():N}{ext}"
            reportPath = "/uploads/" & uniqueName
            fuReport.SaveAs(IO.Path.Combine(saveDir, uniqueName))
        End If

        IsModalVisible = True

        If bookingId IsNot Nothing Then
            adsBooking.UpdateParameters("Therapist_Id").DefaultValue = therapistId
            adsBooking.UpdateParameters("TimeSlot_Id").DefaultValue = slot
            adsBooking.UpdateParameters("Booking_Id").DefaultValue = bookingId

            adsBooking.Update()

            ShowModal("Booking Updated.", "The booking has been successfully updated.")
        Else
            adsBooking.InsertParameters("Therapist_Id").DefaultValue = therapistId
            adsBooking.InsertParameters("TimeSlot_Id").DefaultValue = slot
            adsBooking.InsertParameters("User_Id").DefaultValue = userId
            adsBooking.InsertParameters("User_ReportPath").DefaultValue = reportPath

            adsBooking.Insert()

            ShowModal("Booking Created.", "The booking has been successfully created.")
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

        IsModalVisible = True

        ShowModal("Booking Deleted.", "The booking has been successfully deleted.")
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

    Private Sub ShowModal(header As String, body As String, Optional isSuccess As Boolean = True)
        pnlModal.Visible = True
        lblModalHeader.Text = header
        lblModalBody.Text = body
        IsModalSuccess = isSuccess
    End Sub
End Class
