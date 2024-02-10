class Schedule < ApplicationRecord
    validates :title , presence: true , length: { maximum: 30 }
    validates :startdate , presence: true 
    validates :enddate , presence: true 
    validates :memo , length: { maximum: 500 }
    validate :date_check

    def date_check
        if startdate > enddate
            errors.add(:startdate, "は終了日よりも前に設定してください")
        end
    end
    
end
