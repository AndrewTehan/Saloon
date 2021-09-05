class Master < User
  has_many :visits
  has_many :users, through: :visits

  has_many :master_services
  has_many :services, through: :master_services

  # enum rank: [:first_rank, :second_rank, :third_rank, :fourth_rank, :fifth_rank]

  accepts_nested_attributes_for :master_services

  def confirmation_required?
    false
  end

  validate :any_skills

  def any_skills
    errors.add(:services, "can't be blank") unless master_services.any?
  end
end
