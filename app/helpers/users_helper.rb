module UsersHelper
  def avatar(user)
    if user.photo.present?
      cl_image_tag(user.photo, class: "avatar")
    else
      image_tag "default-profile.png", class: "avatar"
    end
  end

  def avatar_large(user)
    if user.photo.present?
      cl_image_tag(user.photo, class: "avatar-large")
    else
      image_tag "default-profile.png", class: "avatar-large"
    end
  end
end
