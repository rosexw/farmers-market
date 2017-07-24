class FarmerProfile extends React.Component {

  handleClickAddProduct(e) {
    e.preventDefault();
    window.location.href = '/products/new';
    console.log('The link was clicked');
  }

  handleClickAddMarket(e) {
    e.preventDefault();
    window.location.href = '/markets/new';
    console.log('New Market');
  }

  handleClickViewProduct(e) {
  const url = '/farmers/' + this.props.id + '/products'
  e.preventDefault();
  window.location.href = url;
  console.log('The link was clicked');
  }

  render() {
    return (<div>
      <div className="farmer-profile-image"><img src={this.props.image}/></div>
      <div className="farmer-profile-info">
        <div className="field"><b> Farm Name: </b>{this.props.farm_name} </div>
        <div className="field"><b> First Name: </b>{this.props.first_name} </div>
        <div className="field"><b> Last Name: </b>{this.props.last_name} </div>
        <div className="field"><b> Email: </b>{this.props.email} </div>
        <div className="field"><b> Phone No: </b>{this.props.phone_no} </div>
        <div className="field"><b> Website_Link: </b>{this.props.website_link} </div>
        <div className="field"><b> Description: </b>{this.props.description} </div>
      </div>
      <button onClick={this.handleClickAddProduct}>Add Product</button>
      <button onClick={this.handleClickAddMarket}>Add Market</button>
      <button onClick={this.handleClickViewProduct.bind(this)}>View Products</button>
    </div>);
  }
}
