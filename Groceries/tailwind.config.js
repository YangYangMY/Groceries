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

document.querySelector('.js-password-toggle')

passwordToggle.addEventListener('change', function () {
    const password = document.querySelector('.js-password'),
        passwordLabel = document.querySelector('.js-password-label')

    if (password.type === 'password') {
        password.type = 'text'
        passwordLabel.innerHTML = 'hide'
    } else {
        password.type = 'password'
        passwordLabel.innerHTML = 'show'
    }

    password.focus()
})