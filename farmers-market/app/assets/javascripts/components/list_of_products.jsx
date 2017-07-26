class Products extends React.Component {

  render() {
  const listProducts = this.props.products.map((product, i) =>
    <div>
      {product.product_name}
    </div>
  );
   return (
     <div><b>Products:</b> {listProducts}</div>
   );
  }
}
