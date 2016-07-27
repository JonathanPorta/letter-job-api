class User < ApplicationRecord
  has_many :creations, class_name: "Job", foreign_key: "created_by_id"
  has_many :assignments, class_name: "Job", foreign_key: "assigned_to_id"

  def self.from_omniauth(auth)
    user = where(google_id: auth.uid).first_or_initialize.tap do |u|
      u.google_id = auth.uid

      u.first_name = auth.info.first_name if auth.info.first_name
      u.last_name = auth.info.last_name if auth.info.last_name
      u.email = auth.info.email if auth.info.email

      u.profile_photo = auth.info.profile_photo if auth.info.profile_photo
      u.refresh_token = auth.credentials.refresh_token if auth.credentials.refresh_token

      u.save!
    end
  end
end
