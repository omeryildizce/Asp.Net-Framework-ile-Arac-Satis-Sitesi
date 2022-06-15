using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{
    public partial class adminpanel : System.Web.UI.Page
    {
        sqlsinif bgl=new sqlsinif();
        sifreleme sifre=new sifreleme();
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["admin"];
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label33.Text = GridView1.SelectedRow.Cells[1].Text;

            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
          
            TextBox2.Text = sifre.sifrecoz(GridView1.SelectedRow.Cells[3].Text);
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {

                SqlCommand ekle = new SqlCommand("insert into tblYonetici (admin,sifre) values(@admin,@sifre)", bgl.baglan());
                
                ekle.Parameters.AddWithValue("@admin", TextBox1.Text);
                ekle.Parameters.AddWithValue("@sifre", sifre.sifrele(TextBox2.Text));
                ekle.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Label33.Text = "";
                GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlCommand guncelle = new SqlCommand("update tblYonetici set admin=@admin ,sifre=@sifre where adminID=@id", bgl.baglan());
                guncelle.Parameters.AddWithValue("@id", Label33.Text);
                guncelle.Parameters.AddWithValue("@admin", TextBox1.Text);
                guncelle.Parameters.AddWithValue("@sifre",sifre.sifrele( TextBox2.Text));

                guncelle.ExecuteNonQuery();
                bgl.baglan().Close();

                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Label33.Text = "";
                GridView1.DataBind();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlCommand sil = new SqlCommand("delete from tblYonetici where adminID=@id", bgl.baglan());
                sil.Parameters.AddWithValue("@id", Label33.Text);
                sil.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Label33.Text = "";
                GridView1.DataBind();
            }
        }
    }
}