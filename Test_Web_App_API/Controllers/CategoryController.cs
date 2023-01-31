using Microsoft.AspNetCore.Mvc;
using Test_Web_App_API.Models.Classes;
using Test_Web_App_API.Repositorys.Core;

namespace Test_Web_App_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : Controller
    {
        public static CategoryCore Core { get; set; }
        public CategoryController(CategoryCore core)
        {
            Core = core;
        }
        [HttpPost]
        public async Task<IActionResult> Post([FromBody] Category category)
        {
            await Core.PostCategory(category);
            return Ok();
        }
        [HttpGet]
        public async Task<IEnumerable<Category>> Get()
        {
            return await Core.GetCategory();
        }
    }
}
