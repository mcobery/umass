using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class LocalTeam : System.Web.UI.Page
    {
        protected String CreateAlert(String lastName)
        {
            return String.Format("alert('Employees Last Name is {0}');"
                + "return false;", lastName);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rlSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.gvLocalTeam.Visible = rlSelect.SelectedValue.Equals("Grid");
            this.dvEmployees.Visible = rlSelect.SelectedValue.Equals("Details");
            this.dlEmployees.Visible = rlSelect.SelectedValue.Equals("DataList");
            this.reEmployees.Visible = rlSelect.SelectedValue.Equals("Repeater");
            this.fvEmployees.Visible = rlSelect.SelectedValue.Equals("FormView");
        }
    }
}