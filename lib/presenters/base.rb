module Presenters
  class Base
    attr_reader :subject

    def self.from_array(ary)
      Array.wrap(ary).each {|x| new(x) }
    end

    def self.presents(klass_name)
      define_method(klass_name) { subject }
    end

    def initialize(subject)
      @subject = subject
    end

    # overwrite in subclasses of Presenters::Base
    def as_json(*args)
      subject.as_json(*args)
    end
  end
end