class Value

	attr_accessor :weight, :price, :transparent
	
	def initialize(weight, price, transparentStone)
		@weight = weight
		@price = price
		@transparent = transparentStone
	end

end

class Necklace

	def initialize
		@stones = []
	end
	
	
	
	def addStone(stone)
		@stones.push(stone)
	end
	
	def totalCost()
		cost = 0
		for stone in @stones
			cost += stone.price
		end
		return cost
	end
	
	def totalWeight()
		karat = 0
		for stone in @stones
			karat += stone.weight
		end
		return karat
	end
	
	def rangeOfTransparent(min,max)
		newListStones = []
		for stone in @stones
			if stone.transparent > min and stone.transparent < max
				newListStones.push(stone)
			end
		end
		return newListStones
	end
	

end

def main()

	stone1 = Value.new(2,20,3)
	stone2 = Value.new(2,40,5)
	stone3 = Value.new(5,100,9)
	myNecklace = Necklace.new
	myNecklace.addStone(stone1)
	myNecklace.addStone(stone2)
	myNecklace.addStone(stone3)
	totalCost = myNecklace.totalCost()
	totalWeight = myNecklace.totalWeight()
	puts "Total cost of necklace = #{totalCost}"
	puts "Total weight of necklace = #{totalWeight}"
	
	listStone = myNecklace.rangeOfTransparent(4,10)
		for i in 0...listStone.size()
			puts listStone[i].transparent
		end

end
main()