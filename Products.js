
import React,{useState} from "react";
import {productList} from "./Data";
import "./Product.css";
const Products = () => {

    const [toggleState, setToggleState] = useState(0);
  
    const toggleTab = (id)=>{
      setToggleState(id);
    }
    return (
      <div className="container">{productList.map(product => (
      <div className="card product" key={product.id}>
        <div className="imgBox">
          <img src={product.image} alt={product.title}  className="mouse"/>
        </div>
        <div className="contentBox">
          <h3>{product.title}</h3>
          <p className="price">{product.rent}</p>
          <button className="services__button" onClick={()=>toggleTab(product.id)}>Buy</button>
          <div className={toggleState === product.id ? "services__modal active-modal container" : "services__modal"}>
            <div className="services__modal-content card product" key={product.id}>
              <i onClick={()=>toggleTab(0)} className=" services__modal-close">
              <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAaFJREFUSEvl1j9IV1EYxvGPIUGD0BBNUSg41FCNDVE0BU2GhNBgSyJBDo4uaUF7QyQITf0hwkFycoogHBqCGloUtaYQHEWhwXjlXLgdflpwz0Whs91zuc/3vOd93ve+XQ5odR0Q16ECn0Fv4ZtYxfe6Zj3iI3iNocLQSu4F7mAnNurg23jVErSSvYm5HPwAD1sGT+JRDp5CvGhzRWDB+eOq6+APhelXk95fwaXLbNdQKZX7RnzowD2pxr9mqbiAZWzukaJGEXdjARdxCUsJchYf8Rk38KsDvBF4BDNJ9CcuI5rOIk6k/bt4XhoceZ/GaBJeQ9zCqfT8DPerzpTBG0VcaQXgXib8BOP7lGARcD++4FgCbeF8Mtde7Mbgc3iPkxlhPeW8Mlx+gEbgiCo62vGk+jiZayI9b+AKvpU2V5RQgI/iKcYSIJwejt9GtMZPpcGhN4DrmbnC7QF/h/k2GkiT/0ajHLcGrg8C15pQOnwblRCr4yAQs9abwsBc7hZmYzMf9t5isCX4Swx3GvYqXh9OF4av4Edds/QP/5/P+/+BfwMy2GYfYLcq0gAAAABJRU5ErkJggg=="/>
              </i>
              {/* <div className="imgBox">
          <img src={product.image} alt={product.title} />
        </div> */}
        <div className="contentBox">
              <h3 className="services__modal-title" >{product.title}</h3>

              <p className="services__modal-description price">
             {product.rent}
              </p>

              <p className="services__modal-description">
             {product.description}
              </p>
              </div>
            </div>
          </div>
        </div>
        </div>
      ))}
      
      </div>
);
};

export default Products;
