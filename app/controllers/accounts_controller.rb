class AccountsController < ApplicationController
  before_action :set_account, only: %i[ show edit update destroy ]
  before_action :set_supplier_account, only: %i[ create show edit update destroy ]
  # GET /accounts or /accounts.json
  def index
    @accounts = Account.all
  end

  # GET /accounts/1 or /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @supplier = Supplier.find_by(id: params[:supplier_id])
    @account = @supplier.build_account
#@account = @supplier.account.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts or /accounts.json
  def create
    @account = @supplier.build_account(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @supplier, notice: "Account was successfully created." }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1 or /accounts/1.json
  def update

    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to  supplier_account_path(@supplier, @account), notice: "Account was successfully updated." }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1 or /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to suppliers_path, notice: "Account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    def set_supplier_account
      @supplier = Supplier.find_by(id: params[:supplier_id])
    end

    # Only allow a list of trusted parameters through.
    def account_params
      params.require(:account).permit(:account_number)
    end
end
