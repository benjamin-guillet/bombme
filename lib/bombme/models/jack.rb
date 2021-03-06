require 'set'

class Jack
  def self.random
    { jack: @jacks[ rand(@jacks.length) ] }
  end

  def self.bomb(count)
    return { jacks: [] } if count > @jacks.length

    jacks = Set.new
    jacks << @jacks[ rand(@jacks.length) ] until jacks.length == Integer(count)
    { jacks: jacks.to_a }
  end

  def self.count
    { jack_count: @jacks.length }
  end

  private
  @jacks = [
    'https://s3.amazonaws.com/remind101-jack/jack_1.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_2.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_3.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_4.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_5.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_6.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_7.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_8.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_9.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_10.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_11.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_12.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_13.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_14.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_15.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_16.jpg',
    'https://s3.amazonaws.com/remind101-jack/jack_17.jpg'
  ]
end
