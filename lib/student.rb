class Student
attr_accessor :name, :grade
attr_reader :id

def initialize(name, grade, id=nil)
@name = name
@grade = grade
@id = id
end

def create_table
sql = <<-SQL
REATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
        SQL
    DB[:conn].execute(sql)
end

def drop_table
sql = <<-SQL
DROP TABLE students;
SQL
DB[:conn].execute(sql)
end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
