class CreateSmileys < ActiveRecord::Migration[6.1]
  def change
    create_table :smileys do |t|
      t.string :image

      t.timestamps
    end
  end
end
