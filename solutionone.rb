def decode_char(letter)
    dictionary = {
        ".-" => "A",
        "-..." => "B",
        "-.-." => "C",
        "-.." => "D",
        "." => "E",
        "..-." => "F",
        "--." => "G",
        "...." => "H",
        ".." => "I",
        ".---" => "J",
        "-.-" => "K",
        ".-.." => "L",
        "--" => "M",
        "-." => "N",
        "---" => "O",
        ".--." => "P",
        "--.-" => "Q",
        ".-." => "R",
        "..." => "S",
        "-" => "T",
        "..-" => "U",
        "...-" => "V",
        ".--" => "W",
        "-..-" => "X",
        "-.--" => "Y",
        "--.." => "Z",
        ".----" => "1",
        "..---" => "2",
        "...--" => "3",
        "....-" => "4",
        "....." => "5",
        "-...." => "6",
        "--..." => "7",
        "---.." => "8",
        "----." => "9",
        "-----" => "0",
        " " => "",
        "/" => "/"
    }
    return dictionary[letter]
end

def wordsSeparator(completestring)
    return completestring.split("   ");
end

def decode_word(array)
    result = "";
    array.each { |n| 
    temp = n.split(" ");
    temp.each{ |m|
        result = result + decode_char(m);
    }
    result = result + " ";
}
puts(result)
end

decode_word(wordsSeparator(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ..."))