module ApplicationHelper
  def load_photo(id)
    user = current_user
    user.instagram.media_item(id).images.standard_resolution.url
  end

  def humanize_object(object)
    case object.class.name
    when 'AlbumPresenter'
      'albums'
    end
  end
end
