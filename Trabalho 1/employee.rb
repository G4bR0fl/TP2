class Employee
	def initialize(name, age, birth_date, salary, sector)
		@name = name;
		@age = age.to_i;
		@birth_date = birth_date;
		@salary = salary.to_f;
		@sector = sector;
	end
	
	def get_salary()
		return @salary;
	end

	def change_salary(new_salary)
		@salary = new_salary;
	end

	def get_age()
		return @age;
	end

	def get_name()
		return @name;
	end

	def get_birth_date()
		return @birth_date;
	end

	def get_sector()
		return @sector;
	end


	
end


def Employee_sort(employees)
	n = employees.length;
	employees.sort! { |a, b|  a.get_age <=> b.get_age }
end

