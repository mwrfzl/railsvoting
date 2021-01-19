class ChangeDataForToiletCondition < ActiveRecord::Migration[6.1]
  def change
    change_table :feedbacks do |t|
      t.remove :foul_smell, :mirror_dirty, :toilet_bowl, :wet_floor, :water_tap, :toilet_paper, :rubbish_bin, :no_soap, :hand_dryer
    end
  end
end
