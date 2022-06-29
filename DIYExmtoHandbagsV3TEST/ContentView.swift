//
//  ContentView.swift
//  DIYExmtoHandbagsV3TEST
//
//  Created by Sophie Marcotte on 6/28/22.
//

import SwiftUI

struct ContentView: View {
    @State var title: String
    var body: some View {
        VStack{
            Text(title)
                .padding()
            Button("Click Me") {
                guard let url = Bundle.main.url(forResource: "data", withExtension: "json")
                else{
                    self.title = "URL not found"
                    return
                }
                do{
                let data = try Data(contentsOf: url)
                let form = try JSONDecoder().decode(Overall.self, from: data)
                print(form)
                }
                catch let error{
                    let error = error
                    self.title = error.localizedDescription
                }
                self.title = "No errors thrown! Data read correctly"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "Click to read json")
    }
}



