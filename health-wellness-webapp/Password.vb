Imports System.Security.Cryptography

Namespace Utils
    Public Class Password
        Public Shared Function Hash(password As String)
            Dim salt As String = "e25dfb82-cdf4-441d-b269-2093e573026f"
            Dim sha256 As SHA256 = SHA256.Create()
            Dim bytes As Byte() = Encoding.UTF8.GetBytes(password & salt)
            Return Convert.ToBase64String(sha256.ComputeHash(bytes))
        End Function
    End Class
End Namespace
