using Microsoft.EntityFrameworkCore;
using Test_Web_App_API.Models.Classes;
using Test_Web_App_API.Repositorys.Data;

namespace Test_Web_App_API.Repositorys.Core
{
    public class ProductCore
    {
        public static DataContext Context { get; set; }
        public ProductCore(DataContext dataContext)
        {
            Context = dataContext;
        }
        public async Task PostProduct(Product product)
        {
            await Context.Products.AddAsync(product);
            await Context.SaveChangesAsync();
        }

        public async Task<IEnumerable<Product>> GetProduct()
        {
            return await Context.Products
                                .FromSql($"Select p.Id, p.CategoryId, p.ProductName, c.Name From dbo.Products p Join dbo.Categories c On c.Id = p.CategoryId")
                                .ToListAsync();
        }
    }
}
