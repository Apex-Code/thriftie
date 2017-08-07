class TransactionsController < ApplicationController

  before_action :find_transaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @transaction = current_user.goals.transactions.build
  end

  def create
    @transaction = current_user.goals.transactions.build
    if @transaction.save
      redirect_to @transaction
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @transaction.update(transaction_params)
      redirect_to @transaction
    else
      render 'edit'
    end
  end

  def destroy
    @transaction.destroy
      redirect_to root_path
  end


private

  def transaction_params
    params.require(:transaction).permit(:withrawal, :deposit)
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end
end
