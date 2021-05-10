class FailedReason < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    # 期限切れ
    { id: 2, name: '期限切れ' },
    # 仕切り直し
    { id: 3, name: '予定変更' },
    # 想定外の事態
    { id: 4, name: '状況の変化' },
    # モチベーション
    { id: 5, name: 'やる気切れ' },
  ]  

  include ActiveHash::Associations
  has_many :faileds

end