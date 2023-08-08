import SwiftUI

class Items: Identifiable {
    var imageName: String
    var itemName: String
    var price: Int
    
    
    init(imageName: String, itemName: String, price: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.price = price
    }
    
}

struct MainView: View {
    @State var textInput: String = ""
    @State var balance: Int = 300
    @State var purchased = [Items]()
    @State var saved = [Items]()
    
    var clothes_list = [
        Items(imageName: "sweatshirt", itemName: "Sweatshirts", price: 20),
        Items(imageName: "sweatpant", itemName: "Sweatpants", price: 25),
        Items(imageName: "jacket", itemName: "Jackets", price: 40)
    ]
    var transport_list = [
        Items(imageName: "scooter", itemName: "scooter", price: 200),
        Items(imageName: "skateboard", itemName: "skateboard", price: 200)
    ]
    var textbooks_list = [
        Items(imageName: "textbook1", itemName: "Calculus II", price: 20),
        Items(imageName: "textbook2", itemName: "Introductory Statistics", price: 15),
    ]
    var furniture_list = [
        Items(imageName: "armchair", itemName: "IKEA Armchair", price: 20),
        Items(imageName: "desk", itemName: "Desk Large", price: 50),
        Items(imageName: "drawer", itemName: "4-drawer", price: 80),
        Items(imageName: "tv unit", itemName: "TV-unit small", price: 5),
    ]
    
    var body: some View {
        
        NavigationView {
        VStack {
            
            HStack {
                Image("search")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .padding()
                
                TextField(
                  "Seach Items",
                  text: $textInput
                ).padding(.trailing)
            }
            
            HStack(spacing: 50) {
                NavigationLink(destination: ProfileView(saved_list: saved, order_history: purchased), label: {
                    Text("Profile")
                })
            }
            
            Spacer()
            
            Text("Current Balance: $" + String(balance))
            
            
            List {
                Section(header: Text("Clothes")) {
                    ForEach(clothes_list) {i in
                        HStack {
                            Image(i.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                            Text(i.itemName)
                            Text("-  $" + String(i.price))
                            Spacer()
                            NavigationLink(destination: ContentView(imageName: i.imageName, itemName: i.itemName, price: i.price), label: {
                                Text("")
                            })
                        }
                        HStack{
                            Button("BUY", action: {
                                if (i.price != 0 && i.price <= balance) {
                                    purchased.append(Items(imageName: i.imageName, itemName: i.itemName, price: i.price))
                                    i.itemName = "SOLD"
                                    balance = balance - i.price
                                    i.price = 0
                                    i.imageName = "xIcon"
                                }
                            })
                            Spacer()
                            Button("SAVE", action: {
                                saved.append(Items(imageName: i.imageName, itemName: i.itemName, price: i.price))
                            })
                        }
                    }
                }
                
                Section(header: Text("Furniture")) {
                    ForEach(furniture_list) {i in
                        HStack {
                            Image(i.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                            Text(i.itemName)
                            Text("-  $" + String(i.price))
                            Spacer()
                            NavigationLink(destination: ContentView(imageName: i.imageName, itemName: i.itemName, price: i.price), label: {
                                Text("")
                            })
                        }
                        HStack{
                            Button("BUY", action: {
                                if (i.price != 0 && i.price <= balance) {
                                    purchased.append(Items(imageName: i.imageName, itemName: i.itemName, price: i.price))
                                    i.itemName = "SOLD"
                                    balance = balance - i.price
                                    i.price = 0
                                    i.imageName = "xIcon"
                                }
                            })
                            Spacer()
                            Button("SAVE", action: {
                                saved.append(Items(imageName: i.imageName, itemName: i.itemName, price: i.price))
                            })
                        }
                    }
                }
                
                Section(header: Text("Transportation Vehicles")) {
                    ForEach(transport_list) {i in
                        HStack {
                            Image(i.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                            Text(i.itemName)
                            Text("-  $" + String(i.price))
                            Spacer()
                            NavigationLink(destination: ContentView(imageName: i.imageName, itemName: i.itemName, price: i.price), label: {
                                Text("")
                            })
                        }
                        HStack{
                            Button("BUY", action: {
                                if (i.price != 0 && i.price <= balance) {
                                    purchased.append(Items(imageName: i.imageName, itemName: i.itemName, price: i.price))
                                    i.itemName = "SOLD"
                                    balance = balance - i.price
                                    i.price = 0
                                    i.imageName = "xIcon"
                                }
                            })
                            Spacer()
                            Button("SAVE", action: {
                                saved.append(Items(imageName: i.imageName, itemName: i.itemName, price: i.price))
                            })
                        }
                    }
                }
                
                Section(header: Text("Textbooks")) {
                    ForEach(textbooks_list) {i in
                        HStack {
                            Image(i.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                            Text(i.itemName)
                            Text("-  $" + String(i.price))
                            Spacer()
                            NavigationLink(destination: ContentView(imageName: i.imageName, itemName: i.itemName, price: i.price), label: {
                                Text("")
                            })
                        }
                        HStack{
                            Button("BUY", action: {
                                if (i.price != 0 && i.price <= balance) {
                                    purchased.append(Items(imageName: i.imageName, itemName: i.itemName, price: i.price))
                                    i.itemName = "SOLD"
                                    balance = balance - i.price
                                    i.price = 0
                                    i.imageName = "xIcon"
                                }
                            })
                            Spacer()
                            Button("SAVE", action: {
                                saved.append(Items(imageName: i.imageName, itemName: i.itemName, price: i.price))
                            })
                        }
                    }
                }
                }
            .buttonStyle(BorderlessButtonStyle())
            }
        .navigationTitle("BearHub")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
