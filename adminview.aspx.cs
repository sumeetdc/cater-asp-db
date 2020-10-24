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
    public partial class adminview : System.Web.UI.Page
    {
        static String constr,constr1, constr2, constr3, constr4;
        static OleDbConnection con,con1, con2, con3, con4;
        static OleDbDataAdapter da, da1, da2, da3, da4;
        static DataSet ds, ds1, ds2, ds3, ds4;
        static int index=0;
        static int maxrow;
        

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (index < maxrow - 1 )
            {
                index++;
                getCaterers();
                getCity();
                getStarters();
                getMainCourse();
                getDesserts();


            }
            else
            {
                Label11.Text = "Last Order";
            }

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (index > 0)
            {
                index--;
                getCaterers();
                getCity();
                getStarters();
                getMainCourse();
                getDesserts();
            
             
            }
            else
            {
                Label11.Text = "First Order";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            index = 0;
            getCaterers();
            getCity();
            getStarters();
            getMainCourse();
            getDesserts();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
   
            index = maxrow - 1;
            getCaterers();
            getCity();
            getStarters();
            getMainCourse();
            getDesserts();



        }




        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                fngetcon();
               
            }

        }

        void getCaterers()
        {
            TextBox1.Text = ds.Tables["caterers"].Rows[index].ItemArray.GetValue(1).ToString();
            TextBox2.Text = ds.Tables["caterers"].Rows[index].ItemArray.GetValue(2).ToString();
            TextBox3.Text = ds.Tables["caterers"].Rows[index].ItemArray.GetValue(4).ToString();
        }

        void getCity()
        {
            TextBox4.Text = ds4.Tables["City"].Rows[index].ItemArray.GetValue(1).ToString();
            TextBox5.Text = ds4.Tables["City"].Rows[index].ItemArray.GetValue(2).ToString();
        }

        void getStarters()
        {
            TextBox6.Text = ds1.Tables["starters"].Rows[index].ItemArray.GetValue(1).ToString();
            TextBox9.Text = ds1.Tables["starters"].Rows[index].ItemArray.GetValue(2).ToString();
            TextBox10.Text = ds1.Tables["starters"].Rows[index].ItemArray.GetValue(3).ToString();
            TextBox11.Text = ds1.Tables["starters"].Rows[index].ItemArray.GetValue(4).ToString();
            TextBox12.Text = ds1.Tables["starters"].Rows[index].ItemArray.GetValue(5).ToString();
            TextBox13.Text = ds1.Tables["starters"].Rows[index].ItemArray.GetValue(6).ToString();
        }

        void getMainCourse()

        {
            TextBox7.Text = ds2.Tables["MainC"].Rows[index].ItemArray.GetValue(1).ToString();
            TextBox14.Text = ds2.Tables["MainC"].Rows[index].ItemArray.GetValue(2).ToString();
            TextBox15.Text = ds2.Tables["MainC"].Rows[index].ItemArray.GetValue(3).ToString();
            TextBox16.Text = ds2.Tables["MainC"].Rows[index].ItemArray.GetValue(4).ToString();
            TextBox17.Text = ds2.Tables["MainC"].Rows[index].ItemArray.GetValue(5).ToString();
            TextBox18.Text = ds2.Tables["MainC"].Rows[index].ItemArray.GetValue(6).ToString();
        }

        void getDesserts()
        {
            TextBox8.Text = ds3.Tables["Desserts"].Rows[index].ItemArray.GetValue(1).ToString();
            TextBox19.Text = ds3.Tables["Desserts"].Rows[index].ItemArray.GetValue(2).ToString();
            TextBox20.Text = ds3.Tables["Desserts"].Rows[index].ItemArray.GetValue(3).ToString();
            TextBox21.Text = ds3.Tables["Desserts"].Rows[index].ItemArray.GetValue(4).ToString();
            TextBox22.Text = ds3.Tables["Desserts"].Rows[index].ItemArray.GetValue(5).ToString();
            TextBox23.Text = ds3.Tables["Desserts"].Rows[index].ItemArray.GetValue(6).ToString();
        }

        void fngetcon()
        {
            constr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\Chanikar\\Desktop\\ASP\\caterers.mdb";
            con = new OleDbConnection(constr);
            da = new OleDbDataAdapter("select * from caterers", con);//sql query to accept all the records from table
            ds = new DataSet();
            da.Fill(ds, "caterers");

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

            maxrow =  ds.Tables["caterers"].Rows.Count;
            



            getCaterers();
            getCity();
            getStarters();
            getMainCourse();
            getDesserts();

        }

        

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}