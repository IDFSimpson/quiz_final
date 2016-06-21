json.array!(@auctions) do |auction|
  json.extract! auction, :id, :title, :details, :ends, :reserve_price, :current_price
  json.url auction_url(auction, format: :json)
end
