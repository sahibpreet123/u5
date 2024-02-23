# Clear existing data
Product.destroy_all
Category.destroy_all

# Load data from CSV
csv_file = Rails.root.join('db', 'products.csv')
csv_data = File.read(csv_file)
products = CSV.parse(csv_data, headers: true)

products.each do |row|
  # Find or create category
  category = Category.find_or_create_by(name: row['category'])

  # Create product
  Product.create(
    title: row['title'],
    description: row['description'],
    price: row['price'],
    stock_quantity: row['stock_quantity'],
    category: category
  )
end
