import SwiftUI

struct GridView: View {
    
    let xLines: Int
    let yLines: Int
    
    private let lineWidth: CGFloat = 1
    
    var body: some View {
        ZStack {
            VStack {
                ForEach(0...yLines, id: \.self) {
                    createHLine(index: $0)
                }
            }
            HStack {
                ForEach(0...xLines, id: \.self) {
                    createYLine(index: $0)
                }
            }
        }
        
    }
    
    @ViewBuilder
    private func createYLine(index: Int) -> some View {
        if index == 0 {
            rectangle
                .frame(width: lineWidth)
        } else {
            HStack(spacing: 0) {
                Spacer()
                    .frame(minWidth: 0)
                rectangle
                    .frame(width: lineWidth)
            }
