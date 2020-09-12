require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and output
    count = 0

  while count < collection.length do
    if  collection[count][:item] == name 
      return collection[count]
    end
    count += 1
  end
  nil
end
    
def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  cart.each do |index|
    index[:count] = 1
    item_duplicate_search = find_item_by_name_in_collection(index[:item], cart)
    if !new_cart.include? (item_duplicate_search)
      new_cart.push(item_duplicate_search)
    else
      index[:count] += 1
    end
  end
  new_cart
end
  #iterate through cart
  #for each item, iterate through cart again to check for duplicates
  #set key value of count, with value of number duplicates
  #return updated cart
    


  