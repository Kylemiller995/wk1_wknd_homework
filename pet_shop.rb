def pet_shop_name(name)
  return @pet_shop[:name]
end

def total_cash(pet_shop)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  petshop_current_cash = pet_shop[:admin][:total_cash]
  new_cash = cash + petshop_current_cash
  pet_shop[:admin][:total_cash] = new_cash
end

def pets_sold(petshop)
  return petshop[:admin][:pets_sold]
end

def increase_pets_sold(petshop, num)
   petshop[:admin][:pets_sold] += num
end

def stock_count(pet_shop)
  count = 0
  for pets in pet_shop[:pets]
    count += 1
  end
  return count
end

def pets_by_breed(pet_shop, breed)
  found_pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      found_pets.push(pet)
    end
  end
  return found_pets
end

def find_pet_by_name(pet_shop,name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end
