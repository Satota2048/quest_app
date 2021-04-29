class Checker < ActiveHash::Base
  self.data = [
    { id: 1, name: '作成のみ' },
    { id: 2, name: '受注済み' },
    { id: 3, name: '達成！' },
    { id: 4, name: 'リタイア……'},
  ]  

  include ActiveHash::Associations
  has_many :quests

end