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
      puts "New_name = #{new_name}"
      if cart.key?(thing)
        cart[new_name][:clearance] = true
        cart[new_name][:count] = cart[thing][:count] / coupon[:num] * 1 * cart[thing][:count]
        cart[new_name][:price] = coupon[:cost] / coupon[:num]
        
        if cart[thing][:count] % coupon[:num] == 0
          cart.delete[thing]
        else
          cart[thing][:count] %= coupon[:num]
        end
        
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
