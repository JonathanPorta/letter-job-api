class Task < ApplicationRecord
  belongs_to :job
  belongs_to :template
end
