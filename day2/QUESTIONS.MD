Q1: Who controls the ledger?
The ledger of the NNS is ryjl3-tyaaa-aaaaa-aaaba-cai, and it is controlled by canister r7inp-6aaaa-aaaaa-aaabq-cai

Q2: Canister mwrha-maaaa-aaaab-qabqq-cai is on subnet pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe, and in total 16 nodes are in that subnet.

Q3: Voting power of 10 ICP is roughly 16.875 (delay ~1,5 plus age 1.25). https://support.dfinity.org/hc/en-us/articles/4404284534420-What-is-voting-power-

Q4: the import sections is missing. We need to import import Nat "mo:base/Nat";

Q5: The immutabl array expression cannot produce expected type, so we need to omit the var and make it:  

actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [Text] {
    return (languages);
  };
 
}

Q6: We need to import "mo:base/Array", but as arrays are by default immutable. The executiondoes work though! Must be compute intensive. It is a depreciated method. 


