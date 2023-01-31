namespace Test_Web_App_API.Models.Classes
{
    public class Product
    {
        public int Id { get; set; }
        public string ProductName { get; set; }
        public int CategoryId { get; set; }
        public Category Categories { get; set; }
    }
}
