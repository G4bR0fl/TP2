require_relative "Job"
require 'time'

class Employee
	@@curr_id = 0

	def initialize(name:, birth_date:, cpf:, join_date:  Time.now, bonus:  0, formation: [], sector: nil, role: nil)
		# ID is auto incremental field. Not strictly necessary, though.
		@@curr_id += 1
		@id = @@curr_id
		@name = name
		@birth_date = birth_date
		@cpf = cpf #Aqui a gente pode fazer a transformacao pra inteiro ou n, vcs que sabem
		@join_date = join_date
		@salary_bonus = bonus.to_i
    	@sector = sector
		@role = role
		@formation = formation
	end
	
	def get_salary()
		return @role.get_salary() + @salary_bonus
	end

	def set_bonus( bonus)
		return @salary_bonus = bonus
	end

	def get_age()
		now = Time.now
		age = now.year - @birth_date.year
		# Precise age
		if ((now.month < @birth_date.month) or (now.month == @birth_date.month and now.day < @birth_date.day))
			age -= 1
		end
		return age
	end

	def get_name()
		return @name
	end

	def get_birth_date()
		return @birth_date.strftime("%d/%m/%Y")
	end

	def get_sector()
		return @sector
  	end
  
	def set_sector(new_sector)
		@sector = new_sector
	end
	
  	def get_cpf()
		return @cpf
  	end

	def get_join_date()
		return @join_date
	end

	def get_id()
		return @id
	end 

	# Returns the name of the Job this Employee has
	def get_role()
		return @role.get_name()
	end

	# Returns a reference to the Job this Employee has
	def get_Job()
		return @role
	end

	def get_formation()
		return @formation
	end

	def add_training( new_training )
		@formation.push( new_training )
	end
end


def Employee_sort(employees)
	n = employees.length
	employees.sort! { |a, b|  a.get_age <=> b.get_age }
end

