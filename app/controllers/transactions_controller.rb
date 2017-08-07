class TranzactionsController < ApplicationController

  before_action :find_tranzaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @tranzaction = current_user.goals.tranzactions.build
  end

  def create
    @tranzaction = current_user.goals.tranzactions.build
    if @tranzaction.save
      redirect_to @tranzaction
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tranzaction.update(tranzaction_params)
      redirect_to @tranzaction
    else
      render 'edit'
    end
  end

  def destroy
    @tranzaction.destroy
      redirect_to root_path
  end


private

  def tranzaction_params
    params.require(:tranzaction).permit(:withrawal, :deposit)
  end

  def find_tranzaction
    @tranzaction = Tranzaction.find(params[:id])
  end
end
