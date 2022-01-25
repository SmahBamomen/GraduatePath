import SwiftUI

struct Intro: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: secand().navigationBarBackButtonHidden(true) ,
                           label: {
                Image ("logo")
            })
                .padding(.trailing)
                .navigationBarHidden(true)
            
            
        }
    }
}
//secaand bage
struct secand : View {
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                    .frame(height: 70)
                Text("Everything You Need To Know About Collage")
                    .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))
                Text(" Majors ")
                    .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))      + Text("And ")
                    .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))
                + Text("Universities ")
                    .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))            + Text("In ")
                    .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))            + Text("Saudi Arabia ." )
                    .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                Spacer()
                
                Image("photo1")
                    .padding([.top, .leading, .bottom])
                Spacer()
                    .frame(height: 170)
                HStack{
                    Button(action: {}) {
                        Text( Image ("photob1"))
                            .padding(.trailing, 30.0)
                    }
                    NavigationLink(destination: Forth().navigationBarBackButtonHidden(true) ,
                                   label: { Button("SKIP") {}
                                   .padding(.trailing, 50.0)
                        
                        .tint(.gray)})
                    ZStack{
                        NavigationLink(destination: Thered().navigationBarBackButtonHidden(true) ,
                                       label: { Button("     ") {}})
                            .buttonStyle(.bordered)
                            .tint(.gray)
                        Image(systemName: "arrow.right")
                            .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                            .tint(Color(red: 0.021, green: 0.673, blue: 0.748))
                            .padding()
                        
                    }
                    
                    
                }
                Spacer()
                    .frame(height: 70)
            }
            .navigationBarHidden(true)
            
            
        }
    }
}

struct Thered : View {
    var body: some View {
        NavigationView{
            
            
            //thered bage
            VStack{
                
                Text("Receive Consultions From ")
                    .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))            + Text("Experts ")
                    .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                Text("Around The World .")
                    .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))
                
                Image("photo2")
                    .padding([.top, .leading, .bottom])
                Spacer()
                    .frame(height: 170)
                
                HStack{Button(action:{}) {
                    Text( Image ("photob2"))
                        .padding(.trailing, 70.0)
                }
                    NavigationLink(destination: Forth().navigationBarBackButtonHidden(true) ,
                                   label: { Button("SKIP") {}
                                   .padding(.trailing, 50.0)
                        
                        .tint(.gray)})
                    
                    ZStack{
                        
                        NavigationLink(destination: Forth().navigationBarBackButtonHidden(true) ,
                                       label: { Button("     ") {}})
                            .buttonStyle(.bordered)
                            .tint(.gray)
                        Image(systemName: "arrow.right")
                            .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                            .tint(Color(red: 0.021, green: 0.673, blue: 0.748))
                            .padding()
                        
                    }
                    
                }
                Spacer()
                .frame(height: 70)            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
        }
    }
}

//forth bage
struct Forth : View {
    var body: some View {
        NavigationView{
            
            VStack{
                
                Text("Calclate Your ")
                    .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))            + Text("Weghted Avarage ")
                    .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                Text("For Your Desierd Major .")
                    .foregroundColor(Color(red: 0.10196078431372549, green: 0.20392156862745098, blue: 0.30980392156862746))
                
                Image("photo3")
                    .padding([.top, .leading, .bottom])
                Spacer()
                    .frame(height: 170)
                HStack{Button(action:{}) {
                    Text( Image ("photob3"))
                    
                }
                    NavigationLink(destination: ContentView(),
                                   label: { Button("START          ") {}
                                   .tint(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
                                   .controlSize(.large)
                                   .buttonStyle(.borderedProminent)
                        .padding(.leading, 120.0)})
                    
                }
                Spacer()
                .frame(height: 170)            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}





struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
            .padding([.bottom, .trailing])
    }
}
