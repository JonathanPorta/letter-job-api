class User < ApplicationRecord
  has_many :creations, class_name: "Job", foreign_key: "created_by_id"
  has_many :assignments, class_name: "Job", foreign_key: "assigned_to_id"
end
