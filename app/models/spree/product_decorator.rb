module Spree
  Product.class_eval do
    def video_complete_url
      if video_url
        slug = video_url.split('?').select { |param| param.split('=')[0] == 'v' }[0]
        return "https://www.youtube.com/embed/#{slug.split('=').last}"
      else

      end
    end

    def has_video?
      !(video_url.nil? or video_url.blank?)
    end
  end
end
