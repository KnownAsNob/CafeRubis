Product product;

/* Name: Niall O'Brien
  Student No: C16391553
  Course: DT-282*/

void setup()
{
  size(800, 600);
  loadData();
  printProducts();
  displayProducts();
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

  void printProducts()
  {
    for(Product prod: products)
    {
     println(prod.toString());
    }
  }
  
  void displayProducts()
  {
    //Draw Boxes
    int border = 50;
    int POS_X = 0;
    int POS_Y = 0;
    
    //Menu Title
    textSize(30);
    fill(0);
    text("Cafe Rubis Till System", width/2 - 150, border/2);
    
    //Buttons
    for(Product prod: products)
    {
     String S = prod.toString();
     float P = prod.toPrice();
     
     fill(254);
     stroke(0);
     rect(border + POS_X, border + POS_Y, width/3, 50);
         textAlign(LEFT, CENTER);
         textSize(15);
         fill(0);
         text(S, border + 20, border+25 + POS_Y);
         text(P, border+ 200, border+25 + POS_Y);
     
     POS_Y = POS_Y + 60;
    }
    
    line(width/2, border, width/2, height - border);
  }
  
  void mousePressed()
  {
    
  }