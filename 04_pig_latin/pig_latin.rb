#write your code here
def translate(str)
    str = str.split(" ")
    vowels = ["a", "e", "i", "o", "u"]
    piglatin_output = []
    for word in str do
        if word[0..1] == "qu"
            word << word [0..1]
            word[0..1] = ""
        elsif word[1..2] == "qu"
            word << word[0..2]
            word[0..2] = ""
        else
            while vowels.include?(word[0]) == FALSE
                word << word[0] 
                word[0] = ""
            end
        end
        word << "ay"
        piglatin_output << word
    end
    piglatin_output.join(" ")
end