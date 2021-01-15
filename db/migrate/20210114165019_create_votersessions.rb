class CreateVotersessions < ActiveRecord::Migration[6.1]
  def change
    create_table :votersessions do |t|

      t.timestamps
    end
  end
end
