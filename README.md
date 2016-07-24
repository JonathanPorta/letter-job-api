# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## Purpose
Given a `template`, a `user` and a `recipient` guide a user through a `job` where a new letter is created based on a template and sent to the recipient.

### Entities
Template content
Recipient name, address
Job template_id recipient_id user_id status image_url
User role


plz rails generate scaffold Template user:belongs_to content:text
plz rails generate scaffold Recipient name:string address:string
plz rails generate scaffold User role:string email:string first_name:string last_name:string google_id:string refresh_token:string profile_photo:string created_at:datetime updated_at:datetime
plz rails generate scaffold Job user:belongs_to recipient:belongs_to template:belongs_to created_at:datetime start_after:datetime due_by:datetime
plz rails generate scaffold Task job:belongs_to status:string image_url:string started_at:datetime completed_at:datetime
