class Article < ActiveRecord::Base
  include Orderable

  def self.published
    []

    # Uncomment to make test pass
    #where('published_at < ?', Time.current).ordered
  end
end
