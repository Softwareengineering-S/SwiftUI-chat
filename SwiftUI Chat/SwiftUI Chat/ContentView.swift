//
//  ContentView.swift
//  SwiftUI Chat
//
//  Created by Monique Shaqiri on 14.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import SwiftUI
struct ChatMessage : Hashable {
    var message: String
    var avatar: String
    var color: Color
}

struct ContentView: View {
    var messages = [
        ChatMessage(message:"Hey Monique", avatar: "Ramelia", color: .red),
        ChatMessage(message: "Hi, Rami", avatar: "Monique", color: .blue)
    
    ]
    var body: some View {
        
        List{
            ForEach(messages, id: \.self){msg in Group
                {
            Text(msg.avatar)
            Text(msg.message)
                    .bold()
                .foregroundColor(Color .white)
                   .padding(10)
                    .background(msg.color)
                   .cornerRadius(10)
                    
        }
    }
}
}
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
