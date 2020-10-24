using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace Caterers
{
    public partial class bookingnew : System.Web.UI.Page
    {
        static String constr1,constr2,constr3,constr4;
        static OleDbConnection con1,con2,con3,con4;
        static OleDbDataAdapter da1,da2,da3,da4;
        static DataSet ds1, ds2, ds3,ds4;


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                String rb1, rb2, rb3, rb4, rb5, rb6, rb7, rb8, rb9, rb10, rb11, rb12, rb13, rb14, rb15, rb16, rb17, rb18;
                if (RadioButton1.Checked) { rb1 = RadioButton1.Text; } else { rb1 = "NA"; }
                if (RadioButton2.Checked) { rb2 = RadioButton2.Text; } else { rb2 = "NA"; }
                if (RadioButton3.Checked) { rb3 = RadioButton3.Text; } else { rb3 = "NA"; }
                if (RadioButton4.Checked) { rb4 = RadioButton4.Text; } else { rb4 = "NA"; }
                if (RadioButton5.Checked) { rb5 = RadioButton5.Text; } else { rb5 = "NA"; }
                if (RadioButton6.Checked) { rb6 = RadioButton6.Text; } else { rb6 = "NA"; }
                if (RadioButton7.Checked) { rb7 = RadioButton7.Text; } else { rb7 = "NA"; }
                if (RadioButton8.Checked) { rb8 = RadioButton8.Text; } else { rb8 = "NA"; }
                if (RadioButton9.Checked) { rb9 = RadioButton9.Text; } else { rb9 = "NA"; }
                if (RadioButton10.Checked) { rb10 = RadioButton10.Text; } else { rb10 = "NA"; }
                if (RadioButton11.Checked) { rb11 = RadioButton11.Text; } else { rb11 = "NA"; }
                if (RadioButton12.Checked) { rb12 = RadioButton12.Text; } else { rb12 = "NA"; }
                if (RadioButton13.Checked) { rb13 = RadioButton13.Text; } else { rb13 = "NA"; }
                if (RadioButton14.Checked) { rb14 = RadioButton14.Text; } else { rb14 = "NA"; }
                if (RadioButton15.Checked) { rb15 = RadioButton15.Text; } else { rb15 = "NA"; }
                if (RadioButton16.Checked) { rb16 = RadioButton16.Text; } else { rb16 = "NA"; }
                if (RadioButton17.Checked) { rb17 = RadioButton17.Text; } else { rb17 = "NA"; }
                if (RadioButton18.Checked) { rb18 = RadioButton18.Text; } else { rb18 = "NA"; }

                con1.Open();
                OleDbCommand cmd1 = new OleDbCommand();
                cmd1.Connection = con1;
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "INSERT INTO starters ([rb1], [rb2], [rb3], [rb4],[rb5],[rb6]) Values ('" + rb1 + "' , '" + rb2 + "' , '" + rb3 + "','" + rb4 + "','"+ rb5 +"','"+ rb6 +"')";
                int n1 = cmd1.ExecuteNonQuery();


                con2.Open();
                OleDbCommand cmd2 = new OleDbCommand();
                cmd2.Connection = con2;
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "INSERT INTO MainC ([rb1], [rb2], [rb3], [rb4],[rb5],[rb6]) Values ('" + rb7 + "' , '" + rb8 + "' , '" + rb9 + "','" + rb10 + "','" + rb11 + "','" + rb12 + "')";
                int n2 = cmd2.ExecuteNonQuery();

                con3.Open();
                OleDbCommand cmd3 = new OleDbCommand();
                cmd3.Connection = con3;
                cmd3.CommandType = CommandType.Text;
                cmd3.CommandText = "INSERT INTO Desserts ([rb1], [rb2], [rb3], [rb4],[rb5],[rb6]) Values ('" + rb13 + "' , '" + rb14 + "' , '" + rb15 + "','" + rb16 + "','" + rb17 + "','" + rb18 + "')";
                int n3 = cmd3.ExecuteNonQuery();

                con4.Open();
                OleDbCommand cmd4 = new OleDbCommand();
                cmd4.Connection = con4;
                cmd4.CommandType = CommandType.Text;
                cmd4.CommandText = "INSERT INTO City([City],[Date1]) Values('"+DropDownList1.Text+"','"+TextBox1.Text+"')";
                int n4 = cmd4.ExecuteNonQuery();

                Server.Transfer("ty.aspx");

                con1.Close();
                con2.Close();
                con3.Close();
                con4.Close();
            }












        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                fngetcon();
            }
        }
        void fngetcon()
        {
            constr1 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Chanikar\\Desktop\\ASP\\starters.mdb";
            con1 = new OleDbConnection(constr1);
            da1 = new OleDbDataAdapter("select * from starters", con1);//sql query to accept all the records from table
            ds1 = new DataSet();
            da1.Fill(ds1, "starters");

            constr2 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Chanikar\\Desktop\\ASP\\MainC.mdb";
            con2 = new OleDbConnection(constr2);
            da2 = new OleDbDataAdapter("select * from MainC", con2);//sql query to accept all the records from table
            ds2 = new DataSet();
            da2.Fill(ds2, "MainC");

            constr3 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Chanikar\\Desktop\\ASP\\Desserts.mdb";
            con3 = new OleDbConnection(constr3);
            da3 = new OleDbDataAdapter("select * from Desserts", con3);//sql query to accept all the records from table
            ds3 = new DataSet();
            da3.Fill(ds3, "Desserts");

            constr4 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Chanikar\\Desktop\\ASP\\City.mdb";
            con4 = new OleDbConnection(constr4);
            da4 = new OleDbDataAdapter("select * from City", con4);//sql query to accept all the records from table
            ds4 = new DataSet();
            da4.Fill(ds4, "City");


        }

        protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}