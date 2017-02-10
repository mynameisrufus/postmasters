class Picture
  attr_reader :name, :title, :description

  def initialize(name:, title:, description: nil)
    @name = name
    @title = title
    @description = description
  end

  def thumb_url
    "#{bucket}/#{dir}/#{@name}_s.jpg"
  end

  def url
    "#{bucket}/#{dir}/#{@name}.jpg"
  end

  def dir
    'images_gallery'
  end

  def bucket
    'http://s3.amazonaws.com/thepostmasterslodgings.co.nz'
  end

  def self.all
    [
      new(name: 'Postmasters-02', title: '', description: ''),
      new(name: 'Postmasters-03', title: '', description: ''),
      new(name: 'Postmasters-04', title: '', description: ''),
      new(name: 'Postmasters-05', title: '', description: ''),
      new(name: 'Postmasters-07', title: '', description: ''),
      new(name: 'Postmasters-09', title: '', description: ''),
      new(name: 'Postmasters-11', title: '', description: ''),
      new(name: 'Postmasters-13', title: '', description: ''),
      new(name: 'Postmasters-15', title: '', description: ''),
      new(name: 'Postmasters-17', title: '', description: ''),
      new(name: 'Postmasters-18', title: '', description: ''),
      new(name: 'Postmasters-19', title: '', description: ''),
      new(name: 'Postmasters-20', title: '', description: ''),
      new(name: 'Postmasters-22', title: '', description: ''),
      new(name: 'Postmasters-23', title: '', description: ''),
      new(name: 'Postmasters-24', title: '', description: ''),
      new(name: 'Postmasters-25', title: '', description: ''),
      new(name: 'Postmasters-26', title: '', description: ''),
      new(name: 'Postmasters-27', title: '', description: ''),
      new(name: 'Postmasters-28', title: '', description: ''),
      new(name: 'Postmasters-29', title: '', description: ''),
      new(name: 'Postmasters-30', title: '', description: ''),
      new(name: 'Postmasters-31', title: '', description: ''),
      new(name: 'Postmasters-32', title: '', description: ''),
      new(name: 'Postmasters-33', title: '', description: ''),
      new(name: 'Postmasters-35', title: '', description: ''),
      new(name: 'Postmasters-36', title: '', description: ''),
      new(name: 'Postmasters-38', title: '', description: ''),
    ]
  end
end
