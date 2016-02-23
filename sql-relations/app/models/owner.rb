class Owner
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def restaurants
    # should return an array containing restaurant objects
    sql = <<-SQL
    SELECT * FROM restaurants
    WHERE owner_id = ?
    SQL
    rows = self.class.db.execute(sql, self.id)
    Restaurant.objects_from_rows(rows)
  end
end
