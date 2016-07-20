class ArticlesController < ApplicationController
  before_action :set_article, only: [:destroy, :update]

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to :root, notice: '記事を作成しました'
    else
      render template: 'top/index'
    end
  end

  def update
    if @article.update(article_params)
      redirect_to :root, notice: '記事を更新しました'
    else
      respond_to do |format|
        format.json { render json: @article.errors.full_messages, status: :unprocessable_entity }
      end
    end
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
