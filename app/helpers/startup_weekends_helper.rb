module StartupWeekendsHelper
  def twitter_handler(twitter)
    link_to "<i class='fa fa-twitter'></i> #{twitter}".html_safe, "http://www.twitter.com/#{twitter} ", target: '_blank'
  end

  def twitter_icon(twitter)
    link_to "<i class='fa fa-twitter'></i>".html_safe, "http://www.twitter.com/#{twitter} ", target: '_blank'
  end

  def facebook_handler(facebook)
    link_to "<i class='fa fa-facebook'></i> #{facebook}".html_safe, "http://www.facebook.com/#{facebook} ", target: '_blank'
  end

  def facebook_icon(facebook)
    link_to "<i class='fa fa-facebook'></i>".html_safe, "http://www.facebook.com/#{facebook} ", target: '_blank'
  end

  def internet_handler(internet)
    link_to "<i class='fa fa-globe'></i> #{internet}".html_safe, "http://#{internet} ", target: '_blank'
  end

  def internet_icon(internet)
    link_to "<i class='fa fa-globe'></i>".html_safe, "http://#{internet} ", target: '_blank'
  end

  def imagen_handler(logotipo)
     logotipo == "" ? 'logoGray.svg' : logotipo
  end

  def clase

  end

end
