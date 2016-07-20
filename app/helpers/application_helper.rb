module ApplicationHelper

  def profile_img(user, options = {})
    options.store :alt, user.name
    return image_tag(user.avatar, options) if user.avatar?

    unless user.provider.blank?
      img_url = user.image_url
    else
      img_url = 'silhouette-human-256.png'
    end
    image_tag(img_url, options)
  end
end
