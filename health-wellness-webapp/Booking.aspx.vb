Public Class Booking
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("User_ID") Is Nothing Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(Request.RawUrl))
        End If
    End Sub

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click

        lblupload.Text = ""
        lblupload.ForeColor = Drawing.Color.Black
        LblConfirmation.Text = ""

        Dim userId As String = Session("User_ID")
        Dim therapistId As Integer = ddlTherapists.SelectedValue.Trim()
        Dim time As String = ddlTimeSlots.SelectedValue.Trim()

        adsBooking.InsertParameters("Booking_Time").DefaultValue = time
        adsBooking.InsertParameters("Therapist_Id").DefaultValue = therapistId
        Dim dv As DataView = adsCheckBooking.Select(DataSourceSelectArguments.Empty)
        If dv.Count > 0 Then
            LblConfirmation.Text = "Sorry, this time slot is booked"
            Return
        End If

        Dim reportPath As String = ""
        If fuReport.HasFile Then
            Dim ext = IO.Path.GetExtension(fuReport.FileName).ToLower()
            If ext <> ".pdf" Then
                lblupload.Text = "Only .pdf file are accepted"
                lblupload.ForeColor = Drawing.Color.Red
                Return
            End If

            Dim saveDir = Server.MapPath("~/App_Data/MedicalReports/")
            If Not System.IO.Directory.Exists(saveDir) Then
                System.IO.Directory.CreateDirectory(saveDir)
            End If


            Dim fileName As String = $"{userId}_{DateTime.Now:yyyyMMddHHmmss}{ext}"
            reportPath = "/App_Data/MedicalReports/" & fileName
            fuReport.SaveAs(IO.Path.Combine(saveDir, fileName))
        End If


        adsCheckBooking.SelectParameters("Therapist_Id").DefaultValue = therapistId
        adsCheckBooking.SelectParameters("Booking_Time").DefaultValue = time
        adsBooking.InsertParameters("User_Id").DefaultValue = userId
        adsBooking.InsertParameters("User_ReportPath").DefaultValue = "/App_Data/MedicalReports/" & fileName

        adsBooking.Insert()
        LblConfirmation.Text = "Session booking confirmed"

    End Sub

    Protected Sub adsCheckBooking_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub
End Class