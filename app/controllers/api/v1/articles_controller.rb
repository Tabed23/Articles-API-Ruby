class Api::V1::ArticlesController < ApplicationController

  def index
    articles = Atricle.all
    render json: articles, status: 200
  end

  def show
    article = Atricle.find_by(id: params[:id])

    if article
      render json: article, status: 200
    else
      render json: { error: 'Article not found' }, status: 404
    end

  end

  def create
    article = Atricle.new(
      title: atri_params[:title],
      body: atri_params[:body],
      author: atri_params[:author]
    )

    if article.save()
      render json: article, status: :created
    else
      render json: {
        error: 'error creating article'
      }
    end
  end

  def update
    article = Atricle.find_by(id: params[:id])

    if article
      article.update(title: atri_params[:title], body: atri_params[:body], author: atri_params[:author])
      render json: {msg: 'Artical record has been updated '}, status: 200
    else
      render json: {msg: 'Article not found'}, status: 404

    end
  end

  def destroy
    article = Atricle.find_by(id: params[:id])
    if article
      article.destroy
      render json: {msg: 'Artical record has been Deleted '}, status: 200
    else
      render json: {msg: 'Article not found'}, status: 404
    end
  end

  private
  def atri_params
    params.require(:article).permit([
    :title,
    :body,
    :author
    ])
  end

end
