require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end
=begin
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
=end

  def artist=(artist)
    @artist = artist
  end
=begin
def to_param
  name.downcase.gsub(' ', '-')
end
=end
  def self.all
    @@songs
  end

end
