class NewsletterCell < Cell::Base
  
  def form
    @receiver = NewsletterReceiver.new
    
    if form_submitted?
      @receiver.email = params[:newsletter_receiver][:email]
      return render_state(:registered) if @receiver.save
    end
    
    render
  end
  
  
  def registered
    render
  end
  
  
  def form_submitted?
    params[:mode] == "register"
  end
  
end
