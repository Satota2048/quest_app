class Second_Checker < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '達成！！' },
    { id: 3, name: 'リタイア……'},
  ]  

  include ActiveHash::Associations
  has_many :quest_success_results
  has_many :quest_failed_results

end