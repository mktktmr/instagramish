class ArticlesController < ApplicationController
  before_action :set_article, only: [:destroy, :update]

  def create
    article = Article.new(article_params)
    article.user_id = current_user.id
    article.save

    redirect_to :root, notice: '記事を作成しました'
  end

  def update
    @article.update(article_params)

    redirect_to :root, notice: '記事を更新しました'
  end

  def destroy
    @article.destroy

    redirect_to :root, alert: '記事を削除しました'
  end

  private
    def article_params
      params.require(:article).permit(:title, :content, :picture)
    end

    def set_article
      @article = Article.find(params[:id])
    end
end
