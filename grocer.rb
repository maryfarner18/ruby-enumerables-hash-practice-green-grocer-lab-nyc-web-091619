def consolidate_cart(cart)
  
  cart.map do |n| 
    n.reduce({}) do |memo, (key,value)|
  end
  
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
