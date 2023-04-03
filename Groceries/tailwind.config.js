const plugin = require('tailwindcss/plugin')

module.exports = {
    theme: {
        fontFamily: {
            sans: ['"Lato"', 'san-serif'],
        },
    },
    plugins: [
        plugin(function ({ addUtilities, addComponents, e, config }) {
            require('@tailwindcss/aspect-ratio')
        }),
    ]
}