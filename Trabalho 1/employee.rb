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
	for i in 0...n do
		for j in i+1...n do
			if(employees[i].get_age() > employees[j].get_age())
				employees[i],employees[j] = employees[j],employees[i];
			end
		
		end
	end
end

