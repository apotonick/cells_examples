class NewsletterCell < Cell::Base
  
  def form
    
    return render_state :register if valid_registration?
    
    nil
  end
  
  def register
    nil
  end
  
  def valid_registration?
    return false unless params[:mode] == "register"
    # At this point we're sure the form has been submitted.
    # Now check if the input is valid.
    return true if NewsletterReceiver.new(:email => params[:email]).save
    
    false
  end
  
end
