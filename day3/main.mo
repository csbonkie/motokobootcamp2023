import Debug "mo:base/Debug";
import util "utils";



// dfx start --background --clean
// dfx stop
// dfx deploy; dfx canister call main test

actor  {



  public func test() : async () {
    let q1 = await util.second_maximum([12,12,13]);
    assert(q1==13);
    Debug.print("q1 passed");
    Debug.print(debug_show(q1));

    let q2 = await util.remove_even([14,12,13]);
    Debug.print(debug_show(q2));
    assert(q2==[13]);
    Debug.print("q2 passed");
    

    
  }

};


