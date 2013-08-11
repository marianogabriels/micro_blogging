require_relative '../spec_helper'


class RSpec::Core::Users
  def self.inherited(subclass)
    super
    subclass.around do |example|
      Sequel::Model.db.transaction(:rollback=>:always){user.call}
    end
  end

end
