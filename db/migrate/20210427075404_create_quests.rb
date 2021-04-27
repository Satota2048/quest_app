class CreateQuests < ActiveRecord::Migration[6.0]
  def change
    create_table :quests do |t|
      t.integer         :category_id,          null: false
      t.string          :title,                null: false
      t.string          :explain,              null: false
      t.date            :limit,                null: false
      t.string          :achievement_purpose
      t.string          :achievement_condition
      t.string          :self_reward
      t.string          :self_penalty
      t.string          :order_condition
      t.text            :detail_text
      t.integer         :achievement_status_id,null: false
      t.references      :user,                 null: false, foreign_key: true
      t.timestamps
    end
  end
end
