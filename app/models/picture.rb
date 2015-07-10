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
      new(name: 'postmasters_24', title: 'The kitchen', description: 'This is where the fabulous meals at the Postmasters are prepared (available on request)'),
      new(name: 'postmasters_25', title: 'Street level', description: 'The Postmasters seen from the main street of Rawene'),
      new(name: 'postmasters_27', title: 'Fire place', description: 'The fire place, put on in the mildly cold winter months'),
      new(name: 'postmasters_28', title: 'Room 2', description: 'French door and sitting table of room 2'),
      new(name: 'postmasters_12', title: 'Room 2', description: 'Room two from the as seen from the bathroom of room two'),
      new(name: 'postmasters_29', title: 'Deck', description: 'A small part of the Postmasters extensive decking'),
      new(name: 'postmasters_30', title: 'Room 1', description: 'Room one of the Postmasters'),
      new(name: 'postmasters_32', title: 'Room 1', description: 'The fireplace (not used) and entrance to room one'),
      new(name: 'postmasters_31', title: 'View from the Postmasters', description: 'View of the harbour facing Kohukoho'),
      new(name: 'postmasters_33', title: 'Fire place', description: 'The fire place of the Postmasters'),
      new(name: 'postmasters_34', title: 'Hallway', description: 'The entrance hallway of the Postmasters'),
      new(name: 'postmasters_35', title: 'John Post', description: 'John Post of the Postmasters and his visiting son'),
      new(name: 'postmasters_36', title: 'Evening', description: 'Late evening at the Postmasters '),
      new(name: 'postmasters_37', title: 'Television sitting room', description: 'The only television at the Postmasters resides in this room'),
      new(name: 'postmasters_01', title: 'Rawene Ferry', description: 'State highway 12 to Kohukohu and onto Cape Reinga'),
      new(name: 'postmasters_02', title: 'Over looking Rawene harbour', description: 'View of motukaraka from the deck of the Postmasters'),
      new(name: 'postmasters_08', title: 'Food on the deck', description: 'During the summer food on the deck'),
      new(name: 'postmasters_09', title: 'Room 4', description: 'Room four of the Postmasters'),
      new(name: 'postmasters_10', title: 'Reception room', description: 'Reception room for breakfast and reading'),
      new(name: 'postmasters_13', title: 'Room 4', description: 'Room four of the Postmasters'),
      new(name: 'postmasters_14', title: 'View from the Postmasters', description: 'One of the many views of the Ferry from the deck of the Postmasters'),
      new(name: 'postmasters_15', title: 'Kitchen', description: 'Part of the kitchen of the Postmasters'),
      new(name: 'postmasters_16', title: 'View from the deck', description: 'View from the deck of the Postmasters'),
      new(name: 'postmasters_17', title: 'Dusk', description: 'View from the deck of the Postmasters at dusk'),
      new(name: 'postmasters_18', title: 'Julie Harmen', description: 'Rawene fixtures Julie and Harmen play music on the deck'),
      new(name: 'postmasters_19', title: 'Night', description: 'The Postmasters at night'),
      new(name: 'postmasters_20', title: 'Rawene Shops', description: 'View of the shops from the deck of the Postmasters'),
      new(name: 'postmasters_21', title: 'Cooling off', description: 'Ice cream on a hot day'),
      new(name: 'postmasters_22', title: 'Tree and Hokianga harbour', description: 'Photo by rollo'),
      new(name: 'postmasters_23', title: 'Room 2', description: 'Room two of the Postmasters')
    ]
  end
end
