//
//  ContentView.swift
//  Practice
//
//  Created by Caleb Hemmestad on 4/22/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "Card1"
    @State var cpuCard = "Card2"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(60)
                HStack {
                    Spacer()
                    Image(playerCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Image(cpuCard)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    let playerRandom = Int.random(in:1...4)
                    let cpuRandom = Int.random(in:1...4)
                    
                    playerCard = "Card"+String(playerRandom)
                    cpuCard = "Card"+String(cpuRandom)
                    
                    if playerRandom > cpuRandom {
                        playerScore += 1
                    }
                    else if cpuRandom > playerRandom {
                        cpuScore += 1
                    }
                }, label: {
                    Image("Button")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(60)
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom,1)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack {
                        Text("Computer")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom,1)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                .padding(.bottom,50)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
