class Markets extends React.Component {
  render() {
  const listMarkets = this.props.markets.map((market, i) =>
    <li key={i}>{market.name}</li>
  );
   return (
     <div>{listMarkets}</div>
   );
  }

}
