class Employee < ApplicationRecord
    belongs_to :dog

    validates :alias, uniqueness: true 
    # validates_uniqueness_of :alias, message: 'is not available'

    def full_name
        self.first_name + " " + self.last_name
    end


    # def to_s
    #     self.first_name + " " + self.last_name
    # end
end
