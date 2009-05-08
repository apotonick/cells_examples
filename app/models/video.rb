class Video < ActiveRecord::Base
  validates_presence_of :url

  named_scope :recent, { :order => 'created_at DESC', :limit => 2 }

  def thumbnail_url
    uri = URI.parse( self[:url] )
    params = uri.query.split( '&' ).inject( {} ) { |hsh, kv| k,v=kv.split( '=' ); hsh[k] = v; hsh }
    # ok we should use youtube api here ;-)
    return "http://img.youtube.com/vi/#{params['v']}/1.jpg"
  end

end
