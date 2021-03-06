class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "email", :limit => 50, :null => false
      t.column "password", :string, :limit => 30, :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps null: false
    end
  end

  def down
	drop_tabes :users
  end
end
