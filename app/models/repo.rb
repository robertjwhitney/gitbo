class Repo < ActiveRecord::Base
  attr_accessible :description, :name, :open_issues, :owner_name, :watchers, :issues
 
  has_many :issues

  def self.create_from_github(owner, repo)
    connection = GithubConnection.new(owner, repo)

    Repo.create(:name => connection.name,
                :open_issues => connection.open_issues,
                :owner_name => connection.owner_name,
                :watchers => connection.watchers)
  end

  def list_all_issues
    self.issues
  end

  # def 
  #   #gather all issues of instance of a Repo
  # end

end
