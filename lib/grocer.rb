def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find do |item|
    item[:item] == name
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  new_cart = []
  cart.each do |listing|
    listing[:count] = cart.count(listing)
    new_cart << listing
  end
  new_cart.uniq!
  new_cart
end


  