module Number
	
	def self.description
		puts("\n\tЗадание 2\n Описание задания:\nВыводит в 2 колонки цифры по заданной закономерности.")
	end

	def self.show
		tmp = 0
		19.times {|i| puts("#{i+2} \t #{tmp += i+1}")}
	end

	def self.runApp #выполнение задания
		description
		puts("\n\tРезультат выполнения задания:")
		show
  end

end
