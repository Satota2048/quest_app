class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :quests

  with_options presence: true do
    validates :nickname
    validates :password,           format: {with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/}
    validates :last_name,        format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角文字を使用してください' }
    validates :first_name,          format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角文字を使用してください' }
    validates :kana_last_name,   format: { with:/\A[ァ-ヶー－]+\z/, message: '全角カタカナを使用してください'}
    validates :kana_first_name,     format: { with:/\A[ァ-ヶー－]+\z/, message: '全角カタカナを使用してください'}
    validates :birth
  end

end
