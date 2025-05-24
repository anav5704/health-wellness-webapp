Imports System.Data.OleDb

Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("User_Role") IsNot Nothing AndAlso Session("User_Role").ToString() = "Admin" Then
                adsBookings.SelectCommand = "
                    SELECT 
                        Booking.Booking_Id, 
                        Booking.USer_ReportPath,
                        Therapist.Therapist_Name, 
                        [User].User_Fname & ' ' & [User].User_Lname AS UserName, 
                        FORMAT(Booking.Booking_Time, 'MMM dd, yyyy hh:mm') AS Booking_Time 
                    FROM 
                        (Booking 
                        INNER JOIN Therapist ON Booking.Therapist_Id = Therapist.Therapist_Id)
                        INNER JOIN [User] ON Booking.User_Id = [User].User_Id"

            ElseIf Session("User_ID") IsNot Nothing Then
                adsBookings.SelectCommand = "
                SELECT 
                    Booking.Booking_Id, 
                    Booking.USer_ReportPath,
                    Therapist.Therapist_Name, 
                    [User].User_Fname & ' ' & [User].User_Lname AS UserName, 
                    FORMAT(Booking.Booking_Time, 'MMM dd, yyyy hh:mm') AS Booking_Time 
                FROM 
                    (Booking 
                    INNER JOIN Therapist ON Booking.Therapist_Id = Therapist.Therapist_Id)
                    INNER JOIN [User] ON Booking.User_Id = [User].User_Id 
                WHERE 
                    Booking.User_Id = ?"

                adsBookings.SelectParameters.Add("User_Id", Session("User_ID").ToString())
            Else
                Response.Redirect("~/Login.aspx")
            End If

            adsUser.SelectParameters("User_Id").DefaultValue = Session("User_ID").ToString()
            Dim dv As Data.DataView = CType(adsUser.Select(DataSourceSelectArguments.Empty), Data.DataView)

            lblUserName.Text = dv(0)("User_Name").ToString() & "."
            lblUserRole.Text = Session("User_Role").ToString()
        End If
    End Sub
End Class
