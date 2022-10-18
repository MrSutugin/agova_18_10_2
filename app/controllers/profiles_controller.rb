class ProfilesController < ApplicationController
  before_action :authenticate, except: %i[show index]
  before_action :set_profile, only: %i[show edit update]

  def dashboard; end
  
  def secret_key; end

  def edit; end

  def update
    if @profile.update(profile_params)
      flash[:notice] = 'Профиль успешно сохранен'
      redirect_to profile_path
    else
      flash.now[:alert] = 'Произошла ошибка при сохранении профиля'
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_profile
    @profile = Profile.friendly.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(
      :first_name,
      :last_name,
      :profile_type,
      :slug,
      :score,
      :account_id
    )
  end
end
