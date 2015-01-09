class MonstersController < ApplicationController

  # Новый монстр в формате JSON
    def get_new_monster

      @monster = Map.find_by_name(current_user.location).monsters.sample

      respond_to do |format|
        format.json {render json: {user: current_user, monster: @monster, etc: Box.where(user_id: current_user.id).where(format: "etc")}}
      end

    end

    def new
    end

    def create
      Monster.create(monster_params)
      redirect_to :back
    end

    private

      def monster_params
        params.require(:monster).permit(:name,
          :lvl,
          :hp,
          :sp,
          :exp,
          :jexp,
          :atk,
          :def,
          :mdef,
          :str,
          :agi,
          :vit,
          :int,
          :dex,
          :luk,
          :map_id,
          :element,
          :item_drop,
          :item_chance,
          :equip_drop,
          :equip_chance,
          :quest_drop,
          :quest_chance,
          :card_drop,
          :card_chance)
      end

end