class FarmerProfile extends React.Component {

  render() {
    return (<div>
      <div className="field"> Farm Name: {this.props.farm_name} </div>
      <div className="field"> First Name: {this.props.first_name} </div>
      <div className="field"> Last Name: {this.props.last_name} </div>
      <div className="field"> Email: {this.props.email} </div>
      <div className="field"> Phone No: {this.props.phone_no} </div>
      <div className="field"> Website_Link: {this.props.website_link} </div>
      <div className="field"> Description: {this.props.description} </div>
      <div><img src={this.props.image}/></div>
      <button>Add Product</button>
    </div>);
  }
}
