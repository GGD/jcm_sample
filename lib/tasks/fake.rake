namespace :fake do

  desc "Generate all fake data"
  task :all => [:agents, :contacts]

  desc "Generate agents"
  task :agents => :environment do
    Agent.create!(name: 'Smith')
    Agent.create!(name: 'Bond')
  end

  desc "Generate contacts"
  task :contacts => :environment do
    Contact.create!(agent: Agent.first, county: 'Tainan')
    Contact.create!(agent: Agent.first, county: 'Kaohsiung')
  end
end
