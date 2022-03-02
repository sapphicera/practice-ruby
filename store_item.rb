# book = {color: "red", price: "20", interesting: "maybe"}
# pen = {:color => "blue", :price => "5", :interesting => "yes"}
# roomba = {"color" => "black", "price" => "300", "interesting" => "absolutely"}

# p "this mystery item is the color #{book[:color]} and costs #{book[:price]}. is it interesting? #{book[:interesting]}."
# p "this mystery item is the color #{pen[:color]} and costs #{pen[:price]}. is it interesting? #{pen[:interesting]}."
# p "this mystery item is the color #{roomba['color']} and costs #{roomba['price']}. is it interesting? #{roomba['interesting']}."

class Items
  attr_reader :name, :color, :price, :interesting
  attr_writer :color, :interesting

  def initialize(input_name, input_color, input_price, input_interesting)
    @name = input_name
    @color = input_color
    @price = input_price
    @interesting = input_interesting
  end
end

item1 = Items.new("book", "red", 20, "maybe")

item1.color = "purple"
item1.interesting = "kinda cool actually"


puts "this item is a #{item1.color} #{item1.name}. It costs #{item1.price} dollars. Critics say it is #{item1.interesting}."