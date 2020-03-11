class Mensaje < ApplicationRecord
  belongs_to :account

 
  after_create_commit {
    MensajeBroadcastJob.perform_later(self)
  }
end
