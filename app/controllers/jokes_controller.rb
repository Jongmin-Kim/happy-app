class JokesController < ApplicationController
  def index
    @jokes = Joke.all
  end

  def show
    @joke = Joke.find(params[:id])
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(params[:id])

    @joke.save
    redirect_to @joke
  end

  def destroy
    @joke = Joke.find(params[:id])
    @joke.destroy

    redirect_to jokes_path
  end

  def random
    @jokes = Joke.all
    @jokes[rand(@jokes.length)]
  end
end
