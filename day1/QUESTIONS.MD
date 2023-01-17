Q1: 	48 GB, but heap size still lower
	https://forum.dfinity.org/t/increased-canister-smart-contract-memory/6148/140

Q2: What is wrong with 
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

A2: We try to change the value of counter, despite being a constant/immutable variable

Q3: what is wrong with 

actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

A3: We try to assign a Nat number to a Text type var and we can't.

Q4: False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.
A4: False. As the response is always delayed and we have to wait to receive it.