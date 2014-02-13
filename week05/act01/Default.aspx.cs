using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Demo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            //Get the selected value of the dropdown list
            String lastName = this.dlLastName.SelectedValue;

            //Use the SQL statement we use in our first attempt
            //Use a multiline string, i.e. preface with @
            String sql = @"
                SELECT e.LastName, e.FirstName, t.TerritoryDescription, r.RegionDescription
                FROM Employees e 
                JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
                JOIN Territories t ON et.TerritoryID = t.TerritoryID
                JOIN Region r ON t.RegionID = r.RegionID 
                WHERE LastName = '" + lastName + "'";

            //Let's modify the gridview's SQL to have a WHERE clause
            //First create a new database connection of gridview's DataSource
            //Get ConnectionString from the Web.Config
            String connectionString = 
                ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlDataSource sqlDataSource = new SqlDataSource(connectionString, sql);

            //Second set the gridview's datasource to the newly created one
            this.gvSales.DataSource = sqlDataSource;

            //Third bind the new DataSource to the gridview
            gvSales.DataBind();

            //Let's make the grid visible
            this.gvSales.Visible = true;
        }
    }
}