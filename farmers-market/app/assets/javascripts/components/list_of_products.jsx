class Products extends React.Component {

  render() {
  const listProducts = this.props.products.map((product, i) =>
    <div>
          <a href={'/farmers/' + this.props.id + '/products'} key={i}>{product.product_name}</a>
    </div>
  );
   return (
     <div><b>Products:</b> {listProducts}</div>
   );
  }
}
