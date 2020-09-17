# File booking_request.rb
#
class BookingRequest
  def initialize(check_in:, check_out:, guests:)
    @check_in = check_in
    @check_out = check_out
    @guests = guests
  end
end
