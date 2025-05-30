Imports System.Data.OleDb

Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("User_Role") IsNot Nothing AndAlso Session("User_Role").ToString() = "Admin" Then
                pnlMessages.Visible = True

                adsBookings.SelectCommand = "
                        SELECT 
                            B.Booking_Id, 
                            B.User_ReportPath,
                            T.Therapist_Name, 
                            U.User_Fname & ' ' & U.User_Lname AS User_Name, 
                            FORMAT(S.Booking_Time, 'MMM dd, yyyy hh:mm') AS Booking_Time 
                        FROM 
                            (((Booking AS B
                               INNER JOIN TimeSlot AS S 
                                 ON B.TimeSlot_Id = S.TimeSlot_Id)
                              INNER JOIN Therapist AS T 
                                 ON B.Therapist_Id = T.Therapist_Id)
                             INNER JOIN [User] AS U 
                                 ON B.User_Id = U.User_Id)"


            ElseIf Session("User_ID") IsNot Nothing Then
                pnlMessages.Visible = False

                adsBookings.SelectCommand = "
                  SELECT B.Booking_Id,
                         B.User_ReportPath,
                         T.Therapist_Name,
                         U.User_Fname & ' ' & U.User_Lname AS User_Name,
                         FORMAT(S.Booking_Time, 'MMM dd, yyyy hh:mm') AS Booking_Time
                    FROM (((Booking AS B
                           INNER JOIN TimeSlot AS S ON B.TimeSlot_Id = S.TimeSlot_Id)
                          INNER JOIN Therapist AS T ON B.Therapist_Id = T.Therapist_Id)
                         INNER JOIN [User]    AS U ON B.User_Id    = U.User_Id)
                   WHERE B.User_Id = ?"
                adsBookings.SelectParameters.Clear()
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
