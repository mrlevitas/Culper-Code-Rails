class CreateEmessages < ActiveRecord::Migration
  def change
    create_table :emessages do |t|
      t.text :encrypted
      t.timestamps null: false
    end
  end
end
