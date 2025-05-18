Public Class Blogs
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'User Authentication'
        If Session("User_Email") Is Nothing Then
            Response.Redirect("Login.aspx?ReturnUrl=" & Server.UrlEncode(Request.RawUrl))
        End If
    End Sub

End Class