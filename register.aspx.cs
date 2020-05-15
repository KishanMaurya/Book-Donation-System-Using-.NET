using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace BookDonate
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String a1 = DropDownList1.Text;
                String a2 = TextBox2.Text;
                String pass = TextBox4.Text;
                String paas1 = TextBox10.Text;
                if(pass == "")
                {
                    Response.Write("<script>alert('Password Is blank')</script>");
                }
                Response.Write(a1+","+a2);
                SqlConnection cn = new SqlConnection(@"Data source=.\sqlexpress; Integrated Security=true; Initial Catalog=DB2019;");
                cn.Open();
                string Query = "insert into tbl_repage (user_type,name,email,phone,password,address,city,state,country,pincode) values(@Type,@Name,@Email,@Phone,@Password,@Address,@City,@State,@Country,@Pincode)";
                SqlCommand cmd = new SqlCommand(Query,cn);
                cmd.Parameters.AddWithValue("@Type",DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Name",TextBox1.Text);
                cmd.Parameters.AddWithValue("@Email",TextBox2.Text);
                cmd.Parameters.AddWithValue("@Phone",TextBox3.Text);
                cmd.Parameters.AddWithValue("@Password",TextBox4.Text);
                cmd.Parameters.AddWithValue("@Address",TextBox5.Text);
                cmd.Parameters.AddWithValue("@City",TextBox6.Text);
                cmd.Parameters.AddWithValue("@State",TextBox7.Text);
                cmd.Parameters.AddWithValue("@Country",TextBox8.Text);
                cmd.Parameters.AddWithValue("@Pincode",TextBox9.Text);
                int i = cmd.ExecuteNonQuery();
                if(i>0)
                {
                    Response.Write("<script>alert('Regiseter Successfully...!')</script>");
                    Response.Write("<script>window.open('index.aspx')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error..!"+ex.Message);
            }
        }
    }
}