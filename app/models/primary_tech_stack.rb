# frozen_string_literal:true

class PrimaryTechStack < ApplicationRecord
  validates :stack, :skills, :generic_info, presence: true
end
