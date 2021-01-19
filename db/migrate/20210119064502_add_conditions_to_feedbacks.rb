class AddConditionsToFeedbacks < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :foul_smell, :boolean
    add_column :feedbacks, :mirror_dirty, :boolean
    add_column :feedbacks, :toilet_bowl, :boolean
    add_column :feedbacks, :wet_floor, :boolean
    add_column :feedbacks, :water_tap, :boolean
    add_column :feedbacks, :toilet_paper, :boolean
    add_column :feedbacks, :rubbish_bin, :boolean
    add_column :feedbacks, :no_soap, :boolean
    add_column :feedbacks, :hand_dryer, :boolean
  end
end
