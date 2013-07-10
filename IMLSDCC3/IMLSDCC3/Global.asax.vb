' Note: For instructions on enabling IIS6 or IIS7 classic mode, 
' visit http://go.microsoft.com/?LinkId=9394802

Public Class MvcApplication
    Inherits System.Web.HttpApplication

    Shared Sub RegisterGlobalFilters(ByVal filters As GlobalFilterCollection)
        filters.Add(New HandleErrorAttribute())
    End Sub

    Shared Sub RegisterRoutes(ByVal routes As RouteCollection)
        routes.IgnoreRoute("{resource}.axd/{*pathInfo}")

        ' MapRoute takes the following parameters, in order:
        ' (1) Route name
        ' (2) URL with parameters
        ' (3) Parameter defaults

        'routes.MapRoute( _
        '    "Old", _
        '    "{action}.aspx", _
        '    New With {.controller = "Search", .action = "About", .id = UrlParameter.Optional} _
        ')
        routes.MapRoute( _
            "Default", _
            "{action}/{id}", _
            New With {.controller = "Search", .action = "Index", .id = UrlParameter.Optional} _
        )
        routes.MapRoute( _
            "Browse", _
            "{action}/{category}/{startsWith}/{page}/{maximumRecords}/{id}", _
            New With {.controller = "Search", .action = "BrowseList", .id = UrlParameter.Optional} _
        )
        routes.MapRoute( _
            "Tabbed", _
            "{action}/{tabName}/{number}/{id}", _
            New With {.controller = "Search", .action = "Index", .id = UrlParameter.Optional} _
        )

        

        'routes.MapLegacyRoute("ThePage", "OldHome/Page.aspx")
    End Sub

    Protected Sub Application_BeginRequest(sender As Object, e As EventArgs)

        If Request.RawUrl.ToString.ToLower.Contains(".aspx") Then
            Dim redURL = Request.RawUrl.ToString()
            redURL = redURL.Split(".aspx")(0)
            Context.Response.StatusCode = 301
            Context.Response.Redirect(redURL)
        End If
    End Sub

    Sub Application_Start()
        AreaRegistration.RegisterAllAreas()

        RegisterGlobalFilters(GlobalFilters.Filters)
        RegisterRoutes(RouteTable.Routes)
    End Sub
End Class
