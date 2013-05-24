module Search

	def self.description
		puts("\n\tЗадание 4\n Описание задания:\nПроизводит в Hash поиск значения по заданному ключу.")
	end

	def self.hashSearch(hashVar, hashKey)
	
		if hashVar.is_a?(Hash) || hashVar.is_a?(Array)
			hashVar.each{|key, value|
				if key == hashKey
					@@res = value
					return @@res
				elsif key.is_a?(Hash) or key.is_a?(Array)
					@@res = hashSearch(key, hashKey)
				else value.is_a?(Hash) or value.is_a?(Array)
					@@res = hashSearch(value, hashKey)
				end
			}
			@@res = "\t Ключа \'#{hashKey}\' нет в заданном \'#{hashVar.class}\':\n #{hashVar}"
		else
		@@res = "\tОшибка !!! Заданная переменная типа \'#{hashVar.class}\'!\nНеобходимо указать переменную типа \'Hash\' или \'Array\'.\nПоиск значения по ключу \"#{hashKey}\" невозможен!"
		end
		
	end
	
	def self.runApp #выполнение задания
		@@has = { 'a' => :X1, 'b' => :X2, 'c' => [{"ya" => :X3}, {"yb" => :X4}]}
		description
		print("\n\tРезультат выполнения задания:\n#{@@has}\n Введите значение ключа:")
		puts("Ключю #{tmp = gets.chomp} соответствует значение #{hashSearch(@@has, 'yb')}\n")
  end

end
