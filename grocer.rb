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
      new_name = "#{thing} W/COUPON"
    
      if cart.has_key?(thing) then
        #Create the coupon item in the cart
        cart[new_name]= {}
        cart[new_name][:clearance] = true
        cart[new_name][:count] = coupon[:num]
         cart[new_name][:price] = coupon[:cost] / coupon[:num]

        #Adjust the old item in the cart w/o coupon
        cart[thing][:count] -= coupon[:num]
        cart[thing][:clearance] = true
  
      end 
    
  end
  cart
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
