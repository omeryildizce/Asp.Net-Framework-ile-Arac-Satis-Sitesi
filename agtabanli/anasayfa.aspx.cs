using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
namespace agtabanli
{
    public partial class anasayfa : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Page.IsPostBack==false)
            { 
            SqlCommand cmd = new SqlCommand("select * from tblAraba LEFT JOIN tblMarka on tblAraba.markaID = tblMarka.markaID ORDER BY tblAraba.arabaID ", bgl.baglan());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();
        }
        }
        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}