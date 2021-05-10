class CreateFaileds < ActiveRecord::Migration[6.0]
  def change
    create_table :faileds do |t|
      t.references   :user,                null: false,   foreign_key: true
      t.references   :quest,               null: false,  foreign_key: true
      t.integer      :failed_reason_id,    null: false
      t.text         :reason,              null: true
      t.timestamps
    end
  end
end
