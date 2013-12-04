require "rubygems"
require "bundler/setup"
Bundler.require(:default)
Bundler.setup

require "active_support/core_ext"

Sequel.extension(:migration)
DB = Sequel.sqlite

Sequel.migration do
  change do
    create_table?(:people) do
      primary_key :id, :type => "INTEGER"
      column :name, "STRING"
    end

    create_table?(:books) do
      primary_key :id, :type => "INTEGER"
      column :name, "STRING"
      column :person_id, "INTEGER"
    end
  end
end.apply(DB, :up)

Datamappify.config do |c|
  c.default_provider = :Sequel
end

class Book
  include Datamappify::Entity

  attribute :name, String

  belongs_to :person
end

class Person
  include Datamappify::Entity

  attribute :name, String

  has_many :books, :via => Book
end

class BookRepository
  include Datamappify::Repository

  for_entity Book

  map_attribute :name, :to => "Book#name"
end

class PersonRepository
  include Datamappify::Repository

  for_entity Person

  map_attribute :name, :to => "Person#name"

  references :books, :via => BookRepository
end

p = PersonRepository.save(Person.new(:name => "Bob"))
PersonRepository.find(p.id)
