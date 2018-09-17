require_relative "Employee"

#Setores possiveis: finanças(2), marketing(3), tecnologia(4), normatividade(5) e design(6)
#Cada setor possui auxiliares, tecnicos, profissionais, e diretores

=begin 
The class Sector defines the amount of sectors inside the company
Every sector has a name, the professionals allowed on the specific sector,
the director id of the sector and the director of the specific sector.
=end

class Sector

  @@employees_qnt = 0 # Keeps track of how many employees are in the business
  def initialize(sector_name, profession, director_id, sector_id)
    @sector_id = sector_id
    @sector_name = sector_name
    @director_id = director_id # a ideia eh que passe o id de um empregado que sera o diretor. Este eh opcional na inicialização.
    @profession = profession
    @allowed_professionals = Array.new
    @allowed_professionals.push(profession)
    @director = nil
  end     
  
  # Check  the employee can be in that specific sector
  def check_employee(employee) 
    flag = employee.get_profession()
    if @allowed_professionals.include?(flag)
      return true
    else
      return false
    end
  end
  
  # Add a new employee      
  def add_employee(employee)
    if check_employee(employee) == true
      @@employees_qnt += 1
      return employee
    else 
      return false
    end
  end

  # Returns which profession the current employee has
  def get_profession()
    return @profession
  end
    
  # Returns the director id(0-3) 
  def get_director_id()
    return @director_id 
  end 
  
  # Returns the sector name
  def get_sector() 
    return @sector_name
  end
  
  # Returns the total amount of employees that have been added
  def get_employee_amount()
    return @@employees_qnt 
  end

  def get_sector_id()
    return @sector_id
  end


# Defines a new director for a new sector.  
  def set_director(employee, director_id)
    if employee.get_director_id() == director_id && employee.get_director_id() != 0 
      case director_id
      when 1
        @director = "Sector director"
        return @director
      when 2 
        @director = "Operations director"
        return @director
      when 3
        @director = "Executive director"
        return @director
      end
    else
      return false
    end
  end  
  
end

