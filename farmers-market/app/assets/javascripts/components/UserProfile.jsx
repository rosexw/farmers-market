class UserProfile extends React.Component {

  render() {
    return (<div>
      <div className="field"> First Name: {this.props.first_name} </div>
      <div className="field"> Last Name: {this.props.last_name} </div>
      <div className="field"> Email: {this.props.email} </div>
    </div>);
  }
}
