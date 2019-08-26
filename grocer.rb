def consolidate_cart(cart)
  
  cart.map do |n| 
    n.reduce({}) do |memo, (key,value)|
      if !memo[key] do
        memo[key] = value
        memo[key][:count] = 1
      else
        memo[key][:count] += 1
      end
    end
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
