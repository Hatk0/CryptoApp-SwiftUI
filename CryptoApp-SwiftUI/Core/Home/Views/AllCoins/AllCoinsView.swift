import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("All Coins")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(viewModel.coins) { coin in
                    AllCoinsRowView(coin: coin)
                }
            }
        }
    }
}
