//
//  ContentView.swift
//  HeroWidget
//
//  Created by Fatih Filizol on 21.10.2022.
//

import SwiftUI
import WidgetKit

let superHeros = [superman,batman,ironman]

struct ContentView: View {
    
    
    
    @AppStorage("hero",store: UserDefaults(suiteName: "group.com.fatihfilizol.HeroWidget"))
    var heroData : Data = Data()
    
    
    
    var body: some View {
        VStack {
            ForEach(superHeros) { Hero in
                HeroView(hero: Hero)
                    .onTapGesture {
                        saveToDefaults(hero: Hero)
                    }
            }
        }
        .padding()
    }
    
    
    func saveToDefaults (hero: SuperHero){
        //print(hero.name)
        if let heroData = try? JSONEncoder().encode(hero){
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
