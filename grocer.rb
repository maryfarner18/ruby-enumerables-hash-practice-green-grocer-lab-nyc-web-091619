def consolidate_cart(cart)
  cart_hash = {}
  cart.each do |n| 
    n.each_key do |key|
      if cart_hash[key]
        cart_hash[key][:count] += 1
      else
        cart_hash[key] = n[key]
        cart_hash[key][:count] = 1
      end
    end
  end
  cart_hash
end

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon|
      thing = coupon[:item]
      if cart[thing]
        cart["#{thing} W/COUPON"][:clearance]
        cart["#{thing} W/COUPON"][:count] = cart[thing]
      end 
    
  end
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
