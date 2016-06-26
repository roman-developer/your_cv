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
          <li className="list-group-item"><b>Url 1:</b> <a href={this.state.data.url_1}>{this.state.data.url_1}</a></li>
          <li className="list-group-item"><b>Url 2:</b> <a href={this.state.data.url_2}>{this.state.data.url_2}</a></li>
          <li className="list-group-item"><b>Url 3:</b> <a href={this.state.data.url_3}>{this.state.data.url_3}</a></li>
        </ul>
      </div>
    );
  }
});
