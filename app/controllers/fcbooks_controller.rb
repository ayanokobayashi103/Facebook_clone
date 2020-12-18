class FcbooksController < ApplicationController
  before_action :set_fcbook, only: [:show, :edit, :update, :destroy]
  def index
    @fcbooks = Fcbook.all
  end
  def new
    @fcbook = Fcbook.new
  end
  def create
    @fcbook = Fcbook.new(fcbook_params)
    if params[:back]
      render :new
    else
      if @fcbook.save
        redirect_to fcbooks_path, notice: "作成しました！"
      else
        render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @fcbook.update(fcbook_params)
      redirect_to fcbooks_path, notice: "編集しました"
    else
      render :edit
    end
  end
  def destroy
    @fcbook.destroy
    redirect_to fcbooks_path, notice:"削除しました"
  end
  def confirm
   @fcbook = Fcbook.new(fcbook_params)
   render :new if @fcbook.invalid?
  end

 private
   def fcbook_params
     params.require(:fcbook).permit(:title, :content)
   end
   def set_fcbook
     @fcbook = Fcbook.find(params[:id])
   end
end
