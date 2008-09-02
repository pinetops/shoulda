require 'shoulda'
require 'shoulda/rails_routing/macros'

module Test # :nodoc: all
  module Unit
    class TestCase
      extend ThoughtBot::Shoulda::RailsRouting::Macros
    end
  end
end
