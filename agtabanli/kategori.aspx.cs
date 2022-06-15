using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{
    public partial class kategori : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["admin"];
            if (Page.IsPostBack == false)
            {

            }
             

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            Label27.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {

                SqlCommand ekle = new SqlCommand("insert into tblMarka (marka) values(@marka)", bgl.baglan());
                ekle.Parameters.AddWithValue("@marka", TextBox1.Text);
                ekle.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = string.Empty;
                Label27.Text = "";
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlCommand guncelle = new SqlCommand("update tblMarka set marka=@marka where markaID=@id", bgl.baglan());
                guncelle.Parameters.AddWithValue("@id", Label27.Text);
                guncelle.Parameters.AddWithValue("@marka", TextBox1.Text);
                guncelle.ExecuteNonQuery();
                bgl.baglan().Close();

                TextBox1.Text = string.Empty;
                Label27.Text = "";
                GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlCommand sil = new SqlCommand("delete from tblMarka where markaID=@id", bgl.baglan());
                sil.Parameters.AddWithValue("@id", Label27.Text);
                sil.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = string.Empty;
                Label27.Text = "";
                GridView1.DataBind();
            }
        }
    }
}