using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
namespace WebApplication4
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command;

            SqlConnection conn;

            String queryTable;

            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            conn.Open();

            queryTable = "INSERT into register (EventName,GuestNumber,PaymentAmount,Emailaddress) values (@EventName,@GuestNumber,@PaymentAmount,@Emailaddress);";

            command = new SqlCommand(queryTable, conn);

            command.Parameters.AddWithValue("@EventName", TextBox1.Text);

            command.Parameters.AddWithValue("@GuestNumber", TextBox2.Text);

            command.Parameters.AddWithValue("@PaymentAmount", TextBox3.Text);

            command.Parameters.AddWithValue("@Emailaddress", TextBox4.Text);

            command.ExecuteNonQuery();

            command.Dispose();

            conn.Close();

            Label1.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";






        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label2.Text = TextBox1.Text;
            Label3.Text = TextBox2.Text;
            Label4.Text = TextBox3.Text;
            Label5.Text = TextBox4.Text;
        }
    }
}