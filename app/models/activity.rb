class Activity < ApplicationRecord
    belongs_to :type
    has_and_belongs_to_many :subjects

    validates :date, presence: true
    validates :link, presence: true
    validates :duration, presence: true, numericality: {only_integer: true }
    validates :comment, presence: true

    def print_subjects()
        s = ""
        subjects.each do |subject|
            s += "#{subject.name}, "
        end
        if(s != "")
            s = s[0..-3]
        end
        return s
    end
end