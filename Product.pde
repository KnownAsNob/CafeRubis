class Product
{
  Product(name, price)
  {
    String name;
    float price;
  }
  


ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

  
  void loadData()
  {
    Table Products = loadTable("cafeProducts.csv", "header");
    
    for (TableRow row: Products.rows())
    {
     row = new Product(Products);
     products.add(Products);
    }
  }
  
  
}