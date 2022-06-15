using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{
    public partial class search : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string arabaID = "";
        protected void Page_Load(object sender, EventArgs e)
         {
            arabaID = Request.QueryString["arabaID"];
            SqlCommand cmd1 = new SqlCommand("select * from tblAraba LEFT JOIN tblMarka on tblAraba.markaID = tblMarka.markaID where tblAraba.markaID =@araba ORDER BY tblAraba.arabaID ", bgl.baglan());

            //SqlCommand cmd1 = new SqlCommand("select * from tblAraba where markaID =@araba", bgl.baglan());
            cmd1.Parameters.AddWithValue("@araba", arabaID);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();

         
        }
    }
}