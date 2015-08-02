class CreateCulperDicts < ActiveRecord::Migration
  def change
    create_table :culper_dicts do |t|
      t.text :culper_hash
      t.text :crypt

      t.timestamps null: false
    end
  end
end
