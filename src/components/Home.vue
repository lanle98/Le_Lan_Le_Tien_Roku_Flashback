<template>
  <div class="container">
    <Header />
    <Movies :movies="movies" />
  </div>
</template>

<script>
import Header from "./home_components/Header";
import Movies from "./home_components/Movies";

export default {
  name: "app",
  components: { Movies, Header },
  data() {
    return {
      page: null,
      movies: {}
    };
  },

  mounted() {
    fetch("/server")
      .then(res => res.json())
      .then(data => (this.movies = data.movies));
  },
  methods: {}
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
li {
  list-style-type: none;
}
</style>
