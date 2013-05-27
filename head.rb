require "./hello.rb"
require "./number.rb"
require "./search.rb"
require "./circle.rb"

class Head

	@@appKey = 0

	def startApp
		
		begin
			showTask
		  print("\n\tBведите номер задания для выполнения, или '0' для выхода:")
		  @@appKey = gets.to_i
		  
		  case @@appKey
				when 1
					Hello::runApp
				when 2
					Number::runApp
				when 3
					Circle::runApp
				when 4
					Search::runApp
				when 0
					puts("\tВыход ...")
					break
				else
					puts("\nВы ввели #{@@appKey} под таким номером задания нет!")
				end
		  print("\n\tBведите '0' для выхода или '1 - 9' для продолжения:")
		  @@appKey = gets.to_i
		  
		end while @@appKey != 0
		
	end
	
	def showTask
		Hello::description
		Number::description
		Circle::description
		Search::description
	end

end

br = Head.new
br.startApp
