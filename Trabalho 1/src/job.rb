class Job
    @@curr_id = 0

    def initialize(name, salary)
        @@curr_id += 1
        @id = @@curr_id
        @name = name
        @salary = salary
    end

    def setSalary( new_salary )
        @salary = new_salary
    end

    def getName()
        return @name
    end

    def setName( new_name)
        @name = new_name
    end
end