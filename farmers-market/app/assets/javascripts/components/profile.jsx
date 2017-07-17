class Profile extends React.Component {
  render() {
    return <div>
      <div>{this.props.first_name} </div>
      <div>{this.props.last_name} </div>
      <div>{this.props.email} </div>
      <div>{this.props.password} </div>
    </div>
  }
}
