module Hello
	
	def self.description
		puts("\n\tЗадание 1\n Описание задания:\nВыводит 12 раз \"Hello\" но на 6 месте \"Hello World\".")
	end

	def self.show
		#12.times {|i| i == 5 ? puts("Hello Word") : puts("Hello")} первый вариант
		12.times {|i| puts "#{i+1}) Hello #{"World" if i==5 }"}
	end
	
	def self.runApp #выполнение задания
		description
		puts("\n\tРезультат выполнения задания:")
		show
  end
  
end

