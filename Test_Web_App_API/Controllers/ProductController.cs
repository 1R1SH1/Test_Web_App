using Microsoft.AspNetCore.Mvc;
using Test_Web_App_API.Models.Classes;
using Test_Web_App_API.Repositorys.Core;

namespace Test_Web_App_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : Controller
    {
        public static ProductCore Core { get; set; }
        public ProductController(ProductCore core)
        {
            Core = core;
        }
        [HttpGet]
        public async Task<IEnumerable<Product>> Get()
        {
            return await Core.GetProduct();
        }
    }
}
