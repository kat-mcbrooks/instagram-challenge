class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  #primary_abstract_class this was here previously but generated error: "/Users/katbrooks/.rvm/gems/ruby-3.0.0/gems/activerecord-6.1.4.6/lib/active_record/dynamic_matchers.rb:22:in `method_missing': undefined local variable or method `primary_abstract_class' for ApplicationRecord:Class (NameError) Did you mean?  primary_class?"
end
