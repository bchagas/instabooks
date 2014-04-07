module ApplicationHelper
  def load_photo(id)
    user = current_user
    user.instagram.media_item(id)
  end

  def humanize_object(object)
    case object.class.name
    when 'AlbumPresenter'
      'albums'
    end
  end

  def album_url(album)
    "#{root_url}albums/#{album.slug}"
  end
end
