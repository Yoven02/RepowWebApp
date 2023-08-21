using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.classes;

namespace WebApplication3
{
    public partial class Men : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Product product = new Product();
                product.Category_Id = 1;
                dtListProducts.DataSource = product.GetAllProductsByCategoryId();
                dtListProducts.DataBind();
            }
        }
    }
}