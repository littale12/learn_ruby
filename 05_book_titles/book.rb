class Book 
    attr_reader :title
    
    def title=(new_title)
        words = new_title.split()
        x = 0
        exceptions = %w(a the an and in of to)
        capitalized = []
        for word in words do
            if x == 0 || exceptions.include?(word) == false
                capitalized << word.capitalize
            else
                capitalized << word
            end
            x += 1
        end
        @title = capitalized.join(" ")
    end
end
