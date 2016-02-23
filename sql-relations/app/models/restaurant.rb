class Restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    location: "TEXT",
    owner_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def owner

    Owner.find(self.owner_id)

    # sql = <<-SQL
    # SELECT * FROM owners where owner.id = ?
    # SQL
    # rows = self.class.db.execute(sql, self.owner_id)
    # Owner.objects_from_rows(rows).first
  end
end
