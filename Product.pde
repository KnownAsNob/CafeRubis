class Product
{
  Product(TableRow row)
  {
    String name = row.getString("Name");
    float price = row.getFloat("Price");
  }
}