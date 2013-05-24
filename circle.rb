module Circle

  def self.description
    puts("\n\tЗадание 3\n Описание задания:\nВыводит круг заданным диаметром.")
  end

  def self.drawCircle(d)
    arc = ""#переменная для записи
    
    ((d/2).to_i).times{|i|
      x = (Math::sqrt((((d/2)**2) - (i**2)).abs)).to_i #формула расчета точки
      arc += ("\t #{"  "*((d/2)-x)}*#{"  "*(x*2)}*#{"  "*((d/2)-x)} \t\n")
    }

    txt = "\n\t*#{"  "*d}*" # строка, которая добавится если диаметр нечетное число
    
    puts("#{arc.reverse}#{txt if d%2 == 1}\n#{arc}") # "Рисуем" круг
  end
  
  def self.runApp #выполнение задания
  	description
		print("\n\tРезультат выполнения задания:\n\n Введите значение диаметра 'D'(используйте >20):")
		drawCircle(gets.to_i.abs)
  end

end
