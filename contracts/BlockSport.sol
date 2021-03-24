pragma solidity 0.6.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BlockSport is ERC1155, Ownable {
    mapping (uint256 => string) private _metaURI;

    constructor( string memory uri_)   
    ERC1155(uri_) 
    public
    {}

    function setSeriesMetaURI(uint256 id, string memory _uri) public onlyOwner{
        require(bytes(_metaURI[id]).length == 0, "MetaURI can't be change once set");
        _metaURI[id] = _uri;
    }

    function getSeriesMetaURI(uint256 id) public view returns (string memory) {
        return _metaURI[id];
    }

    function mint(address to, uint256 id, uint256 amount) public  onlyOwner{
        _mint(to, id, amount, "");
    }
}