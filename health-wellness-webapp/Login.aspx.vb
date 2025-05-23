Public Class Login
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim returnUrl As String = Request.QueryString("ReturnUrl")
            If Not String.IsNullOrEmpty(returnUrl) Then
                hlCreateAccount.NavigateUrl = "Signup.aspx?ReturnUrl=" & Server.UrlEncode(returnUrl)
            Else
                hlCreateAccount.NavigateUrl = "Signup.aspx"
            End If
        End If
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim email As String = txtEmail.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()

        If email = "" Or password = "" Then
            lblMessage.Text = "Email and password are required."
            Exit Sub
        End If

        adsUsers.SelectParameters("User_Email").DefaultValue = email

        Dim userData As DataView = adsUsers.Select(DataSourceSelectArguments.Empty)

        If userData.Count > 0 Then
            Dim storedHash As String = userData(0)("User_Password").ToString()
            Dim inputHash As String = Utils.Password.Hash(password)

            If storedHash = inputHash Then
                Session("User_ID") = userData(0)("User_ID").ToString()
                Session("User_Role") = userData(0)("User_Role").ToString()

                Dim returnUrl As String = Request.QueryString("ReturnUrl")
                If Not String.IsNullOrEmpty(returnUrl) Then
                    Response.Redirect(returnUrl)
                Else
                    Response.Redirect("Dashboard.aspx")
                End If
            Else
                lblMessage.Text = "Invalid password."
            End If

        Else
            lblMessage.Text = "Invalid email."
        End If
    End Sub
End Class