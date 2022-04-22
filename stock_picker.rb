def stock_picker(price_list)
    best_profit = price_list[1] - price_list[0]
    buy_day = 0
    sell_day = 1

    price_list.each_with_index do |buy_price, i|
        price_list[i+1..-1].each_with_index do |sell_price, j|
            if sell_price - buy_price > best_profit
                best_profit = sell_price - buy_price
                buy_day = i
                sell_day = i + j + 1
            end
        end    
    end
    [buy_day, sell_day]
end
