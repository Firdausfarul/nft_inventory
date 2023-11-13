
List<NFT> globalNFTList = []; // Define the global list

class NFT {
  final String name;
  final String description;
  final String imgUrl;
  final int price;
  final int amount;

  NFT(this.name, this.description, this.imgUrl, this.price, this.amount);
}