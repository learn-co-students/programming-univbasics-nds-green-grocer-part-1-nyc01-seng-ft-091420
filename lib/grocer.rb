def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |hash, item_info|
    if hash[:item] == name
      return hash
    end  
  end
return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart_output = cart
  
  cart_output.each do |hash|
    counter = 0 
    item_counter = 0 
    
    while counter < cart_output.length do 
      if hash == cart_output[counter]
        hash[:count] = item_counter + 1 
        item_counter = item_counter + 1
      end
      counter += 1
    end
  end
end


  