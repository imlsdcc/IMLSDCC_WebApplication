Public Class SearchController
    Inherits System.Web.Mvc.Controller

    Function Index() As ActionResult
        Return View("")
    End Function

    Function ResultList() As ActionResult
        Return View("")
    End Function

    Function Detail() As ActionResult
        Return View("")
    End Function

    Function BrowseList() As ActionResult
        Return View("")
    End Function

    Function About() As ActionResult
        Return View("")
    End Function
    Function Documentation() As ActionResult
        Return View("")
    End Function
    Function Resources() As ActionResult
        Return View("")
    End Function
    Function Advisory() As ActionResult
        Return View("")
    End Function
    Function Bios() As ActionResult
        Return View("")
    End Function
    Function Groups() As ActionResult
        Return View("")
    End Function
    Function Disseminations() As ActionResult
        Return View("")
    End Function
    Function Participation() As ActionResult
        Return View("")
    End Function

    Function Privacy() As ActionResult
        Return View("")
    End Function
    Function MetadataReuse() As ActionResult
        Return View("")
    End Function
    Function Contact() As ActionResult
        Return View("")
    End Function
    Function Terms() As ActionResult
        Return View("")
    End Function
    Function CDschema_elements() As ActionResult
        Return View("")
    End Function
    Function CDschema_elements_20040908() As ActionResult
        Return View("")
    End Function
    Function CDschema_elements_20050504() As ActionResult
        Return View("")
    End Function
    Function CDschema_elements_20081105() As ActionResult
        Return View("")
    End Function
    Function CDschema_overview() As ActionResult
        Return View("")
    End Function
    Function CDschema_overview_20040908() As ActionResult
        Return View("")
    End Function
    Function CDschema_overview_20050504() As ActionResult
        Return View("")
    End Function
    Function CDschema_overview_20081105() As ActionResult
        Return View("")
    End Function
    Function NotSupported() As ActionResult
        Return View("")
    End Function
    

    'Function getFeaturedContent() As ActionResult 'This Method and associate partial view needs to move into the Services app
    '    Dim myRand As New Random
    '    Dim feedSize As Integer = 10
    '    ViewData("FCItem") = Math.Floor(myRand.NextDouble() * feedSize) + 1
    '    Return PartialView("PartialViews/Index/getFeaturedContent")
    'End Function
End Class
