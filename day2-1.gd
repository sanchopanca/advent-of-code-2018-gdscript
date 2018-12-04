extends SceneTree

func file_to_list_of_strings(file_name):
    var file = File.new()
    file.open(file_name, file.READ)
    var content = file.get_as_text()
    return content.split('\n')

func contains_pairs_and_triplets(string):
    var has_pairs = 0
    var has_triplets = 0
    var counter = {}
    for letter in string:
        if counter.has(letter):
            counter[letter] += 1
        else:
            counter[letter] = 1

    for count in counter.values():
        if count == 2:
            has_pairs = 1
        elif count == 3:
            has_triplets = 1

    return [has_pairs, has_triplets]


func _init():
    var pairs = 0
    var triplets = 0
    for string in file_to_list_of_strings('./day2-1.txt'):
        var has_pairs
        var has_triplets
        var result = contains_pairs_and_triplets(string)
        has_pairs = result[0]
        has_triplets = result[1]
        pairs += has_pairs
        triplets += has_triplets
    print(pairs * triplets)
    quit()
