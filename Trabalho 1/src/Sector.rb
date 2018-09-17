require_relative "Employee"

#Setores possiveis: finanças(2), marketing(3), tecnologia(4), normatividade(5) e design(6)
#Cada setor possui auxiliares, tecnicos, profissionais, e diretores

=begin 
The class Sector defines the amount of sectors inside the company
Every sector has a name, the professionals allowed on the specific sector,
the director id of the sector and the director of the specific sector.
=end

class Sector
  @@curr_id = 0
  @@employees_qnt = 0
  def initialize(sector_name, profession, director_id, director)
    @@curr_id += 1
    @sector_id = @@curr_id + 1    # campo auto incremental, todo novo sector automaticamente recebe um valor maior
    @sector_name = sector_name
    @director_id = director_id # a ideia eh que passe o id de um empregado que sera o diretor. Este eh opcional na inicialização.
    @director = director
    @profession = profession
    @allowed_professionals = Array.new
    @allowed_professionals.push(profession)
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
      return employee
    else 
      return false
    end
  end
  
  
  # Defines a new director for a new sector.
  def set_director(new_dir, sector_id)
    if check_employee(sector_id) == true
      return @director = new_dir 
    else
      return false
    end
  end

  # Returns which profession the current employee has
  def get_profession()
    return @profession
  end


  # Returns the director id(1-3)
  def get_director_id()
    return @director_id 
  end 
  
  def get_sector() 
    return @sector_name
  end

  # Still need some adjustments
    # # Returns the amount of employees on that sector
    # def get_employee_amount()
    #   return @@employees_qnt 
    # end

end

x = Sector.new('tecnologia', 'administrator', 1, 'sector director')

p x.get_profession()