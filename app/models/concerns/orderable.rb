module Orderable
  extend ActiveSupport::Concern

  module ClassMethods
    def ordered
      raise 'hell' # muhehehe
      order(:created_at)
    end
  end
end
