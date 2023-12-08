// rollup.config.js
import babel from '@rollup/plugin-babel'
import { nodeResolve } from '@rollup/plugin-node-resolve'
import { terser } from "rollup-plugin-terser"

export default {
  context: 'window',
  input: 'src/app.js',
  output: {
    file: 'public/js/app.js',
    format: 'cjs'
  },
  plugins: [
    babel({ babelHelpers: 'bundled' }),
    nodeResolve(),
    terser()
  ]
}