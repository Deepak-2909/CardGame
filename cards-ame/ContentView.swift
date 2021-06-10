//
//  ContentView.swift
//  cards-ame
//
//  Created by Deepak on 30/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        
        ZStack{
            Image("background").ignoresSafeArea()
            
            if (playerScore == 5){
                Button(action: {
                    playerScore = 0
                    cpuScore = 0
                    
                }, label: {
                     Image("win")
                        
                })
                
            }
            else if (cpuScore == 5){
                
                Button(action: {
                    playerScore = 0
                    cpuScore = 0
                    
                }, label: {

                        
                        Image("lose")
                            .resizable()
                            .frame(width: 400, height: 300)
                            
                    
                })
                
            }
            else{
            VStack(){
                Spacer()
                
                Image("logo")
                    .padding(.top, 20.0)
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if (playerRand > cpuRand){
                        
                        playerScore += 1
                        
                    }
                    else if(cpuRand > playerRand){
                        
                        cpuScore += 1
                        
                    }
                    else{
                        playerScore = playerScore
                        cpuScore = cpuScore
                    }
                    
                },
                       label: {
                        Image("dealbutton")
                })
                
                Spacer()
                
                HStack(){
                    
                    Spacer()
                    VStack{
                        
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        
                        
                        Text(String(playerScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 20.0)
                        
                    }
                    Spacer()
                    
                    VStack{
                        
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 20.0)
                        
                    }
                    Spacer()
                    
                    
                }
                Spacer()
            }
        }
    }
        
  }
 
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
