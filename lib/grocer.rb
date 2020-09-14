require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  collection.each do |ipc|
    if ipc[:item] == name
      return ipc
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  receipt = []
  name =
  lookup =
  cart.each do |cart_hashes|
    name = cart_hashes[:item]
    lookup = find_item_by_name_in_collection(name, cart)
    cart_hashes[:count] = cart.count(lookup)
    receipt.push(cart_hashes)
  end

end


  