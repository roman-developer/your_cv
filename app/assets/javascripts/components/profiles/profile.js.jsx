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
        <ul>
        <li><b>Nombre:</b> {this.props.name}</li>
        <li><b>Apellidos:</b>  {this.props.lastName}</li>
        <li><b>Edad:</b>  {this.props.age}</li>
        <li><b>Telefono:</b> {this.props.phone}</li>
        <li><b>Url1:</b> {this.props.url1}</li>
        <li><b>Url2:</b> {this.props.url2}</li>
        <li><b>Url3:</b> {this.props.url3}</li>
        </ul>
      </div>
    );
  }
});
