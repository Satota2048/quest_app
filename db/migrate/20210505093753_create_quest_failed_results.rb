class CreateQuestFailedResults < ActiveRecord::Migration[6.0]
  def change
    create_table :quest_failed_results do |t|
      t.references   :user,                null: false,   foreign_key: true
      t.references   :quest,               null: false,  foreign_key: true
      t.integer      :Second_Checker_id,   null: false
      t.timestamps
    end
  end
end
