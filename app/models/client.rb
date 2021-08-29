class Client < User
  has_many :visits, dependent: :destroy
  has_many :masters, through: :visits
end
