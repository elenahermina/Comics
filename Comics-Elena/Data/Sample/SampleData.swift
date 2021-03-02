//
//  SampleData.swift
//  Comics-Elena
//
//  Created by elena hermina barbullushi on 01.03.21.
//


import Foundation


// ******* DEFAULT DATA *******
var defaultAvengers : [Fighter] = []
//var defaultVillains: [Villain] = []






// ******* LOAD JSON DATA *******
 func loadAvengers() {
    guard let pathURL = Bundle.main.url(forResource: "avengers_data", withExtension: "json") else {
        print("Can not find `avengers_data` resource")
        return
    }
    
    do {
        let data = try Data(contentsOf: pathURL)
        defaultAvengers = try JSONDecoder().decode([Fighter].self, from: data)
    } catch {
        print("Can not find `avengers_data` resource")
    }
}
/*
private func loadVillains() {
    guard let pathURL = Bundle.main.url(forResource: "villains_data", withExtension: "json") else {
        print("Can not find `villains_data` resource")
        return
    }
    
    do {
        let data = try Data(contentsOf: pathURL)
        defaultVillains = try JSONDecoder().decode([Villain].self, from: data)
    } catch {
        return print("Can not find `avengers_data` resource")

    }
    
}

*/
