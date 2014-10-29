Gem::Specification.new do |spec|
  spec.name        = 'trello-all-cards-from-list-to-end'
  spec.version     = '1.0.0'
  spec.summary     = "Returns all cards from list to the end of the board"
  spec.authors     = ["iainjmitchell"]
  spec.email       = 'iainjmitchell@gmail.com'
  spec.files       = Dir.glob("lib/*")
  spec.homepage    = 'https://github.com/iainjmitchell/trello-all-cards-from-list-to-end'
  spec.license       = 'MIT'
  spec.add_runtime_dependency 'ruby-trello' 
  spec.add_runtime_dependency 'trello-factory'
end