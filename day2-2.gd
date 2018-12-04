extends SceneTree

func file_to_list_of_strings(file_name):
    var file = File.new()
    file.open(file_name, file.READ)
    var content = file.get_as_text()
    return content.split('\n')

func number_of_different_letters(string1, string2):
    var result = 0
    for i in range(string1.length()):
        if string1[i] != string2[i]:
            result += 1
    return result

func get_only_same_latters(string1, string2):
    var result = ''
    for i in range(string1.length()):
        if string1[i] == string2[i]:
            result += string1[i]
    return result

func _init():
    var IDs = file_to_list_of_strings('./day2-1.txt')
    for i in range(IDs.size()):
        for j in range(i+1, IDs.size()):
            if number_of_different_letters(IDs[i], IDs[j]) == 1:
                print(get_only_same_latters(IDs[i], IDs[j]))
                quit()
    quit()
