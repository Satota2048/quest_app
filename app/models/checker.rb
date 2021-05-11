class Checker < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '作成のみ' },
    { id: 3, name: '受注'},
  ]  

  include ActiveHash::Associations
  has_many :quest_success_results
  has_many :quest_failed_results

end