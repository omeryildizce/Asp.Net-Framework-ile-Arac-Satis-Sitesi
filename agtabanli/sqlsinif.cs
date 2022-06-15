using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace agtabanli
{
    public class sqlsinif
    {
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source = DESKTOP-4CB1TCD ;Initial Catalog=agtabanli;Integrated Security=True;");
            baglanti.Open();
            return baglanti;
        }
    }
}