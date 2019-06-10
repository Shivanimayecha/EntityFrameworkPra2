using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkPra2
{
    public partial class EntityFrmwrkPra2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                using (demoEntities entities = new demoEntities())
                {
                    product pro = new product();
                    category cat = new category();
                    var details = (from p in entities.products
                                   join c in entities.categories on p.CategoryID equals c.CategoryID
                                   orderby p.id
                                   select new
                                   {
                                       id = p.id,
                                       ProductName = p.ProductName,
                                       price = p.Price,
                                       categoryName = c.CategoryName,
                                       Description = c.Description
                                   }).Take(10).ToList();
                    gvProducts.DataSource = details;
                    gvProducts.DataBind();
                }
            }
        }
    }
}