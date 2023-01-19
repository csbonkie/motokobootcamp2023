import Array "mo:base/Array";
import Int "mo:base/Int";



// dfx start --background --clean
// dfx stop
// dfx deploy; dfx canister call challenges test
module {
  public let value = 0;
  // i might try another non looping example
  public func second_maximum(array : [Int]) :  async Int {
    var sorted = Array.sort(array, Int.compare);
    var len = sorted.size();
    var i = 0;
    
    if(len < 2)
        return sorted[0];

    while(sorted[i] == sorted[i+1]) {
        if(i + 2 == len)
            return sorted[i+1];
        i+=1;
    };

    return sorted[i+1];
} ;

public func drop<T>(xs : [T], n : Nat) : [T] {
  let size = xs.size();
    if(size < n)
      return [];
    let newsize = size - n;
    let array : [T] = Array.tabulate<T>(newsize, func i = xs[i+n]);
    return array;
};

public func remove_even(array : [Nat]) :  async [Nat] { 
  return Array.filter<Nat>(array, func x = x % 2 != 0);
};

};  