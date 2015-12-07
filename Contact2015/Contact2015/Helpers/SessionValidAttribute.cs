using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Contact2015.Helpers
{
    public class SessionValidAttribute
    {
/*
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            string controllerName = filterContext.ActionDescriptor.ControllerDescriptor.ControllerName.ToLower();
            if (!controllerName.Contains("home"))
            {
                HttpSessionStateBase session = filterContext.HttpContext.Session;
                var user = session["ValidUserEmail"];
                if (((user == null) && (!session.IsNewSession)) || (session.IsNewSession))
                {
                    //send them off to the login page
                    var url = new UrlHelper(filterContext.RequestContext);
                    var loginUrl = url.Content("~/Users/Login");
                    filterContext.HttpContext.Response.Redirect(loginUrl, true);
                }
            }
        }
  */}
}