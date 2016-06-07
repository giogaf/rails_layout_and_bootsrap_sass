class Example< Object

	attr_accessor :honorific,:name,:date

	def initialize name,date		
		@name = name
		@date  =date.nil? ? Date.today : date
	end

	def backwards_name
		@name.reverse
	end
	def to_s
		@name
	end
	def titled_name
		@honorific ||= 'Estemede'
		titled_name = "#{@honorific} #{@name}"
	end
	def december_birthdays
		born_in_december = []
		famous_birthdays.each do |name,date|
			if date.month == 12				
				born_in_december <<name
			end
		end
		born_in_december
	end
	def famous_birthdays
		birthdays = {
			beethoven : Date.new(1170,12,16),
			Brubeck : Date.new(1920,12,6),
			holly : Date.new(1936,8,7)
		}
	end

end
