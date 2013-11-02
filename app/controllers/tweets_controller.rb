class TweetsController < ApplicationController

  def index
    @query = Twitter.search("justin", :count => 3, :result_type => "recent", :lang => 'en').results.first.text
  end

end
