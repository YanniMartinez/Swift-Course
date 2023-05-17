import SwiftUI

struct ContentView: View {
    @State private var isImageAnimated = false
    @State private var score = 9999
    
    
    var body: some View {
        ZStack{
            
                HStack{
                    /**Hear component**/
                    Heart()
                        .padding(.leading,20)
                    
                    /**Health indicator**/
                    VStack (){
                        Text("Salud")
                            .bold()
                            .foregroundColor(.red)
                            .padding(.bottom,-38)
                            .padding(.leading,-45)
                            .font(.system(size: 15))
                        
                        /**Progress bar health**/
                        Life()
                        Text("Score: \(score)")
                            .bold()
                            .foregroundColor(.gray)
                            .padding(.leading,-25)
                            .padding(.top,-23)
                            .font(.system(size: 12))
                    }
                    Spacer()
                    
                    Bell()
                        .padding(.horizontal,15)
                }.padding(.top,-380)
                Spacer()
                
                
            
            Image("character").resizable()
                .frame(width: 300, height: 300).fixedSize().padding(.top,-100)
                .shadow(color: .pink, radius: 20)
                
            
            Spacer()
            
            Scroll().padding(.top,600)
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

