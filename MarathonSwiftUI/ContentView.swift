import SwiftUI

struct ContentView: View {
    @State var sliderValue = 1.0
    @State var textWidth = 300.0
    
    var body: some View {
        VStack {
            Text(smallTitleStr + "\n" + bigBlueStr)
                .frame(width: 100.0 + (200 * sliderValue), height: 300.0)
                .border(.red, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Slider(value: $sliderValue)
        }
        .padding()
    }
}

var smallTitleStr: AttributedString {
    var result = AttributedString("Марафон по SwiftUI")
    result.font = .systemFont(ofSize: 20)
    result.foregroundColor = .black
    return result
}

var bigBlueStr: AttributedString {
    var result = AttributedString("\"Отцовский пинок\"")
    result.font = .systemFont(ofSize: 40)
    result.foregroundColor = .blue
    return result
}

#Preview {
    ContentView()
}
