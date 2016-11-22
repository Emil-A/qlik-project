class PalindromesController < ApplicationController
  def index
    @palindrome = Palindrome.new
    @palindromes = Palindrome.all
  end

  def new
    @palindrome = Palindrome.new 
  end

  def create
    @palindrome = Palindrome.new(post_params)

    if @palindrome.save
      redirect_to action: "index"
    else 
      render 'new'
    end
  end

  def show
    @palindrome = Palindrome.find(params[:id])
  end

  def destroy
    Palindrome.find(params[:id]).destroy
    redirect_to action: "index"
  end

  private

    def post_params
      params.require(:palindrome).permit(:user, :body)
    end
end
