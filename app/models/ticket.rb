class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train
  belongs_to :start_station,   class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :finish_station,  class_name: 'RailwayStation', foreign_key: :finish_station_id

  validates :fio, :passport, presence: true
  
  after_create :send_notification_buy_ticket
  after_destroy :send_notification_cancel_ticket

  def route_name
    "#{start_station.name} - #{finish_station.name}"
  end

  private
  def send_notification_buy_ticket
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def send_notification_cancel_ticket
    TicketsMailer.cancel_ticket(self.user, self).deliver_now
  end
end
