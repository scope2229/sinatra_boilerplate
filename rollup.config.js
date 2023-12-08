// rollup.config.js
import babel from '@rollup/plugin-babel'
import { nodeResolve } from '@rollup/plugin-node-resolve'
import { terser } from "rollup-plugin-terser"

export default {
  context: 'window',
  input: 'app/javascript/application.js',
  output: {
    file: 'public/js/application.js',
    format: 'cjs'
  },
  plugins: [
    babel({
      babelHelpers: 'bundled',
      exclude: 'node_modules/**'
    }),
    nodeResolve(),
    terser()
  ]
}
