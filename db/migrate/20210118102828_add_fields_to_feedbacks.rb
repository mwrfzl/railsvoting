class AddFieldsToFeedbacks < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :foul_smell, :binary
    add_column :feedbacks, :mirror_dirty, :binary
    add_column :feedbacks, :toilet_bowl, :binary
    add_column :feedbacks, :wet_floor, :binary
    add_column :feedbacks, :water_tap, :binary
    add_column :feedbacks, :toilet_paper, :binary
    add_column :feedbacks, :rubbish_bin, :binary
    add_column :feedbacks, :no_soap, :binary
    add_column :feedbacks, :hand_dryer, :binary
  end
end
