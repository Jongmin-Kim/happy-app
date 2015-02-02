class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:id])

    @quote.save
    redirect_to @quote
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    redirect_to quotes_path
  end

  def random
    @quotes = Quote.all
    @quotes[rand(@quotes.length)]
  end
end
