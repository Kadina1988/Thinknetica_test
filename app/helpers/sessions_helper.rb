module SessionsHelper

  def flash_message(category)
    flash[category]
  end
end
