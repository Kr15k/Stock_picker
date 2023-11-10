def stock_picker(stock_prices)
    highest_profit = 0
    best_days = ""
    stock_prices.each_with_index do |value1, index1|
        stock_prices.each_with_index do |value2, index2|
            profit = value2 - value1
            if profit > highest_profit && index1 < index2
                highest_profit = profit
                best_days = index1+1, index2+1
            end
        end
    end
    return best_days
end

stock_price_list = [17,3,6,9,15,8,6,1,10]

puts "Stock price:\n #{stock_price_list.join","}\n"
puts "Best buy and sell day:\n #{stock_picker(stock_price_list).join","}"