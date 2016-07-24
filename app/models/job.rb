class Job < ApplicationRecord
  belongs_to :user
  belongs_to :recipient
  belongs_to :template
end
