class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.boolean :foul_smell
      t.boolean :mirror_dirty
      t.boolean :toilet_bowl
      t.boolean :wet_floor
      t.boolean :water_tap
      t.boolean :toilet_paper
      t.boolean :rubbish_bin
      t.boolean :no_soap
      t.boolean :hand_dryer

      t.timestamps
    end
  end
end
