class AddSessionIdToVotersessions < ActiveRecord::Migration[6.1]
  def change
    add_column :votersessions, :session_id, :string
  end
end
