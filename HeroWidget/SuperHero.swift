//
//  SuperHero.swift
//  HeroWidget
//
//  Created by Fatih Filizol on 21.10.2022.
//

import Foundation

struct SuperHero : Identifiable, Codable{
    
    var id: String {image}
    let image : String
    let name : String
    let realName : String
    
}


let superman = SuperHero(image: "superman", name: "Superman", realName: "Clark Kent")
let batman = SuperHero(image: "batman", name: "Batman", realName: "Bruce Wayne")
let ironman = SuperHero(image: "ironman", name: "Iron Man", realName: "Tony Stark")
