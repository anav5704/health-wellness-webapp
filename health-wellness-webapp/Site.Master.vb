Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            RenderAuthLinks()
        End If
    End Sub

    Private Sub RenderAuthLinks()
        If Session("User_Email") IsNot Nothing Then
            Dim logoutLink As New HyperLink()
            logoutLink.NavigateUrl = "Logout.aspx"
            logoutLink.CssClass = "primary-link"
            logoutLink.Text = "Log Out"
            phAuthLinks.Controls.Add(logoutLink)
        Else
            Dim signupLink As New HyperLink()
            signupLink.NavigateUrl = "Signup.aspx"
            signupLink.CssClass = "primary-link"
            signupLink.Text = "Create Account"
            phAuthLinks.Controls.Add(signupLink)
        End If
    End Sub

End Class