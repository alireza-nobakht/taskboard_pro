# frozen_string_literal: true

class Board < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }
end
