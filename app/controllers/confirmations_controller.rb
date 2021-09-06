# frozen_string_literal: true

class ConfirmationsController < ApplicationController
  private

  def after_confirmation_path_for(_resource_name, resource)
    sign_in(resource)
    your_new_after_confirmation_path
  end
end
