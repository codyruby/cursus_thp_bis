# Instancions l'array des prix

def day_trader 
	prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

	best_buy_prices = prices.min
	best_sell_prices = prices.max

	index_buy = prices.index(best_buy_prices)
	index_sell = prices.index(best_sell_prices)

	index_buy
	index_sell

	i = 0
	while index_buy < index_sell do

	p "Le meilleur prix d'achat est: " + best_buy_prices.to_s

	end
end

