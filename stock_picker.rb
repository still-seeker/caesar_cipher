#The stock picker method takes an array of stock prices per day(hypothetically)
#And returns an array of days it is best to buy and sell to get the most profit
#As a precondition! In order to sell, you should have bought 
#only then is profit  calculated
def stock_picker(prices_array)

  best_buy = 0
  best_sell = 0
  max_profit = 0

  #range excludes the last day!! you can't determine the profit if you buy on the last day
  (0..(prices.length - 2)).each do |buying|
    #iterating through every sell date after buying starting with(buying + 1)
    ((buying + 1)..prices.length - 1).each do |selling|
      price_difference = prices[selling] - prices[buying]
      if price_difference > max_profit
        max_profit = price_difference
        best_buy =buying
        best_sell = selling
      end
    end
  end
  return [buying, selling]
end