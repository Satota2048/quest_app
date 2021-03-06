class CreateSuccesses < ActiveRecord::Migration[6.0]
  def change
    create_table :successes do |t|
      t.references   :user,                null: false,   foreign_key: true
      t.references   :quest,               null: false,   foreign_key: true
      t.text         :reason,              null: true 
      t.timestamps
    end
  end
end
