require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each { |item| return item if item[:item] == name }
  nil
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |item|
    if !find_item_by_name_in_collection(item[:item], consolidated_cart)
      consolidated_cart << item
      consolidated_cart.each do |consolidated_item|
        consolidated_item[:count] = 1 if consolidated_item[:item] == item[:item]
      end
    else
      consolidated_cart.each do |consolidated_item|
        consolidated_item[:count] += 1 if consolidated_item[:item] == item[:item]
      end
    end
  end
  consolidated_cart
end