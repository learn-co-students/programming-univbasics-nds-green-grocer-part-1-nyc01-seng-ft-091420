def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  nope = nil
  collection.each do |i|
    if name == i[:item]
      nope = i
    end
  end
  return nope
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
new_cart = []

cart.each do |i|
  count = 0
  cart.each do |copy|
    if i[:item] == copy[:item]
      count += 1
    end
  end
  i[:count] = count
  new_cart.push(i)
end
  new_cart = new_cart.uniq
  new_cart
end
