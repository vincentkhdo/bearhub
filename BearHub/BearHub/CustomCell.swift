import SwiftUI

struct CustomCell: View {
    var imageName: String
    @State var itemName: String
    @State var price: Int
    @State var balance: Int
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 40, height: 40)
        Text(itemName).padding(.leading)
        Text("-  $" + String(price))
        Spacer()
    }
}
