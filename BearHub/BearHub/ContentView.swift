import SwiftUI

struct ContentView: View {
    var imageName: String
    var itemName: String
    var price: Int
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            HStack(alignment: .top){
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                
                HStack {
                    Text(itemName)
                        .bold().font(.system(size: 40))
                    
                    Spacer()
                    
                    LikeButton()
                }
                
                Text("$" + String(price)).font(.system(size: 30))
                Text("Description of the item.")
            }
            .padding(.leading)
            
            
            Divider()
            
            VStack(alignment: .leading) {
                HStack {
                    Image("Carol")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    

                    Spacer()
                        .frame(width: 20)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Seller Name")
                            .bold().font(.system(size: 25))
                        Text("@username")
                        Text("Biography of the seller.")
                    }
                }
            }
            .padding(.leading)
            
        }
        .padding()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
