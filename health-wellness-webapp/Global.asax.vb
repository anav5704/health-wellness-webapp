
Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
           New ScriptResourceDefinition With {
               .Path = "https://code.jquery.com/jquery-3.6.0.min.js",
               .CdnSupportsSecureConnection = True
            })
    End Sub
End Class