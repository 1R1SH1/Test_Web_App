using Microsoft.AspNetCore.Mvc;
using System.Text;

namespace Test_Web_App.Repositorys
{
    public class CRUD
    {
        public static HttpClient httpClient = new HttpClient();
        public static string Host = "https://localhost:7077/api/";

        public static string Read(string url)
        {
            return httpClient.GetAsync($"{Host}{url}").Result.Content.ReadAsStringAsync().Result;
        }
    }
}
