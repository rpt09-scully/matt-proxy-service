import React, { Component } from 'react'
import ReactDOM from 'react-dom'


class App extends Component {
    render() {
        return (
        <div>
            Hello World
        </div>
        )
    }
}

const root = document.querySelector('#app')
ReactDOM.render(<App />, document.getElementById('app'))
