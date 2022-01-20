//
//  HomeView.swift
//  GraduatePath
//
//  Created by samah on 16/06/1443 AH.
//

import SwiftUI
import SwiftUICharts
struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView() {
                    
                    BarChartView(data: ChartData(values: [("King AbdulAziz",57.7),("KFUPM",48.1), ("King Saud",36.4), ("Umm Al-Qura",26)]), title: "Top QS KSA University Rankings",style: Styles.barChartStyleNeonBlueLight,form: ChartForm.extraLarge, dropShadow: false).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2).padding()
                    
                    VStack{
                        Divider()
                        VStack{
                            HStack{
                                Text("Private Universities").font(.headline)
                                Spacer()
                                NavigationLink(destination: UniversityView()) {
                                Text("See all")
                                    .foregroundColor(Color(red: 0.12156862745098039, green: 0.7450980392156863, blue: 0.7490196078431373)).bold()
                                    
                                }
                                
                            }.padding([.top, .leading, .trailing])
                            HStack{
                                ScrollView(.horizontal) {
                                    HStack{
                                    //loop
                                    ForEach(1..<6){num in
                                        NavigationLink(destination: UniversityView()) {
                                            Image("Private-Uni-\(num)").resizable().frame(width: 150, height:150).padding()
                                            .background(.white)
                                            .cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                                            .padding(.leading)
                                            }
                                        }
                                    
                        
                                    }.padding(.vertical)
                                    
                                }
                                
                            }
                        }.padding(.bottom, 29.0)
                        Divider()
                        VStack{
                            HStack{
                                Text("Goverment Universities").font(.headline)
                                Spacer()
                                Text("See all")
                                    .foregroundColor(Color(red: 0.12156862745098039, green: 0.7450980392156863, blue: 0.7490196078431373)).bold()
                            }.padding([.top, .leading, .trailing])
                            HStack{
                                ScrollView(.horizontal) {
                                    HStack{
                                    //loop
                                    ForEach(1..<6){num in
                                        NavigationLink(destination: UniversityView()) {
                                            Image("Gov-Uni-\(num)").resizable().frame(width: 150, height:150).padding()
                                            .background(.white)
                                            .cornerRadius(15).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                                            .padding(.leading)
                                            }
                                        }
                                    
                        
                                    }.padding(.vertical)
                                    
                                }
                                
                            }
                        }.padding(.bottom, 29.0)
                        
                    }
                }.navigationTitle("Home")
                    .navigationBarItems(trailing:
                                            Button(action: { print("Edit button pressed...")})
                                        {
                        Image(systemName:"bookmark.fill")
                        
                    }
                    )
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
