# File spec/hotel_spec.rb
#
describe Hotel do
  describe '#reserve_room' do
    context 'when room number does not exist' do
      let(:maximum_room_number) { rooms.map(&:number).max }
      let(:room_number) { maximum_room_number + 1 }
      let(:rooms) do
        [
          Room.new(number: 1, accommodates: 2),
          Room.new(number: 2, accommodates: 2),
        ]
      end
      subject(:hotel) { Hotel.new(rooms: rooms) }

      it 'raises a meaningful exception' do
        expect do
          hotel.reserve_room room_number
        end.to raise_error(ArgumentError, /room_number: #{room_number} given is not part of the numbers of the rooms of the hotel./)
      end
    end
  end
end
