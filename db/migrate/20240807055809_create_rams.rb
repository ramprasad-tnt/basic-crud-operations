class CreateRams < ActiveRecord::Migration[7.1]
  def change
    create_table :rams do |t|
      t.string :username
      t.integer :mobile_no
      t.text :description

      t.timestamps
    end
  end
end
