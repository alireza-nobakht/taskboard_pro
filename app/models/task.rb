# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :board

  validates :title, presence: true, length: { maximum: 200 }
end
