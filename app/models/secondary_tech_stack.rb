# frozen_string_literal:true

class SecondaryTechStack < ApplicationRecord
  validates :stack, :skills, :generic_info, presence: true
end
