class Event < ActiveRecord::Base
  validates :event_name,:start_date,:end_date, presence: true

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :organizers

  def to_time
    self.start_date.strftime("%l:%M %P")
  end

  def to_date
    self.start_date.strftime("%e,  %Y")
  end

  def to_month
    self.start_date.strftime("%B,  %Y")
  end

end
