import Nat "mo:base/Nat";

// dfx start --background --clean
// dfx stop
// dfx deploy; dfx canister call challenges test

module {  
  public type book = {
    title: Text;
    pages: Nat;
  };

  public func create_book_entry(bookname: Text,  pagenum: Nat ) : async book {
    return {
      title= bookname; 
      pages= pagenum
      }; 
  };




};  