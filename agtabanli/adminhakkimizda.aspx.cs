using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{
    public partial class adminhakkimizda : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["admin"];
            SqlCommand cmd = new SqlCommand("select * from tblHakkimizda", bgl.baglan());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                SqlCommand guncelle = new SqlCommand("update tblHakkimizda set hakkimizda1=@hakkimizda1,hakkimizda2=@hakkimizda2,image1=@resim where ID=@id", bgl.baglan());
                guncelle.Parameters.AddWithValue("@id", 2);


                guncelle.Parameters.AddWithValue("@resim", "~/resimler/" + FileUpload1.FileName);


                guncelle.Parameters.AddWithValue("@hakkimizda1", TextBox1.Text);
                guncelle.Parameters.AddWithValue("@hakkimizda2", TextBox2.Text);

                guncelle.ExecuteNonQuery();
                bgl.baglan().Close();
                DataList1.DataBind();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;

                Response.Redirect("adminhakkimizda.aspx");

            }

        }
    }
}