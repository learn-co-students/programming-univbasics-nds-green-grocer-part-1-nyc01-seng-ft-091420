require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item_data = nil
  collection.each do |item|
    if item[:item] == name
      item_data = item
    end
  end
  return item_data
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = []

  cart.each do |item|
    item_count = 0
    cart.each do |item2|
      if item[:item] == item2[:item]
        item_count += 1
      end
    end
    item[:count] = item_count
    consolidated_cart << item
  end
  consolidated_cart = consolidated_cart.uniq
  return consolidated_cart
end


  