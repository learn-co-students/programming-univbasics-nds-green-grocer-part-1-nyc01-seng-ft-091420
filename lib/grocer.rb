require 'pry'
def find_item_by_name_in_collection(name, collection)
item=nil
  counter = 0
  collection.each do |hash|
    hash.each do |key, value|
      if name == value
        item=hash
      end
    end
  end
  item
end

def consolidate_cart(cart)
new_cart = cart
  new_cart.each do |hash|
    counter= 0
    item_counter = 0
    while counter < new_cart.length do
      if hash == new_cart[counter]
        hash[:count] = item_counter + 1
        item_counter = item_counter +1
      end
      counter += 1
    end
  end
  new_cart.uniq
end

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
