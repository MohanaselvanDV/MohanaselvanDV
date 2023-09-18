
import React from "react";
import {productList} from "./Data";
import "./Product.css";
const Products = () => {
  
    return (
      <div className="container">{productList.map(product => (
      <div className="card product" key={product.id}>
        <div className="imgBox">
          <img src={product.image} alt={product.title}  className="mouse"/>
        </div>
        <div className="contentBox">
          <h3>{product.title}</h3>
          <p className="price">{product.rent}</p>
          <button className="buy">Buy</button>
        </div>
      </div>
      ))}
      
      </div>
);
};

export default Products;
