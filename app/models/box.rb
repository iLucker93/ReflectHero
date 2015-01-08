class Box < ActiveRecord::Base

  def self.chance(monster, user, item)
    if rand(0.01..100) < Monster.find(monster).item_chance
      self.create(
        user_id: user.id,
        item_id: item.id,
        ea:      1,
        format:  item.format,
        equip_locations: nil,
        price: item.price_sell)
    end
  end

end