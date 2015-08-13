class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    def form_group_tag(errors, &block) #& turns block into a Proc object- reusable block
        if errors.any?
            content_tag :div, capture(&block), class: 'form-group has-error'
            #method taks symbol arg.,a block, and options. Creates the symbol-specific html tag with block contents.
        else
            content_tag :div, capture(&block), class: 'form-group'
        end
    end    
    
    def after_sign_in_path_for(resource)
        user_path(current_user) 
    end 
    
  
  protected
  
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) << :name
    end

end
