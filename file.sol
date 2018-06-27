contract Storage {

   address owner <= define the address you control (have the private key to)

   bytes32[] storageContainer;

   function pushByte(bytes32 b) {
      storageContainer.push(b);
   }

}
