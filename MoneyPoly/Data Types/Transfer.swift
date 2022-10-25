//  Created by Pavel Trusov on 24.10.2022.

/// Structure to store money transfer data
struct Transfer {
    ///Tag of money sender player button view
    var senderTag: Int?
    ///Tag of money reciever player button view
    var recieverTag: Int?
    ///Sender player index in users[]
    var senderIndex: Int?
    ///Reciever  player index in users[]
    var recieverIndex: Int?
}
