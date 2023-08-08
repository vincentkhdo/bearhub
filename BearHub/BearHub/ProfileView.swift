import Foundation
import SwiftUI

struct ProfileView: View {
    var saved_list: [Items]
    
    var order_history: [Items]
    
    var body: some View {
        VStack() {
            Image("Oski")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            
            Text("Name Name").bold().font(.system(size: 30))
            Text("@username")
            
            Divider().padding(5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Contact Info").bold()
                Text("Email: xxxxxx@berkeley.edu")
                Text("Phone: 123-456-7890")
            }
            .frame(width: 330, alignment: .leading)
            
            Divider().padding(5)
            
            VStack(alignment: .leading) {
                Text("Saved items").bold()
                ForEach(saved_list) {i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, price: i.price, balance: 0)
                }
            }
            .frame(width: 330, alignment: .leading)
            .padding(.horizontal)
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Order History").bold()
                ForEach(order_history) {i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, price: i.price, balance: 0)
                }
            }
            .frame(width: 330, alignment: .leading)
            .padding(.horizontal)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
