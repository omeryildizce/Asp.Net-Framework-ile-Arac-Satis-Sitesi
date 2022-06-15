using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace agtabanli
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tblMesaj (ad, mail, konu, mesaj) values (@ad,@mail,@konu,@mesaj)",bgl.baglan());
            cmd.Parameters.AddWithValue("@ad", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mail", TextBox2.Text);
            cmd.Parameters.AddWithValue("@konu", TextBox3.Text);
            cmd.Parameters.AddWithValue("@mesaj", TextBox4.Text);
            cmd.ExecuteNonQuery();
            bgl.baglan().Close();
        }
    }
}