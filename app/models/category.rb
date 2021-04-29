class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    # 直面課題
    { id: 2, name: 'フロントクエスト' },
    # 問題解決
    { id: 3, name: 'トラブルクエスト' },
    # 夢の実現
    { id: 4, name: 'ドリームクエスト' },
    # 自己成長
    { id: 5, name: 'トレーニングクエスト' },
    { id: 6, name: 'その他' },
  ]  

  include ActiveHash::Associations
  has_many :quests

end