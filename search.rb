module Search

	def self.description
		puts("\n\tЗадание 4\n Описание задания:\nПроизводит в Hash поиск значения по заданному ключу.")
	end

	def self.hashSearch(anyHash, hashKey)# поиск по ключу, если ключ не найден возвращает NilClass
	
		if anyHash.is_a?(Hash) or anyHash.is_a?(Array)
	
			anyHash.each{|key, value|
			
				if key.to_s == hashKey.to_s
				
					if value == nil
					puts ("\n\nНайденное значение по ключу #{key} равно nil")# значение найдено но равно nil
					end
					
				 	return @res = value 

				else
					if key.is_a?(Hash) or key.is_a?(Array)# проверяем ключ и значение
					
						@res = hashSearch(key, hashKey)
						
					else value.is_a?(Hash) or value.is_a?(Array)
					
						@res = hashSearch(value, hashKey)
						
					end
					
				end
			}
		end
		
		return @res
		
	end
	
	def self.runApp #выполнение задания
		@@has = {"test"=>1,proc{}=>[[{:key=>"sss"},{"pass"=>{"a"=> [1,{:bsd => [[],[],[],[],[],[[proc{}] => {[7,1]=>{:rr=>111}}]]}] }}], [1,[:olol, {[1, {:trolo => "r"}] => 1}]]],"zero"=>7,"kuk"=>[{"tr"=>"jxp"},{:lx=>"xp"}]}
		description
		print("\n\tРезультат выполнения задания:\n#{@@has}\n Введите значение ключа:")
		key = gets.chomp
		res = hashSearch(@@has, key)
		puts("\nКлючю \'#{key}\' значение #{"не" if res==nil } найдено#{", оно равно:\n#{res}" if res!=nil}")
  end

end
Search::runApp
