def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |info|
    if info[:item] == name
      return info
    end
  end
  nil
end


def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  
  cart.each do |item|
    name = item[:item]

    info = find_item_by_name_in_collection(name, new_cart)

    if info
      info[:count] += 1
    else
      new_cart << {
        :item => name,
        :price => item[:price],
        :clearance => item[:clearance],
        :count => 1 }
    end
  end
  new_cart

end


  