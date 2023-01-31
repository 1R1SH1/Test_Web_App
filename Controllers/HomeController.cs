using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using System.Diagnostics;
using Test_Web_App.Models.Classes;
using Test_Web_App.Repositorys;

namespace Test_Web_App.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            var product = JsonConvert.DeserializeObject<List<Product>>(CRUD.Read("Product")).OrderBy(d => d.CategoryId).ToList();
            return View(product);
        }
    }
}
