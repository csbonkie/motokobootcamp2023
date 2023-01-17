actor dayone {
// info; lots of refernces link to motoko are broken on the dfinity forum

  public func multiply((n : Nat, m : Nat)) : async Nat {
    return n*m;
  };


  public func hours_to_minutes(h : Nat) : async Nat {
    return h*60;
  };

  var counter: Nat =0;

  public func set_counter(n : Nat): async () {
    return counter :=n;
  };

  public query func get_counter() : async Nat {
    return counter;
  };

  public query func volume(n : Nat) : async Nat {
    return n*n*n;
  };

  public query func test_divide(n : Nat, m : Nat) : async Bool {
    return n % m ==0;
  };

  public query func is_even(n : Nat) : async Bool {
    return n % 2 == 0;
  };

};