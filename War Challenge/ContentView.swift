//
//  ContentView.swift
//  War Challenge
//
//  Created by Alex Cannizzo on 21/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card4"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
                .scaledToFill()
            
            VStack {
                Spacer()
                Image("logo")
                    .padding()
                    
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    } else {
                        return
                    }
                } label: {
                    Image("dealbutton")
                }
                
                

                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .foregroundColor(Color.white)
                            .font(.title3)
                        Text(String(playerScore))
                            .padding(.top)
                            .foregroundColor(Color.white)
                            .font(.title)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .font(.title3)
                        Text(String(cpuScore))
                            .padding(.top)
                            .foregroundColor(Color.white)
                            .font(.title)
                    }
                    Spacer()
                }
                Spacer()
            }// END VSTACK
        }// END ZSTACK
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
