require 'test/unit'
require 'rspec-expectations'
require 'securerandom'

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