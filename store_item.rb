book = {color: "red", price: "20", interesting: "maybe"}
pen = {:color => "blue", :price => "5", :interesting => "yes"}
roomba = {"color" => "black", "price" => "300", "interesting" => "absolutely"}

p "this mystery item is the color #{book[:color]} and costs #{book[:price]}. is it interesting? #{book[:interesting]}."
p "this mystery item is the color #{pen[:color]} and costs #{pen[:price]}. is it interesting? #{pen[:interesting]}."
p "this mystery item is the color #{roomba['color']} and costs #{roomba['price']}. is it interesting? #{roomba['interesting']}."