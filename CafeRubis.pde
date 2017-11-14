Product product;

/* Name: Niall O'Brien
  Student No: C16391553
  Course: DT-282*/

void setup()
{
  size(800, 600);
  loadData();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

  void loadData()
  {
    Table Products = loadTable("cafeProducts.csv", "header");
    
    for (TableRow row: Products.rows())
    {
      Product product = new Product(row);
      products.add(product);
    }
  }