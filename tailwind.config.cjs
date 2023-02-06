/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        './index.html',
        './src/**/*.{jsx,tsx,ts,js}',
    ],
    theme: {
        fontFamily: {
            serif: ['Merriweather', 'serif']
        },
       extend: {
           colors: {
               'base': '#0F2027'
           }
       }

    },
    plugins: [],
}
