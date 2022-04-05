class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity

        @teachers = []
        @students = []

        @grades = Hash.new {|h, k| h[k] = []}
    end

    def name
        @name
    end
    def slogan
        @slogan
    end
    def student_capacity
        @student_capacity
    end
    def teachers
        @teachers
    end
    def students
        @students
    end
    def hire(teach)
        @teachers << teach
    end
    def enroll(st)
        if @students.length < @student_capacity
            @students << st
            return true 
        end
        false
    end
    def enrolled?(st)
        @students.include?(st)
    end

# PART 2
    def student_to_teacher_ratio
        @students.length / @teachers.length
    end
    def add_grade(st, grade)
# The value of @grade[st] is the st's array of grades 
        if @students.include?(st)   # or enrolled?(st), or self.enrolled?(st) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            @grades[st] << grade 
            return true
        end
        false
    end
    def num_grades(st)
        @grades[st].count
    end
    def average_grade(st)
        if enrolled?(st) && @grades[st] != [] # or num_grades(st) != 0 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            return @grades[st].sum / num_grades(st)
        end
        nil
    end

end