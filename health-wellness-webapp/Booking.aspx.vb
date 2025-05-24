Public Class Booking
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("User_ID") Is Nothing Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(Request.RawUrl))
        End If
    End Sub

    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click

        lblupload.Text = ""
        LblConfirmation.Text = ""


        Dim userId As String = Session("User_ID").ToString()
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

            Dim uniqueName = $"{userId}_{DateTime.Now:yyyyMMddHHmmss}{ext}"
            reportPath = "/App_Data/MedicalReports/" & uniqueName
            fuReport.SaveAs(IO.Path.Combine(saveDir, uniqueName))
        End If

        adsBooking.InsertParameters("Therapist_Id").DefaultValue = therapistId
        adsBooking.InsertParameters("Booking_Time").DefaultValue = slot
        adsBooking.InsertParameters("User_Id").DefaultValue = userId
        adsBooking.InsertParameters("User_ReportPath").DefaultValue = "/App_Data/MedicalReports/" & fileName

        adsBooking.Insert()

        LblConfirmation.Text = "Session sucessfully booked."
    End Sub

End Class
