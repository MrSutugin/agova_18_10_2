class CompaniesController < ApplicationController
  before_action :authenticate
  before_action :set_company, only: %i[edit update destroy]

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def edit; end

  def create
    @company = Company.new(company_params)
    @company.secret_key = SecureRandom.alphanumeric(20)
    @company.company_slug = SecureRandom.alphanumeric(12)
    @company.profile_id = current_account.profile.id

    if @company.save
      flash[:notice] = 'Товарищество успешно создано'
      redirect_to companies_path
    else
      flash.now[:alert] = 'Произошла ошибка при создании товарищества'
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @company.update(company_params)
      flash[:notice] = 'Товарищество успешно обновлено'
      redirect_to companies_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @company.destroy
    flash[:notice] = 'Товарищество успешно удалено'
    redirect_to companies_path
  end

  private

  def set_company
    @company = Company.friendly.find(params[:id])
  end

  def company_params
    params.require(:company).permit(
      :name,
      :inn,
      :address,
      :bio,
      :role,
      :active,
      :confirmed,
      :score,
      :company_slug,
      :slug,
      :profile_id
    )
  end
end
