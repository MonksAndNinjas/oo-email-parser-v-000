require 'pry'

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails
  @@all = []

  def initialize(csv)
    @emails = csv
    @emails
  end

  def self.all
    @@all
  end

  def parse
    emails_seperated = self.emails.split(/\W\s|\s/)
    emails_seperated.each do |email_unsaved|
      if self.all.detect {|email_saved| email_saved == email_unsaved} == nil
        self.class.all << email_unsaved
      end
    end
  end

end
