class UsersController < ApplicationController
  
  def update
    item = Item.find(Monster.find(params[:monster_id]).item_drop)

    Box.chance(params[:monster_id], user, item)

    exp_for_lvl = [0, 660, 1080, 1800, 2640, 3840, 4560, 5040, 5460, 6000, 6600, 7200, 7320, 7620, 8040, 8820, 9600, 10080, 10560, 11040]

    render nothing: true

    user.update(exp: user.exp + params[:exp].to_i)

    if user.exp > user.next
      user.update(
        next: exp_for_lvl[user.lvl + 1],
        statpoint: user.statpoint + 1,
        lvl: user.lvl + 1)
    end
    
  end
  
  def edit
  end
  
  def update
    current_user.update(user_params)
    redirect_to :back
  end

  private

    def user_params
      params.require(:user).permit(:username,
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