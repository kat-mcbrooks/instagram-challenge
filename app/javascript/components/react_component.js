import React from "react"
import ReactDom from "react-dom"
// nb react without jsx because jsx requires compiling

const e = React.createElement

class Hello extends React.Component {
  render() {
    return e('div', null, `Hello ${this.props.toWhat}`);
  }
}

ReactDom.render(
  e(Hello, { toWhat: 'World-with-react' }, null),
  document.getElementById('react')
)