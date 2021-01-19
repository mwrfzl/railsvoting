class AddNewFieldToFeedbacks < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :toilet, :binary
  end
end
