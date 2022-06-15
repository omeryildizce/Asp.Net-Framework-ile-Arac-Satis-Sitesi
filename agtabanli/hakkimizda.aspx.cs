using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{
    public partial class hakkimizda : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                SqlCommand cmd = new SqlCommand("select * from tblHakkimizda", bgl.baglan());
                SqlDataReader reader = cmd.ExecuteReader();
                DataList3.DataSource = reader;
                DataList3.DataBind();
            
     
        }
    }
}