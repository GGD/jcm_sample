require 'net/http'

class GetNewsFeed
  def self.call
    url = 'https://www.discountlandlord.co.uk/news/feed/'
    res = Net::HTTP.get_response(URI.parse(url))
    res_hash = Hash.from_xml(res.body).to_hash

    items = res_hash['rss']['channel']['item']

    items.sort_by { |item| item['pubDate'].to_datetime }.reverse
  rescue
    []
  end
end
