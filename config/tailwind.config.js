module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
  ],
  theme: {
    extend: {
      colors: {
        primary: '#3878c2',
        secondary: '#60b524',
        text: '#434b55',
        subtext: '#989da3',
      },
      maxWidth: {
        wrapper: '1000px',
      },
    },
  },
  plugins: [],
};
