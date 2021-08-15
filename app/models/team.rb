class Team < User
    has_many :specializations
    protected
    def confirmation_required?
      false
    end
end
