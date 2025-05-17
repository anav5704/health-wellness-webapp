Public Class Resources
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'User Authentication'
        If Not User.Identity.IsAuthenticated Then
            Response.Redirect("~/Login.aspx")
        End If
    End Sub

    Protected Sub btnDownload_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim fileName As String = "Healthy Habits & Routines.pdf"
        Dim filePath As String = Server.MapPath("~/App_Data/app_data/" & fileName)

        If System.IO.File.Exists(filePath) Then
            Response.Clear()
            Response.ContentType = "application/pdf"
            Response.AppendHeader("Content-Disposition", "attachment; filename=" & Server.UrlEncode(fileName))
            Response.TransmitFile(filePath)
            Response.End()
        Else
            ClientScript.RegisterStartupScript(Me.GetType(), "FileNotFound", "alert('File not found.');", True)
        End If
    End Sub
End Class