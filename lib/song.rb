class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end
  
  def self.find_by_name(name)
    self.all.each do |item|
      if item.name == name
        return item
      end
    end
    false
  end
  
  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    
    if song
      song
    else
      song = self.new_by_name(name)
      song
    end
  end
  
end
