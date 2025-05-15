Public Class Resources
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'User Authentication - Redirect to Login if not Authenticated'
        'If Not User.Identity.IsAuthenticated Then
        'Response.Redirect("~/Login.aspx")
        'End If
    End Sub
End Class
