#take an array of integers
#find ints a and b such that
# => index(a) < index(b) and
# => b - a is as large as possible ( b > a )


def stock_picker(prices)
  best_days = [0,1]

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day+1..-1].each_with_index do |sell_price, sell_day|

      if (sell_price - buy_price) >
              (prices[best_days[1]] - prices[best_days[0]])
        best_days = [buy_day, (buy_day + sell_day + 1)]
        #sell_day is the index of the new array created starting at buy_day+1
      end
    end
  end
  return best_days
end

p stock_picker([10,3,6,9,1,8,6,1,1])
