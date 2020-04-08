<template>
  <div :class="{'kids': user == 'kids'}" class="container-fluid wrapper row p-0 m-0">
    <Sidebar
      class="col-md-2"
      :user="user"
      :isWatching="this.$props.isWatching"
      :info="userInfo"
      @isNotWatching="$emit('isNotWatching',false)"
    />
    <div class="main col-md-10 p-0">
      <Header :user="user" :authority="this.$props.userInfo.authority" @switchType="switchType" />
      <Nav />
      <Container :user="user" :musics="musics" :tvshows="tvshows" :movies="movies" />
    </div>
  </div>
</template>

<script>
import Header from "./home_components/Header";
import Container from "./home_components/Container";
import Sidebar from "./home_components/Sidebar";
import Nav from "./home_components/Nav";

export default {
  components: { Container, Header, Sidebar, Nav },
  props: ["userInfo"],
  data() {
    return {
      movies: {},
      musics: {},
      tvshows: {},
      user: null
    };
  },
  mounted() {
    this.parseData();
  },
  methods: {
    switchType(user) {
      console.log("switched");
      // this.$props.userInfo.authority = user;
      this.user = user;
      this.fetchData();
    },
    fetchData() {
      if (this.user == "parents") {
        fetch("server/?categories=movie&type=parents")
          .then(res => res.json())
          .then(data => (this.movies = data.list))
          .catch(err => console.log(err));

        fetch("server/?categories=music&type=parents")
          .then(res => res.json())
          .then(data => (this.musics = data.list))
          .catch(err => console.log(err));

        fetch("server/?categories=tv&type=parents")
          .then(res => res.json())
          .then(data => (this.tvshows = data.list))
          .catch(err => console.log(err));
      } else if (this.user == "kids") {
        fetch("server/?categories=movie&type=kids")
          .then(res => res.json())
          .then(data => (this.movies = data.list))
          .catch(err => console.log(err));

        fetch("server/?categories=music&type=kids")
          .then(res => res.json())
          .then(data => (this.musics = data.list))
          .catch(err => console.log(err));

        fetch("server/?categories=tv&type=kids")
          .then(res => res.json())
          .then(data => (this.tvshows = data.list))
          .catch(err => console.log(err));
      }
    },

    parseData() {
      let authority = this.$props.userInfo.authority;
      this.user = authority;
      this.fetchData();
    }
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
  margin-top: 0;
}
li {
  list-style-type: none;
}
</style>
