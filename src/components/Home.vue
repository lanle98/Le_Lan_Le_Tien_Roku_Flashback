<template>
  <div class="container">
    <Header />
    <Nav />
    <Container :musics="musics" :tvshows="tvshows" :movies="movies" />
  </div>
</template>

<script>
import Header from "./home_components/Header";
import Container from "./home_components/Container";

export default {
  name: "app",
  components: { Container, Header },
  data() {
    return {
      movies: {},
      musics: {},
      tvshows: {}
    };
  },

  created() {
    fetch("server/?categories=movie")
      .then(res => res.json())
      .then(data => (this.movies = data.list))
      .catch(err => console.log(err));

    fetch("server/?categories=music")
      .then(res => res.json())
      .then(data => (this.musics = data.list))
      .catch(err => console.log(err));

    fetch("server/?categories=tv")
      .then(res => res.json())
      .then(data => (this.tvshows = data.list))
      .catch(err => console.log(err));
  }
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
