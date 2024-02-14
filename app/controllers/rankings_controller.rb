class RankingsController < ApplicationController
  def index
    @ranking = Manga.left_joins(:likes).group(:id).having("COUNT(likes.id > 0)").order('COUNT(likes.id) DESC').limit(3)
    @ranking.each do |manga|
      uri = URI.parse('https://www.googleapis.com')
      http_client = Net::HTTP.new(uri.host, uri.port)
      get_request = Net::HTTP::Get.new("/books/v1/volumes/#{manga.google_book_api_id}", 'Content-Type' => 'application/json')
      http_client.use_ssl = true
      response = http_client.request(get_request)
      @data = JSON.parse(response.body)
      manga.thumbnail = @data.dig("volumeInfo", "imageLinks", "thumbnail")
    rescue StandardError => e
      logger.error("Google APIでエラーが起こりました")
      logger.error(e.message)
    end
  end
end
