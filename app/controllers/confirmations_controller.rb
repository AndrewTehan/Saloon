class ConfirmationsController < ApplicationController
    private 
    def  after_confirmation_path_for ( resource_name ,  resource ) 
        sign_in ( resource )  # Если вы хотите войти в систему пользователя 
        your_new_after_confirmation_path 
    end 
end
