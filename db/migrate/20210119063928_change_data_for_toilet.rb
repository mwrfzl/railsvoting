class ChangeDataForToilet < ActiveRecord::Migration[6.1]
  def change
    change_table :feedbacks do |t|
      t.remove :toilet
    end
  end
end
