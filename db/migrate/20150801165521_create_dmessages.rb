class CreateDmessages < ActiveRecord::Migration
  def change
    create_table :dmessages do |t|
      t.text :decrypted
      t.timestamps null: false
    end
  end
end
