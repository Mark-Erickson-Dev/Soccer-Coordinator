// Project 1: Soccer Coordinator

let players = [
    
    ["Name" : "Joe Smith", "Height" : "42", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Jim and Jan Smith"],
    ["Name" : "Jill Tanner", "Height" : "36", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Clara Tanner"],
    ["Name" : "Bill Bon", "Height" : "43", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Sara and Jenny Bon"],
    ["Name" : "Eva Gordon", "Height" : "45", "Soccer Experience" : "No", "Guardian Names(s)" : "Wendy and Mike Gordon"],
    ["Name" : "Matt Gill", "Height" : "40", "Soccer Experience" : "No", "Guardian Names(s)" : "Charles and Sylvia Gill"],
    ["Name" : "Kimmy Stein", "Height" : "41", "Soccer Experience" : "No", "Guardian Names(s)" : "Bill and Hillary Stein"],
    ["Name" : "Sammy Adams", "Height" : "45", "Soccer Experience" : "No", "Guardian Names(s)" : "Jeff Adams"],
    ["Name" : "Karl Saygan", "Height" : "42", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Heather Bledsoe"],
    ["Name" : "Suzanne Greenberg", "Height" : "44", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Henrietta Dumas"],
    ["Name" : "Sal Dali", "Height" : "41", "Soccer Experience" : "No", "Guardian Names(s)" : "Gala Dali"],
    ["Name" : "Joe Kavalier", "Height" : "39", "Soccer Experience" : "No", "Guardian Names(s)" : "Sam and Elaine Kavalier"],
    ["Name" : "Ben Finklestein", "Height" : "44", "Soccer Experience" : "No", "Guardian Names(s)" : "Aaron and Jill Finklestein"],
    ["Name" : "Diego Soto", "Height" : "41", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Robin and Sarika Soto"],
    ["Name" : "Chloe Alaska", "Height" : "47", "Soccer Experience" : "No", "Guardian Names(s)" : "David and Jamie Alaska"],
    ["Name" : "Arnold Willis", "Height" : "43", "Soccer Experience" : "No", "Guardian Names(s)" : "Claire Willis"],
    ["Name" : "Phillip Helm", "Height" : "44", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Thomas Helm and Eva Jones"],
    ["Name" : "Les Clay", "Height" : "42", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Wynonna Brown"],
    ["Name" : "Herschel Krustofski", "Height" : "45", "Soccer Experience" : "Yes", "Guardian Names(s)" : "Hyman and Rachel Krustofski"]
    
]

var dragons = [[String : String]]()
var sharks = [[String : String]]()
var raptors = [[String : String]]()

var experiencedPlayers = [[String : String]]()
var inexperiencedPlayers = [[String : String]]()

var teamMax = players.count/3

for player in players {
    
    let soccerXp = player["Soccer Experience"]
    
    if soccerXp == "Yes" {
        
        experiencedPlayers.append(player)
        
    } else {
        
        inexperiencedPlayers.append(player)
    }
    
}

for player in experiencedPlayers {
    
    if dragons.count < teamMax/2 {
        
        dragons.append(player)
        
    } else if sharks.count < teamMax/2 {
        
        sharks.append(player)
        
    } else {
        
        raptors.append(player)
        
    }
    
}

for player in inexperiencedPlayers {
    
    if dragons.count < teamMax {
        
        dragons.append(player)
        
    } else if sharks.count < teamMax {
        
        sharks.append(player)
        
    } else {
        
        raptors.append(player)
        
    }
    
}

print("Experienced: \(experiencedPlayers)")
print("\nInexperienced: \(inexperiencedPlayers)")
print("\nDragons: \(dragons)")
print("\nDragons count: \(dragons.count)")
print("\nSharks: \(sharks)")
print("\nSharks count: \(sharks.count)")
print("\nRaptors: \(raptors)")
print("\nRaptors count: \(raptors.count)\n")

func composeLetters(teamName: String, practice: String, teamArray: [[String : String]]) {
    
    for player in teamArray {
        
        if let name = player["Name"], guardians = player["Guardian Names(s)"] {
            
            print("Dear \(guardians),\n\n\t\(name) has been assigned to the \(teamName) Soccer Team. Please plan to attend the first team practice, which will be held on \(practice). See you there!\n\nYours Truly,\nJason Voorhees\nCrystal Lake Youth Soccer League Coordinator\n\n-----------------------------------------------------------------\n")
            
        }
        
    }
    
}

composeLetters("Dragons", practice: "March 17, 1pm", teamArray: dragons)
composeLetters("Sharks", practice: "March 17, 3pm", teamArray: sharks)
composeLetters("Raptors", practice: "March 18, 1pm", teamArray: raptors)


