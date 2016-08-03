import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

$(function() {

  var GameBox = React.createClass({
    loadWordsFromServer: function() {
      $.ajax({
        url: this.props.url,
        dataType: 'json',
        cache: false,
        success: function(data) {
          this.setState({data: data});
        }.bind(this),
        error: function(xhr, status, err) {
          console.error(this.props.url, status, err.toString());
        }.bind(this)
      });
    },
    getInitialState: function() {
      return {data: []};
    },
    componentDidMount: function() {
      this.loadWordsFromServer();
    },
    render() {
      return (
        <div className="GameBox">
        {this.state.data.words ?
           <ListBox data={this.state.data} /> :
           null
        }
        </div>
      );
    }
  });

  var ListBox = React.createClass({
    render() {
      var wordNodes = this.props.data.words.map(function(word) {
        return (
          <Word text={word.text} transcription={word.transcription} phonemes={word.phonemes}>
          </Word>
        );
      });
      return (
        <div className="ListBox">
        {wordNodes}
        </div>
      );
    }
  });

  var Word = React.createClass({
    render() {
      return (
        <div className="Word">
          <div>
            {this.props.transcription}
          </div>
          <div class="">
            {this.props.text}
          </div>
        </div>
      )
    }
  });


  ReactDOM.render(
    <GameBox url="/api/lists/1">Boo yddaa</GameBox>,
    document.getElementById('app')
  );
});
