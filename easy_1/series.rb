class Series
  attr_accessor :digit_string

  def initialize(digit_string)
    self.digit_string = String.new(digit_string)
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > digit_string.size
    array_of_slices = []
    first_in_slice = 0
    last_in_slice = slice_size - 1
    loop do
      array_of_slices << digit_string[first_in_slice..last_in_slice].split('').map(&:to_i)
      first_in_slice += 1
      last_in_slice += 1
      break if last_in_slice == digit_string.size
    end

    array_of_slices.each do |slice|
      slice.each do |item|
        item.to_i
      end
    end
    p array_of_slices
  end
end

series1 = Series.new('0123456')
p series1.slices(2)
