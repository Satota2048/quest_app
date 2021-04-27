class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '学力' },
    { id: 3, name: '体力' },
    { id: 4, name: '思考力' },
    { id: 5, name: '生活力' },
    { id: 6, name: '夢' },
    { id: 7, name: '仕事能力' },
    { id: 8, name: 'その他' },
  ]  

  include ActiveHash::Associations
  has_many :quests

end