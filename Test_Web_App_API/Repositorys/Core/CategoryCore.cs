using Microsoft.EntityFrameworkCore;
using Test_Web_App_API.Models.Classes;
using Test_Web_App_API.Repositorys.Data;

namespace Test_Web_App_API.Repositorys.Core
{
    public class CategoryCore
    {
        public static DataContext Context { get; set; }
        public CategoryCore(DataContext dataContext)
        {
            Context = dataContext;
        }
        public async Task PostCategory(Category category)
        {
            await Context.Categories.AddAsync(category);
            await Context.SaveChangesAsync();
        }
        public async Task<IEnumerable<Category>> GetCategory()
        {
            return await Context.Categories.ToListAsync();
        }
    }
}
