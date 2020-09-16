class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def create
    @account = Account.new(account_params)
    @account.user = current_user
    @account.save
    redirect_to account_path(@account)
  end

  def new
    @account = Account.new
  end

  def update
    @account = Account.find(params[:id])
    @account.amount = @account.amount + account_params['float'].to_f 
    @account.save
    redirect_to account_path(@account)
  end

  private

  def account_params
    params.require(:account).permit(:amount, :atype, :interest, :float)
  end
end
