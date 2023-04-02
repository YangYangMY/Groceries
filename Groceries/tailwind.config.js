const plugin = require('tailwindcss/plugin')

module.exports = {
    theme: {
        fontFamily: {
            sans: ['"Lato"', 'san-serif'],
        },
    },
    plugins: [
        plugin(function ({ addUtilities, addComponents, e, config }) {
            // Add your custom styles here
        }),
    ]
}