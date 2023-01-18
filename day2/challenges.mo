import Float "mo:base/Float";
import Nat "mo:base/Nat";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";




// dfx start --background --clean
// dfx stop
// dfx deploy; dfx canister call challenges test

actor daytwo {
  //q1
  public query func averagearray(array : [Int]) : async  (Float) {
  var sum: Float = 0;

  for (element in array.vals()) {
    sum += Float.fromInt(element);
  };

  if (Float.fromInt(array.size())!= 0)
    return sum/Float.fromInt(array.size());
    return 0;
  };

  //q2
  public func count_character(string : Text, target : Char) : async Nat {
    let array = Iter.toArray(Text.toIter(string));
    return (Array.filter<Char>(array,func x = x == target)).size();
  };

  //q3
  public func factorial(n : Nat) :  async Nat {
    let array : [Nat] = Array.tabulate<Nat>(n, func i = i + 1);
    let result =  Array.foldLeft<Nat, Nat>(array, 1, func(incrementRes, x) = incrementRes * x );    
    return result;
  };

  //q5
  public func find_duplicates(n : [Nat]) : async [Nat] {
    let result = Buffer.Buffer<Nat>(0);
    for (element in n.vals()) {
        let sum = Array.foldLeft<Nat, Nat>( n, 0, func(counter, x) {if(x == element) counter + 1 else  counter });
            if(sum > 1) {
              if(not(Buffer.contains(result,element,Nat.equal)))
              result.add(element);
              }
    };
    return Buffer.toArray(result);
  };

  //q4
  public func number_of_words(t : Text) : async Nat {
        let tokens = Text.tokens(t, #predicate(func (c : Char) : Bool {c == ' '}));
        Iter.toArray(tokens).size();
  };

  // q6 (make two test cases for checking 0)
  public query func convert_to_binary(n : Nat) : async  (Text) {
    var binarystring = "";
    var m = n;

    while (m > 0) {
    binarystring := Nat.toText(m % 2) # binarystring;
    m:=m / 2;
    };
    
    if (binarystring == "") binarystring :="0";
    
    return binarystring;
  };
  

};


