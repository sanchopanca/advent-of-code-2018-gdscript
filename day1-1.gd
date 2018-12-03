extends SceneTree

func file_to_list_of_strings(file_name):
    var file = File.new()
    file.open(file_name, file.READ)
    var content = file.get_as_text()
    return content.split('\n')


func _init():
    var result_frequency = 0
    for frequency in file_to_list_of_strings('./day1-1.txt'):
        result_frequency += int(frequency)
    print(result_frequency)
    quit()