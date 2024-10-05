import SwiftUI

public struct JapaneseBusinessCardView: View {
    public var name: String
    public var jobTitle: String
    public var companyName: String
    public var phoneNumber: String
    public var email: String
    public var address: String

    // Public initializer for the view
    public init(name: String, jobTitle: String, companyName: String, phoneNumber: String, email: String, address: String) {
        self.name = name
        self.jobTitle = jobTitle
        self.companyName = companyName
        self.phoneNumber = phoneNumber
        self.email = email
        self.address = address
    }

    public var body: some View {
        VStack(spacing: 5) {
            // Company Name - Top
            Text(companyName)
                .font(.system(size: 20, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 5)

            // Name and Job Title - Middle
            VStack(alignment: .leading, spacing: 2) {
                Text(name)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)

                Text(jobTitle)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()

            // Contact Information - Bottom
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.gray)
                    Text(phoneNumber)
                }

                HStack {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(.gray)
                    Text(email)
                }

                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(.gray)
                    Text(address)
                }
            }
            .font(.system(size: 12))
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black, lineWidth: 1)
                .background(Color.white)
                .cornerRadius(15)
        )
        .frame(width: 320, height: 200) // 5:8 ratio card
        .shadow(radius: 5)
    }
}
