class Employee
	def initialize(name, age, birth_date, cpf, identification_number, join_date, salary, sector, role)
		@name = name
		@age = age.to_i
		@birth_date = birth_date
		@cpf = cpf #Aqui a gente pode fazer a transformacao pra inteiro ou n, vcs que sabem
		@identification_number = identification_number
		@join_date = join_date
		@salary = salary.to_f
    		@sector = sector
    		@role = role
	end
	
	def get_salary()
		return @salary
	end

	def change_salary(new_salary)
		@salary = new_salary
	end

	def get_age()
		return @age
	end

	def get_name()
		return @name
	end

	def get_birth_date()
		return @birth_date
	end

	def get_sector()
		return @sector
  	end
  
  	def get_cpf()
		return @cpf
  	end

	def get_join_date()
		return @join_date
	end

	def get_identification_number()
		return @identification_number
	end 

	def get_role()
		return @role
	end

end


def Employee_sort(employees)
	n = employees.length
	employees.sort! { |a, b|  a.get_age <=> b.get_age }
end

