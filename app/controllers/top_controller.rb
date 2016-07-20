class TopController < ApplicationController
  before_action :authenticate_user!

  def index
    @article = Article.new
  end
end
