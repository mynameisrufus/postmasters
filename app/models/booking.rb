class Booking
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  ROOM_TYPES = ['Queen bed', 'Queen bed + single', 'Twin share']

  attr_accessor :name, :arrive, :depart, :room_type, :email, :phone_number, :message
  
  validates :name, :email, :arrive, :depart, :room_type, :phone_number, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validate do |booking|
    if booking.depart <= booking.arrive
      errors.add(:depart, 'date must be after arrival date')
    end
  end
  
  def initialize(attributes = {})
    @arrive = parse_date(default: Date.today,
                         day: attributes['arrive(3i)'],
                         month: attributes['arrive(2i)'],
                         year: attributes['arrive(1i)'])

    @depart = parse_date(default: Date.today + 1,
                         day: attributes['depart(3i)'],
                         month: attributes['depart(2i)'],
                         year: attributes['depart(1i)'])

    @name = attributes['name']
    @room_type = attributes['room_type']
    @email = attributes['email']
    @phone_number = attributes['phone_number']
    @message = attributes['message']
  end

  def parse_date(default:, day:, month:, year:)
    return default unless day && month && year
    Date.civil(year.to_i, month.to_i, day.to_i)
  end 
  
  def persisted?
    false
  end
end
