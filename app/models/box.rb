class Box < ActiveRecord::Base

  belongs_to :item

  # Разыгрывается выпадение предметов различных типов (используемые предметы consumable, экипировка equip, предметы для квестов etc).
  def self.chance(monster, user, etc, equip, consumable) 
    item_drop(monster, user, consumable, "consumable")
    item_drop(monster, user, equip, "equip")
    item_drop(monster, user, etc, "quest")
    
  end

  private 
  
  # Вероятность выпадения предмета из монстра определяется значением item_chance, equip_chance, quest_chance в зависимости от типа предмета.
  # В случае успеха предмет попадает в инвентарь игрока. Если уже есть этот предмет в инвентаре, то количество увеличивается +1 ,
  # иначе просто создается предмет в инвентаре.
  def item_drop(monster, user, item, type)
    
    @item_chance = case type
    when "consumable" 
      Monster.find(monster).item_chance
    when "equip"
      Monster.find(monster).equip_chance
    when "quest"
      Monster.find(monster).quest_chance
    end
    
    if rand(0.01..100) < @item_chance

      if Box.where(user_id: user.id).where(item_id: item.id).present?
        @count = Box.find_by(user_id: user.id, item_id: item.id).ea
        Box.find_by(user_id: user.id, item_id: item.id).update(ea: @count + 1)
      else
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

end