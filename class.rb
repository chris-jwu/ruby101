#!/usr/bin/ruby -w
class Customer

  # class variable
  @@count = 0

  # The initialize method is a special type of method,
  # which will be executed when the new method of the class is called with parameters.
  def initialize(id, name, country)
    # instance variable
    @cust_id=id
    @cust_name=name
    @cust_country=country
    @@count += 1
  end

  def name
    @cust_name
  end

  def id
    @cust_id
  end

  def country
    @cust_country
  end

  def show_detail
    # Double-quoted strings allow substitution and backslash notation 
    # but single-quoted strings don't allow substitution and allow backslash notation only for \\ and \'
    puts "Id: #{@cust_id}, Name: #{@cust_name}, Country: #{@cust_country}"
  end

  # use self. to define static method
  def self.total
    puts "Total number of customers: #{@@count}"
  end

end

customer1 = Customer.new(1, 'Chris', 'Hong Kong')
customer1.show_detail

customer2 = Customer.new(2, 'Jack', 'Japan')
customer2.show_detail

Customer.total
