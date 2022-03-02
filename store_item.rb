# ------ Using Hashes to Store Information ------

# book = {color: "red", price: "20", interesting: "maybe"}
# pen = {:color => "blue", :price => "5", :interesting => "yes"}
# roomba = {"color" => "black", "price" => "300", "interesting" => "absolutely"}

# p "this mystery item is the color #{book[:color]} and costs #{book[:price]}. is it interesting? #{book[:interesting]}."
# p "this mystery item is the color #{pen[:color]} and costs #{pen[:price]}. is it interesting? #{pen[:interesting]}."
# p "this mystery item is the color #{roomba['color']} and costs #{roomba['price']}. is it interesting? #{roomba['interesting']}."

# ------ Using Classes to Read/Write Information ------

class Items
  attr_reader :name, :color, :price, :interesting
  attr_writer :color, :interesting

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
    @interesting = input_options[:interesting]
  end
end

item1 = Items.new(
  name: "item",
  color: "red",
  price: "20",
  interesting: "maybe"
)

item1.color = "purple"
item1.interesting = "kinda cool actually"

puts "This item is a #{item1.color} #{item1.name}. It costs #{item1.price} dollars. Critics say it is #{item1.interesting}."