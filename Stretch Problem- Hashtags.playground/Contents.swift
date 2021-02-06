import UIKit

// Week 5: Monday >> Stretch Problem At DevMountain
// Hashtags
protocol SearchableObject {
    func matchesSearchTerm(searchTerm: String) -> Bool
}

struct Restaurant: SearchableObject {
    let name: String
    let description: String
    let streetAddress: String
    let city: String
    let state: String
    let reviews: [Review]
    
    var hashtage: [String] {
        var hashtagsFound: [String] = []
        for review in reviews {
            hashtagsFound.append(contentsOf: review.hastages)
        }
        let words = description.components(separatedBy: " ")
        let descriptionHashtags = words.filter({$0.hasPrefix("#")})
        hashtagsFound.append(contentsOf: descriptionHashtags)
        return hashtagsFound
    }
    
    func matchesSearchTerm(searchTerm: String) -> Bool {
        var foundMatch = false
        for review in reviews {
            if review.matchesSearchTerm(searchTerm: searchTerm.lowercased()) {
                foundMatch = true
            }
        }
        if description.lowercased().contains(searchTerm.lowercased()) {
            return true
        }
        return foundMatch
    }
}

struct Review: SearchableObject {
    let username: String
    let text: String
    var hastages: [String] {
        let words = text.components(separatedBy: " ")
        return words.filter({$0.hasPrefix("#")})
    }
    func matchesSearchTerm(searchTerm: String) -> Bool {
        if text.lowercased().contains(searchTerm.lowercased()) {
            return true
        } else {
            return false
        }
    }
}

// MARK: - Restaurant Data
let gyuKukuReview1 = Review(username: "Tanya", text: "uring covid, my husband and I have been taking long weekends downtown to just get out of our house. We work from home and leave our house maybe once a week so we look forward to our long weekends away. We have never had Japanese BBQ. So when we saw this place one block away from our hotel, we needed to try it! We chef special that included a bunch of different proteins and it was absolutely delicious! The steak literally melted in my mouth. To top it off, s'mores were included in the special as the dessert! I have not had a s'more in year so it was a great end to the dinner. Highly #recommend. I honestly cannot wait to go back!")
let gyuKukuReview2 = Review(username: "Danny", text: "Best spot in town! We love this place and the meats are great. Also love the extra precaution they are taking in terms of #Covid- they take your temperature and ask if IL residents")
let gyukukuReviews = [gyuKukuReview1,gyuKukuReview2]
let gyuKuku = Restaurant(name: "Gyu ka ku", description: "Japanese BBQ", streetAddress: "2813 N Boardway St.", city: "Chicago", state: "IL", reviews: gyukukuReviews)

let wasabiReview1 = Review(username: "Pual", text: "Every single time I go here I leave happy. I read other people's reviews, first if you are ordering #sushi to be delivered, that's your fault. You are doing something very strange and if it arrives cold I really can't feel bad for you. Unless you have no legs get off your tush and walk in. If you have no legs, well. If it's diabete's related I'm not sure you should be eating fried sushi anyway.")
let wasabiReview2 = Review(username: "Lee", text: " I half a mile from here, and I live a block from Nano Sushi, and yet I take the extra couple blocks walk and pay the extra dollar or two each and every time. You can taste where that dollar goes. The fish is always fresh, every ingredient is always perfect and the presentation is always worth a picture. At this stage I've tried nearly everything on their menu, if it sounds like something you would like, then more than likely you will like it.The BYOB pertains to beer and #wine, and there is a 711 a block down the street if you needed such. No liquor. So you know.")
let wasabiReviews = [wasabiReview1,wasabiReview2]

let wasabi = Restaurant(name: "Wasabi", description: "Sushi and Japanese food.", streetAddress: "3990 N Linclon Ave.", city: "Chicago", state: "IL", reviews: wasabiReviews)

let resturants: [Restaurant] = [gyuKuku, wasabi]

// MARK: - Using SearchTerm
wasabi.matchesSearchTerm(searchTerm: "wine")
gyuKuku.matchesSearchTerm(searchTerm: "recommented")

// MARK: - Instructionswasabi
/*
 Instructions - Hashtags:
 - Build a Restaurant model object with a name, description, streetAddress, city, state, and reviews properties.
 - Build a Review model object with a username and text property.
 - Instantiate an array of Restaurant and Review objects. Make sure that each Restaurant object holds an array of reviews. Add hashtags to some of your reviews or restaurant descriptions. (Use Yelp or Google to help you come up with Restaurants and Reviews).
 - Add a hashtags computed property to the Restaurant object that returns an array of any hashtags in the Restaurant or Review. `- Check your computed property by printing a list of hashtags of each review and restaurant.
 
 Instructions - Searching:
 - Add a SearchableObject protocol with one function matchesSearchTerm(searchTerm: String).
 - Implement the function on both model objects.
 - Demonstrate your search by printing a list of Restaurants that match a variety of search terms.
 */
