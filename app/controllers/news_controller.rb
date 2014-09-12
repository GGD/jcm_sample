class NewsController < ApplicationController
  def index
    @feeds = GetNewsFeed.call
  end
end
