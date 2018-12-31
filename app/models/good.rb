class Good < ApplicationRecord

  def change_status(value)
    self.status=value
    self.save
  end
end
