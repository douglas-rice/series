class Series
  attr_reader :digits

  def initialize(str)
    @digits = convert(str)
  end

  def slices(length)
    raise ArgumentError if length > digits.size
    # start with the first element
    # check to see that length doesn't overrun
    # grab range to length and save to result array
    # move forward 1 index and start over
    result = []
    digits.each_with_index do |digit, idx|
      break if digits[idx + length - 1].nil?
      result << digits[idx..(idx + length - 1)]
    end
    result
  end

  private

  def convert(str)
    str.chars.map { |char| char.to_i }
    # converts to an array of integers
  end
end

# we need to parce this string and convert it into an array of 
# integers.

# we want to convert the string into an array which is a data
# structure that is much easier to work with, and it has an
# index and all that.

# convert is something that I'm going to use internally, so i'll
# make it private.

series = Series.new('01234')
