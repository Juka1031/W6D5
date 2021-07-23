# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birthdate   :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'
class Cat < ApplicationRecord
include ActionView::Helpers::DateHelper
COLORS = [
"brown",
"white",
"black",
"orange",
"purple"
]
    validates :birthdate, :name, :description, presence: true
    validates :sex, inclusion: { in:["M","F"] }, presence: true
    validates :color, inclusion: {in: COLORS}, presence: true
    
    def age
    time_ago_in_words(birthdate)
    end

    def self.color
        COLORS
    end
    
end
