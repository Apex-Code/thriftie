class TransactionsController < ApplicationController

  before_action :find_transaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
  end


private

  def transaction_params
    params.require(:transaction).permit(:withrawal, :deposit)
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end
end
