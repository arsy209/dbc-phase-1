require 'date'
class Student

  attr_accessor :id, :first_name, :last_name, :gender, :birthday, :email, :phone, :created_at, :updated_at
  
  def initialize(argv = {})
  	@id = argv["id"]
    @first_name = argv["first_name"] 
    @last_name = argv["last_name"]
    @gender = argv["gender"] 
    @birthday = argv["birthday"] 
    @email = argv["email"] 
    @phone = argv["phone"] 
    @created_at = argv["created_at"] 
    @updated_at = argv["updated_at"] 
  end

  def self.all
    every_student = $db.execute("select * from students;")
    every_student.map {|new_hash| Student.new(new_hash)}
  end

  def self.where(value)
    every_student = $db.execute("select * from students where '#{value}'",value)
    every_student.map {|new_hash| Student.new(new_hash)}
  end
  def self.all_by_birthday
    every_student = $db.execute("select * from students order by birthday;")
    every_student.map {|new_hash| Student.new(new_hash)}
	end

    def self.find(number)
    if number == 0 || number > $db.last_insert_row_id
    	return nil
    else
    Student.new($db.execute("select * from students where id = '#{number}';").first)
  	end
   end

  def self.find_by_first_name(first_name)
    Student.new($db.execute("select * from students where first_name = '#{first_name}';").first)
  end

  def delete
    $db.execute("delete from students where id = '#{id}'")
  end

  def save
    if id
      $db.execute( "update students 
      			set
              first_name = '#{first_name}',
              last_name= '#{last_name}',
              gender = '#{gender}',
              birthday = '#{birthday}',
              email = '#{email}',
              phone = '#{phone}',
              created_at = '#{created_at}',
              updated_at = '#{updated_at}'
        where id = '#{id}';")
    else
     $db.execute("insert into students (first_name, last_name, gender, birthday, email, phone, created_at, updated_at)
       values('#{@first_name}', '#{@last_name}', '#{@gender}', '#{@birthday}', '#{@email}', '#{@phone}', '#{@created_at}', '#{@updated_at}');")
     @id = $db.last_insert_row_id
    end
  end
end
