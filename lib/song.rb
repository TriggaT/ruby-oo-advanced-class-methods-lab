class Song
  attr_accessor :name, :artist_name, :create 

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end


  def self.create_by_name(name)
      song = self.create
      song.name = name 
      song
   end

  def self.find_by_name(name)
    self.all.detect {|s| s.name == name}
  end 

  def self.find_or_create_by_name(name)
    self.find_by_name(name) or self.create_by_name(name)
  end

  

   def self.alphabetical
    @@all.sort_by {|n| n.name}
   end 

   def self.new_from_filename(filename)
    file = filename.split(/-|.mp3/)
    name = file[0].strip
    a_name = file[1].strip
    song = self.new
    song.name = a_name
    song.artist_name = name
    song
   end 

   def self.create_from_filename(filename)
    file = filename.split(/-|.mp3/)
    binding.pry
    name = file[0].strip
    a_name = file[1].strip
    song = self.create
    song.name = a_name
    song.artist_name = name
    song

   end


   def self.destroy_all
    @@all.clear
   end

  





  






end
