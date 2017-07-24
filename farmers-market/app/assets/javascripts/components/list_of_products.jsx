class Products extends React.Component {

  render() {
  const listProducts = this.props.products.map((product, i) =>
  <div>
    <a href={'/products/' + product.id} key={i}>{product.name}</a>
  </div>
  );
   return (
     <div>{listProducts}</div>
   );
  }

}
