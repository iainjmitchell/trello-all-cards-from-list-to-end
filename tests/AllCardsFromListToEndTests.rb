require 'test/unit'
require 'rspec-expectations'
require 'securerandom'

require 'TrelloFactory'
require 'TrelloCredentials'

class TrelloBoardCards
	include AgileTrello

	def initialize(parameters)
		trello_factory = parameters[:trello_factory].nil? ? TrelloFactory.new : parameters[:trello_factory]
		trello_credentials = TrelloCredentials.new(parameters[:public_key], nil)
		trello_factory.create(trello_credentials)
	end
end


class AllCardsFromListToEndTests < Test::Unit::TestCase
	def test_user_connects_to_trello_with_public_key
		public_key = SecureRandom.uuid
		mockTrelloFactory = self
		TrelloBoardCards.new(trello_factory: mockTrelloFactory, public_key: public_key) 
		expect(@trello_credentials.public_key).to eql(public_key)
	end

	#SELF SHUNT
	def create(trello_credentials)
		@trello_credentials = trello_credentials
		@created_trello
	end
end