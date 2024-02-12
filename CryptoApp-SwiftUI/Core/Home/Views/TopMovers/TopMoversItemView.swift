import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 5) {
            // Image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
                .padding(.bottom, 8)
            
            // Coin information
            HStack(spacing: 2) {
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            // Coin percentage information
            Text("\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundStyle(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray), lineWidth: 1)
            
        )
    }
}
