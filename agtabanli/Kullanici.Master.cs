﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace agtabanli
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinif bgl = new sqlsinif();

        protected void Page_Load(object sender, EventArgs e)
        {
           SqlCommand cmd1 = new SqlCommand("select * from tblMarka", bgl.baglan());
            SqlDataReader reader = cmd1.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
            
            SqlCommand cmdseri = new SqlCommand("SELECT DISTINCT seri, markaID FROM tblAraba", bgl.baglan());
            SqlDataReader readerseri = cmdseri.ExecuteReader();
            DataList2.DataSource = readerseri;
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}