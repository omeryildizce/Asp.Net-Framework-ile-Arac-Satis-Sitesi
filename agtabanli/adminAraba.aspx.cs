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
    public partial class adminAraba : System.Web.UI.Page
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
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                TextBox8.Text = string.Empty;
                TextBox9.Text = string.Empty;
                TextBox10.Text = string.Empty;
                TextBox11.Text = string.Empty;
                TextBox12.Text = string.Empty;
                TextBox13.Text = string.Empty;
                TextBox14.Text = string.Empty;
                TextBox15.Text = string.Empty;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            }


            if (TextBox1.Text != "")
            {
                SqlCommand ekle = new SqlCommand("insert into tblAraba (resim,seri,model,yil,yakit,vites,km,kasaTipi,motorGucu,motorHacmi,cekis,renk,plaka,durumu,fiyat,markaID) values(@resim,@seri,@model,@yil,@yakit,@vites,@km,@kasaTipi,@motorGucu,@motorHacmi,@cekis,@renk,@plaka,@durumu,@fiyat,@markaID)", bgl.baglan());
                if (FileUpload1.HasFile)
                {
                    ekle.Parameters.AddWithValue("@resim", "~/resimler/" + FileUpload1.FileName);
                    TextBox15.Text = "";
                }
                else
                {
                    ekle.Parameters.AddWithValue("@resim", TextBox15.Text);
                }

                ekle.Parameters.AddWithValue("@seri", TextBox1.Text);
                ekle.Parameters.AddWithValue("@model", TextBox2.Text);
                ekle.Parameters.AddWithValue("@yil", TextBox3.Text);
                ekle.Parameters.AddWithValue("@yakit", TextBox4.Text);
                ekle.Parameters.AddWithValue("@vites", TextBox5.Text);
                ekle.Parameters.AddWithValue("@km", TextBox6.Text);
                ekle.Parameters.AddWithValue("@kasaTipi", TextBox7.Text);
                ekle.Parameters.AddWithValue("@motorGucu", TextBox8.Text);
                ekle.Parameters.AddWithValue("@motorHacmi", TextBox9.Text);
                ekle.Parameters.AddWithValue("@cekis", TextBox10.Text);
                ekle.Parameters.AddWithValue("@renk", TextBox11.Text);
                ekle.Parameters.AddWithValue("@plaka", TextBox12.Text);
                ekle.Parameters.AddWithValue("@durumu", TextBox13.Text);
                ekle.Parameters.AddWithValue("@fiyat", TextBox14.Text);
                ekle.Parameters.AddWithValue("@markaID", DropDownList1.SelectedValue);
                ekle.ExecuteNonQuery();
                bgl.baglan().Close();
                GridView1.DataBind();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                TextBox8.Text = string.Empty;
                TextBox9.Text = string.Empty;
                TextBox10.Text = string.Empty;
                TextBox11.Text = string.Empty;
                TextBox12.Text = string.Empty;
                TextBox13.Text = string.Empty;
                TextBox14.Text = string.Empty;
                TextBox15.Text = string.Empty;
                Label42.Text = string.Empty;

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label42.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox15.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox1.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[7].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[8].Text;
            TextBox7.Text = GridView1.SelectedRow.Cells[9].Text;
            TextBox8.Text = GridView1.SelectedRow.Cells[10].Text;
            TextBox9.Text = GridView1.SelectedRow.Cells[11].Text;
            TextBox10.Text = GridView1.SelectedRow.Cells[12].Text;
            TextBox11.Text = GridView1.SelectedRow.Cells[13].Text;
            TextBox12.Text = GridView1.SelectedRow.Cells[14].Text;
            TextBox13.Text = GridView1.SelectedRow.Cells[15].Text;
            TextBox14.Text = GridView1.SelectedRow.Cells[16].Text;
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[17].Text;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //SqlCommand guncelle = new SqlCommand("update tblMarka set marka=@marka where arabaID=@id", bgl.baglan());

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            }
            if (TextBox1.Text != "")
            {
                if (TextBox1.Text != "")
                {
                    SqlCommand guncelle = new SqlCommand("update tblAraba set resim=@resim,seri=@seri,model=@model,yil=@yil,yakit=@yakit,vites=@vites,km=@km,kasaTipi=@kasaTipi,motorGucu=@motorGucu,motorHacmi=@motorHacmi,cekis=@cekis,renk=@renk,plaka=@plaka,durumu=@durumu,fiyat=@fiyat,markaID=@markaID  where arabaID=@id", bgl.baglan());
                    guncelle.Parameters.AddWithValue("@id", Label42.Text);

                    if (FileUpload1.HasFile)
                    {
                        guncelle.Parameters.AddWithValue("@resim", "~/resimler/" + FileUpload1.FileName);
                        TextBox15.Text = "";

                    }
                    else
                    {
                        guncelle.Parameters.AddWithValue("@resim", TextBox15.Text);
                    }

                    guncelle.Parameters.AddWithValue("@seri", TextBox1.Text);
                    guncelle.Parameters.AddWithValue("@model", TextBox2.Text);
                    guncelle.Parameters.AddWithValue("@yil", TextBox3.Text);
                    guncelle.Parameters.AddWithValue("@yakit", TextBox4.Text);
                    guncelle.Parameters.AddWithValue("@vites", TextBox5.Text);
                    guncelle.Parameters.AddWithValue("@km", TextBox6.Text);
                    guncelle.Parameters.AddWithValue("@kasaTipi", TextBox7.Text);
                    guncelle.Parameters.AddWithValue("@motorGucu", TextBox8.Text);
                    guncelle.Parameters.AddWithValue("@motorHacmi", TextBox9.Text);
                    guncelle.Parameters.AddWithValue("@cekis", TextBox10.Text);
                    guncelle.Parameters.AddWithValue("@renk", TextBox11.Text);
                    guncelle.Parameters.AddWithValue("@plaka", TextBox12.Text);
                    guncelle.Parameters.AddWithValue("@durumu", TextBox13.Text);
                    guncelle.Parameters.AddWithValue("@fiyat", TextBox14.Text);
                    guncelle.Parameters.AddWithValue("@markaID", DropDownList1.SelectedValue);
                    guncelle.ExecuteNonQuery();
                    bgl.baglan().Close();
                    GridView1.DataBind();
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    TextBox5.Text = string.Empty;
                    TextBox6.Text = string.Empty;
                    TextBox7.Text = string.Empty;
                    TextBox8.Text = string.Empty;
                    TextBox9.Text = string.Empty;
                    TextBox10.Text = string.Empty;
                    TextBox11.Text = string.Empty;
                    TextBox12.Text = string.Empty;
                    TextBox13.Text = string.Empty;
                    TextBox14.Text = string.Empty;
                    TextBox15.Text = string.Empty;
                    Label42.Text = string.Empty;


                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlCommand sil = new SqlCommand("delete from tblAraba where arabaID=@id", bgl.baglan());
                sil.Parameters.AddWithValue("@id", Label42.Text);
                sil.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                TextBox8.Text = string.Empty;
                TextBox9.Text = string.Empty;
                TextBox10.Text = string.Empty;
                TextBox11.Text = string.Empty;
                TextBox12.Text = string.Empty;
                TextBox13.Text = string.Empty;
                TextBox14.Text = string.Empty;
                TextBox15.Text = string.Empty;
                Label42.Text = string.Empty;
                GridView1.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}