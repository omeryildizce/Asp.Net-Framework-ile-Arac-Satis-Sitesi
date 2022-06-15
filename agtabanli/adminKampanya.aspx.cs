using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.IO;
namespace agtabanli
{
    public partial class adminKampanya : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["admin"];

            if (Page.IsPostBack == false)
            {
                
                SqlCommand cmd = new SqlCommand("select * from tblMarka", bgl.baglan());
                SqlDataReader reader = cmd.ExecuteReader();
                DropDownList1.DataTextField = "marka";
                DropDownList1.DataValueField = "markaID";
                DropDownList1.DataSource = reader;
                DropDownList1.DataBind();

                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                Image1.ImageUrl = string.Empty;
                Label25.Text = "";
                Label33.Text = "";


            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = "";

            Label33.Text = GridView2.SelectedRow.Cells[1].Text;
            Label25.Text = GridView2.SelectedRow.Cells[2].Text;
            Image1.ImageUrl = GridView2.SelectedRow.Cells[2].Text;
            TextBox5.Text = GridView2.SelectedRow.Cells[3].Text;
            TextBox2.Text = GridView2.SelectedRow.Cells[4].Text;
            TextBox6.Text = GridView2.SelectedRow.Cells[5].Text;
            TextBox3.Text = GridView2.SelectedRow.Cells[8].Text;
            TextBox7.Text = GridView2.SelectedRow.Cells[13].Text;
            TextBox4.Text = GridView2.SelectedRow.Cells[16].Text;

            DropDownList1.SelectedValue = GridView2.SelectedRow.Cells[17].Text;
            TextBox8.Text = "0";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            }


            if (TextBox5.Text != "")
            {
                SqlCommand ekle = new SqlCommand("insert into tblKampanya (marka, seri,model,yil,km,renk,fiyat,kampanyaFiyat,resim) values (@marka, @seri,@model,@yil,@km,@renk,@fiyat,@kampanyaFiyat,@resim)", bgl.baglan());


                if (FileUpload1.HasFile)
                {
                    ekle.Parameters.AddWithValue("@resim", "~/resimler/" + FileUpload1.FileName);
                    Label25.Text = "";
                }
                else
                {
                    ekle.Parameters.AddWithValue("@resim", Label25.Text);
                }

                ekle.Parameters.AddWithValue("@marka", DropDownList1.SelectedItem.Text);
                ekle.Parameters.AddWithValue("@seri", TextBox5.Text.ToString());
                ekle.Parameters.AddWithValue("@model", TextBox2.Text.ToString());
                ekle.Parameters.AddWithValue("@yil", TextBox6.Text);
                ekle.Parameters.AddWithValue("@km", TextBox3.Text.ToString());
                ekle.Parameters.AddWithValue("@renk", TextBox7.Text.ToString());
                ekle.Parameters.AddWithValue("@fiyat", TextBox4.Text);
                ekle.Parameters.AddWithValue("@kampanyaFiyat", TextBox8.Text);
                ekle.ExecuteNonQuery(); 
                
                bgl.baglan().Close();
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                TextBox8.Text = string.Empty;
                Label25.Text = "";
                Label33.Text = "";
                GridView1.DataBind();
                GridView2.DataBind();

            }
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = "";
            Label33.Text = GridView1.SelectedRow.Cells[1].Text;
            Label25.Text = GridView1.SelectedRow.Cells[10].Text;
            TextBox8.Text = GridView1.SelectedRow.Cells[9].Text;
            Image1.ImageUrl = GridView1.SelectedRow.Cells[10].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox7.Text = GridView1.SelectedRow.Cells[7].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[8].Text;
            
            DropDownList1.SelectedItem.Text = GridView1.SelectedRow.Cells[2].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Label33.Text != "")
            { 
                SqlCommand sil = new SqlCommand("delete from tblKampanya where kampanyaID=@id", bgl.baglan());
            sil.Parameters.AddWithValue("@id", Label33.Text);
            sil.ExecuteNonQuery();
            bgl.baglan().Close();
            bgl.baglan().Close();
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            Label25.Text = "";
            Label33.Text = "";
            GridView1.DataBind();
            GridView2.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            }


            if (TextBox5.Text != "")
            {
                SqlCommand ekle = new SqlCommand("update tblKampanya set marka=@marka, seri=@seri,model=@model,yil=@yil,km=@km,renk=@renk,fiyat=@fiyat,kampanyaFiyat=@kampanyaFiyat,resim=@resim where kampanyaID=@id", bgl.baglan());
                  ekle.Parameters.AddWithValue("@id", Label33.Text);


                if (FileUpload1.HasFile)
                {
                    ekle.Parameters.AddWithValue("@resim", "~/resimler/" + FileUpload1.FileName);
                    Label25.Text = "";
                }
                else
                {
                    ekle.Parameters.AddWithValue("@resim", Label25.Text);
                }

                ekle.Parameters.AddWithValue("@marka", DropDownList1.SelectedItem.Text);
                ekle.Parameters.AddWithValue("@seri", TextBox5.Text);
                ekle.Parameters.AddWithValue("@model", TextBox2.Text);
                ekle.Parameters.AddWithValue("@yil", TextBox6.Text);
                ekle.Parameters.AddWithValue("@km", TextBox3.Text);
                ekle.Parameters.AddWithValue("@renk", TextBox7.Text);
                ekle.Parameters.AddWithValue("@fiyat", TextBox4.Text);
                ekle.Parameters.AddWithValue("@kampanyaFiyat", TextBox8.Text);
                ekle.ExecuteNonQuery();

                bgl.baglan().Close();
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                TextBox8.Text = string.Empty;
                Label25.Text = "";
                Label33.Text = "";
                GridView1.DataBind();
                GridView2.DataBind();

            }
        }
    }
}