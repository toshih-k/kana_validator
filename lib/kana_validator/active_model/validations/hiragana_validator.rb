module ActiveModel
  module Validations
    class HiraganaValidator < EachValidator
      def validate_each(record, attribute, value)
        record.errors.add(attribute) if /^[#{Moji.hira}\s　]*$/.match(value).nil?        
      end
    end
  end
end
