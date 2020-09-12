require 'pry'
def find_item_by_name_in_collection(name, collection)
  index = collection.find_index {|element| element[:item][name]}
  if index.is_a?(Integer)
    return collection[index]
  end
  return nil
end

def consolidate_cart(cart)
  final = cart.uniq
  final.each_with_index.map do |element, i| 
    final[i][:count] = cart.count(element)
  end
  final
end


  