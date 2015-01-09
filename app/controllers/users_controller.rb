class UsersController < ApplicationController

  def update
    # => Дополнить, чтобы выбивались не только итемы, но и эквип со всяким хламом
      etc        = Item.find(Monster.find(params[:monster_id]).item_drop)
      equip      = Item.find(Monster.find(params[:monster_id]).equip_drop)
      consumable = Item.find(Monster.find(params[:monster_id]).quest_drop)
    
    Box.chance(params[:monster_id], user, etc, equip, consumable)


    # exp_for_lvl = [0, 660, 1080, 1800, 2640, 3840, 4560, 5040, 5460, 6000, 6600, 7200, 7320, 7620, 8040, 8820, 9600, 10080, 10560, 11040]
    exp_for_lvl = [0, 660, 1080, 1800, 2640, 3840, 4560, 5040, 5460, 6000, 6600, 7200, 7320, 7620, 8040, 8820, 9600, 10080, 10560, 777777]

    render nothing: true

    user.update(exp: user.exp + params[:exp].to_i) # 

    if user.exp > user.next  # если опыт юзера больше чем требуемый опыт на текущем лвле, то 
      user.update(
        next: exp_for_lvl[user.lvl + 1], # повышаем лвл 
        statpoint: user.statpoint + 1, # добавляем 1 расходуемую еденицу 
        lvl: user.lvl + 1)
    end

  end

  def edit
  end

  private

    def user_params # приватный метод с требованиями наличия данных 
      params.permit(:username,
        :gender,
        :job,
        :bio,
        :location,
        :lvl,
        :exp,
        :next,
        :hp,
        :sp,
        :statpoint,
        :zeny,
        :str,
        :agi,
        :vit,
        :int,
        :dex,
        :luk)
    end

    def user
      current_user
    end

end