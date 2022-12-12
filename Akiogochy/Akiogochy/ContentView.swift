//
//  ContentView.swift
//  Akiogochy
//
//  Created by Vita on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var click = 0
    
    func imgPlayer() {
        var i = 0
        Timer.scheduledTimer(withTimeInterval: 0.04, repeats: true) { timer in
            i += 1
            click += 1
            if click == 69 {
                timer.invalidate()
                click = 0
            }
        }
    }
    
    var body: some View {
        VStack {
            Image("\(click)")
                .resizable()
                .scaledToFit()
            Text("Hmmm...")
                .padding()
            Button("CLICK") {
              imgPlayer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ContentView()
        }
    }
}
