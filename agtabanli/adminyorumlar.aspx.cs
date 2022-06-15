using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{
    public partial class adminyorumlar : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["admin"];
            if (Page.IsPostBack == false)
            {
                //SqlCommand cmd = new SqlCommand("select * from tblYorumlar where onay='false' ", bgl.baglan());
                //SqlDataReader reader = cmd.ExecuteReader();
                //DataList1.DataSource = reader;
                //DataList1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             
                //SqlCommand guncelle = new SqlCommand("update tblYorumlar set onay=@onay where yorumID=@id", bgl.baglan());
                //guncelle.Parameters.AddWithValue("@id");
                //guncelle.Parameters.AddWithValue("@marka", );
                //guncelle.ExecuteNonQuery();
                //bgl.baglan().Close();

            
                //DataList1.DataBind();
            
        }
    }
}