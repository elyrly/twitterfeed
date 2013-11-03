class TweetsController < ApplicationController

  def index
  end

  def tweets

    @search_parameter = params[:s]
    @twitter = Twitter.search(@search_parameter, :result_type => "recent", :lang => 'en')[:statuses]

    @data_info = @twitter.map do |tweet|
      {:name => tweet[:user][:screen_name],
        :text => tweet[:text]
      }
    end

    render :json => @data_info

  end

end
