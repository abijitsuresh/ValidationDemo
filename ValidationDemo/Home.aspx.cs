using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationDemo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void NotRobotUserValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Convert.ToInt32(args.Value) % 2 == 0)
            {
                args.IsValid = true;
            }
            else
                args.IsValid = false;
        }
    }
}