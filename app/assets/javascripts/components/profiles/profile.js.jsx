var Profile = React.createClass({
  getInitialState: function() {
    return { data: this.props.data };
  },
  render: function(){
    return(
      <div>
        <ul className="list-group">
          <li className="list-group-item"><b>Nombre:</b> {this.state.data.name}</li>
          <li className="list-group-item"><b>Apellidos:</b>  {this.state.data.last_name}</li>
          <li className="list-group-item"><b>Edad:</b>  {this.state.data.age}</li>
          <li className="list-group-item"><b>Telefono:</b> {this.state.data.phone}</li>
        </ul>
      </div>
    );
  }
});
