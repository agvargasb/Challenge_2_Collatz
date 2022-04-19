# Challenge #2: Collatz Conjecture.

## Andrés Vargas.

'''
class LogLineParser
    def initialize(line)
        @line = line
    end

    #PARTS = @line&.split(':')

    def message
        text = @line&.split(':')[1]
        text.strip
    end
    
    def log_level
        level = @line&.split(':')[0]
        level.gsub(/[\[\]]/, '').downcase
    end
    
    def reformat
        "#{self.message} (#{self.log_level})"
    end
end
'''