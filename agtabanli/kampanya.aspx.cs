using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{

    public partial class WebForm1 : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {
           // SqlCommand cmd = new SqlCommand("select * from tblAraba LEFT JOIN tblMarka on tblAraba.markaID = tblMarka.markaID ORDER BY tblAraba.arabaID ", bgl.baglan());

            SqlCommand cmd = new SqlCommand("select * from tblKampanya", bgl.baglan());
            SqlDataReader reader = cmd.ExecuteReader(); 
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}