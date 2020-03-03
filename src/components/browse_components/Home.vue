<template>
  <div :class="{'kids': user == 'kids'}" class="container-fluid wrapper row p-0 m-0">
    <Sidebar class="col-md-2" :user="user" :info="userInfo" />
    <div class="main col-md-10 p-0">
      <Header :user="user" @switchType="switchType" />
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
      this.$props.userInfo.authority = user;
      this.user = user;
      this.parseData();
    },
    parseData() {
      let user = this.$props.userInfo.authority;
      if (user == "parents") {
        this.user = "parents";
        fetch(
          "http://localhost:8888/Le_Lan_Le_Tien_Roku_Flashback/server/?categories=movie&type=parents"
        )
          .then(res => res.json())
          .then(data => (this.movies = data.list))
          .catch(err => console.log(err));

        fetch(
          "http://localhost:8888/Le_Lan_Le_Tien_Roku_Flashback/server/?categories=music&type=parents"
        )
          .then(res => res.json())
          .then(data => (this.musics = data.list))
          .catch(err => console.log(err));

        fetch(
          "http://localhost:8888/Le_Lan_Le_Tien_Roku_Flashback/server/?categories=tv&type=parents"
        )
          .then(res => res.json())
          .then(data => (this.tvshows = data.list))
          .catch(err => console.log(err));
      } else if (user == "kids") {
        this.user = "kids";
        fetch(
          "http://localhost:8888/Le_Lan_Le_Tien_Roku_Flashback/server/?categories=movie&type=kids"
        )
          .then(res => res.json())
          .then(data => (this.movies = data.list))
          .catch(err => console.log(err));

        fetch(
          "http://localhost:8888/Le_Lan_Le_Tien_Roku_Flashback/server/?categories=music&type=kids"
        )
          .then(res => res.json())
          .then(data => (this.musics = data.list))
          .catch(err => console.log(err));

        fetch(
          "http://localhost:8888/Le_Lan_Le_Tien_Roku_Flashback/server/?categories=tv&type=kids"
        )
          .then(res => res.json())
          .then(data => (this.tvshows = data.list))
          .catch(err => console.log(err));
      }
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
