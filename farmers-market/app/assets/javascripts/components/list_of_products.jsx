class Products extends React.Component {

  render() {
  const listProducts = this.props.products.map((product, i) =>
    <div>
      <tbody>
        <tr>
          <td><b>{product.product_name}</b></td>
          <td>{product.product_type}</td>
          <td>{product.organic.toString()}</td>
          <td>{product.non_gmo.toString()}</td>
          <td>{product.on_hand.toString()}</td>
        </tr>
      </tbody>
    </div>
  );
   return (
     <div>
       <table>
         <thead>
           <tr>
             <th>Products</th>
             <th>Type</th>
             <th>Organic</th>
             <th>Non-GMO</th>
             <th>On-Hand</th>
           </tr>
         </thead>
          {listProducts}
      </table>
    </div>
   );
  }
}
