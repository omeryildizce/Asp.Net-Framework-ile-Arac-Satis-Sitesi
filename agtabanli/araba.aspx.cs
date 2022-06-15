using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{
    public partial class araba : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string arabaID = "";
        string markaID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            arabaID = Request.QueryString["arabaID"];
            markaID = Request.QueryString["arabaID"];

            //SqlCommand cmd = new SqlCommand("select seri from  tblAraba where arabaID=@id",bgl.baglan());
            //cmd.Parameters.AddWithValue("@id", arabaID);
            //SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    Label17.Text = dr[0].ToString();


            //}
            //bgl.baglan().Close();
            SqlCommand cmd1 = new SqlCommand("select * from tblAraba LEFT JOIN tblMarka on tblAraba.markaID = tblMarka.markaID where arabaID =@araba ORDER BY tblAraba.arabaID ", bgl.baglan());

            //SqlCommand cmd1 = new SqlCommand("select * from tblAraba where arabaID =@araba", bgl.baglan());
            cmd1.Parameters.AddWithValue("@araba", arabaID);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            DataList1.DataSource = dr1;
            DataList1.DataBind();

            SqlCommand cmd2 = new SqlCommand("select * from tblYorumlar where arabaID =@yorum and onay=@onay", bgl.baglan());
            cmd2.Parameters.AddWithValue("@yorum", arabaID);
            cmd2.Parameters.AddWithValue("@onay", "true");
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text != string.Empty && TextBox2.Text != string.Empty && TextBox3.Text != string.Empty)
            {
                SqlCommand ekle = new SqlCommand("insert into tblYorumlar (yorumAd,yorumSoyad,icerik, arabaID) values(@ad,@soyad,@icerik,@id)", bgl.baglan());
                ekle.Parameters.AddWithValue("@ad", TextBox1.Text);
                ekle.Parameters.AddWithValue("@soyad", TextBox2.Text);
                ekle.Parameters.AddWithValue("@icerik", TextBox3.Text);
                ekle.Parameters.AddWithValue("@id", arabaID);
                ekle.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox2.Text = string.Empty;

            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}