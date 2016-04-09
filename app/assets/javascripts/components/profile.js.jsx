var Profile = React.createClass({
  propTypes: {
    name: React.PropTypes.string,
    lastName: React.PropTypes.string,
    age: React.PropTypes.node,
    phone: React.PropTypes.node,
    url1: React.PropTypes.string,
    url2: React.PropTypes.string,
    url3: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Name: {this.props.name}</div>
        <div>Last Name: {this.props.lastName}</div>
        <div>Age: {this.props.age}</div>
        <div>Phone: {this.props.phone}</div>
        <div>Url 1: {this.props.url1}</div>
        <div>Url 2: {this.props.url2}</div>
        <div>Url 3: {this.props.url3}</div>
      </div>
    );
  }
});
