using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace agtabanli
{
    public partial class adminlogin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        sifreleme sifre = new sifreleme();
        protected void Page_Load(object sender, EventArgs e)
        {





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Session.Timeout = 20;
            SqlCommand cmd = new SqlCommand("select * from tblYonetici where admin=@admin and sifre=@sifre", bgl.baglan());
            cmd.Parameters.AddWithValue("@admin", TextBox1.Text);
            cmd.Parameters.AddWithValue("@sifre", sifre.sifrele(TextBox2.Text));
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["id"] = TextBox1.Text;

                Response.Redirect("kategori.aspx");
            }
            else
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "Hatalı Giriş Yaptınız.";
            }
            TextBox1.Text = "";
            TextBox2.Text = "";

        }
    }
}