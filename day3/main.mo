import Debug "mo:base/Debug";
import util "utils";
import List "mo:base/List";
import book "book";




// dfx start --background --clean
// dfx stop
// dfx deploy; dfx canister call main test

actor  {
  public type book = book.book;

  var books = List.nil<book>();

  public func add_bock(newbook:book): async (){
    books := List.push<book>(newbook,books);
  };


  public func get_books(): async [book] {
    return List.toArray<book>(books);
  };



  public func test() : async () {
    let q1 = await util.second_maximum([12,12,13]);
    assert(q1==13);
    Debug.print("q1 passed");
    Debug.print(debug_show(q1));

    var dropin = ["Challenges","are","sometimes","making", "crazy"];
    var dropout = util.drop<Text>(dropin, 2);
    Debug.print(debug_show(dropin));
    Debug.print(debug_show(dropout));

    
    let testbook = await book.create_book_entry("Motoko for Dummies",2023);
    Debug.print(debug_show(testbook));
    await add_bock(testbook);
    let returnedbooks = await get_books();
    //assert(q1==13);
    Debug.print("q7 passed");
    Debug.print(debug_show(returnedbooks));
  }

};


