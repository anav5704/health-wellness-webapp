Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("User_ID") Is Nothing Then
                Response.Redirect("Login.aspx")
                Exit Sub
            End If

            If Session("User_Role") = "Admin" Then
                LoadAllBookings()
            Else
                LoadUserBookings(Session("User_ID").ToString())
            End If
        End If
    End Sub

    Private Sub LoadAllBookings()
        'gvBookings.DataSourceID = "adsAllBookings"
        'gvBookings.DataBind()
    End Sub

    Private Sub LoadUserBookings(userId As String)
        'adsUserBookings.SelectParameters("User_ID").DefaultValue = userId
        'gvBookings.DataSourceID = "adsUserBookings"
        'gvBookings.DataBind()
    End Sub

End Class