class Job < ApplicationRecord
  belongs_to :recipient
  belongs_to :template

  belongs_to :creator, class_name: "User", foreign_key: "created_by_id"
  belongs_to :assignee, class_name: "User", foreign_key: "assigned_to_id"
end
