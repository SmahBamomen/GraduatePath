import SwiftUI

struct RatingView: View {
    @Binding var rating: Int?
    private func starType(index : Int) -> String {
        if let rating = self.rating {
            return index <= rating ? "star.fill" :"star"
        }
        else {
            return "star"
        }
    }

       var body: some View {
           HStack{
               ForEach(1...5, id:\.self){index in
                   Spacer()  .frame(width: 10)
                   Image(systemName: self.starType(index: index))
                       .foregroundColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765)).onTapGesture {
                           self.rating = index
                       }
                   Spacer()  .frame(width: 10)
               }
           }.frame(width: 240, height: 38).background(
            RoundedRectangle(cornerRadius: 9, style: .continuous).fill(Color(red: 0.9137254901960784, green: 0.9215686274509803, blue: 0.9411764705882353))
        )
       
          
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating:.constant(3))
            
        
        

    }
}


