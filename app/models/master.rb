class Master < User
  has_many :visits
  has_many :users, through: :visits

  has_many :master_services
  has_many :services, through: :master_services

  accepts_nested_attributes_for :master_services

  validate :any_skills

  def any_skills
    errors.add(:services, "can't be blank") unless master_services.any?
  end
end
