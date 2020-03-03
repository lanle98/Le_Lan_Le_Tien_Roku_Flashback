<template>
  <div class="video-poster-wrapper">
    <div class="col-12 p-3">
      <h2 class="display-3">1950s movies</h2>
      <ul class="row justify-content-center">
        <li class="col-5" v-for="movie in get1950s" v-bind:key="movie[1].movie_id">
          <img class="img-fluid" :src="'images/'+movie[1].movie_cover" alt="thubmnail" />
          <h3 class="p-2">{{movie[1].movie_title}}</h3>
        </li>
      </ul>
    </div>

    <div class="col-12 p-3">
      <h2 class="display-3">1960s movies</h2>
      <ul class="row justify-content-center">
        <li class="col-5" v-for="movie in get1960s" v-bind:key="movie[1].movie_id">
          <img class="img-fluid" :src="'images/'+movie[1].movie_cover" alt="thubmnail" />
          <h3 class="p-2">{{movie[1].movie_title}}</h3>
        </li>
      </ul>
    </div>

    <div class="col-12 p-3">
      <h2 class="display-3">1970s movies</h2>
      <ul class="row justify-content-center">
        <li class="col-5" v-for="movie in get1970s" v-bind:key="movie[1].movie_id">
          <img class="img-fluid" :src="'images/'+movie[1].movie_cover" alt="thubmnail" />
          <h3 class="p-2">{{movie[1].movie_title}}</h3>
        </li>
      </ul>
    </div>

    <div class="col-12 p-3">
      <h2 class="display-3">1980s movies</h2>
      <ul class="row justify-content-center">
        <li class="col-5" v-for="movie in get1980s" v-bind:key="movie[1].movie_id">
          <img class="img-fluid" :src="'images/'+movie[1].movie_cover" alt="thubmnail" />
          <h3 class="p-2">{{movie[1].movie_title}}</h3>
        </li>
      </ul>
    </div>

    <div class="col-12 p-3">
      <h2 class="display-3">1990s movies</h2>
      <ul class="row justify-content-center">
        <li class="col-5" v-for="movie in get1990s" v-bind:key="movie[1].movie_id">
          <img class="img-fluid" :src="'images/'+movie[1].movie_cover" alt="thubmnail" />
          <h3 class="p-2">{{movie[1].movie_title}}</h3>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: "Movies",
  props: ["movies"],
  computed: {
    get1950s() {
      return Object.entries(this.movies).filter(movie => {
        return movie[1].movie_year >= 1950 && movie[1].movie_year < 1960;
      });
    },
    get1960s() {
      return Object.entries(this.movies).filter(movie => {
        return movie[1].movie_year >= 1960 && movie[1].movie_year < 1970;
      });
    },
    get1970s() {
      return Object.entries(this.movies).filter(movie => {
        return movie[1].movie_year >= 1970 && movie[1].movie_year < 1980;
      });
    },
    get1980s() {
      return Object.entries(this.movies).filter(movie => {
        return movie[1].movie_year >= 1980 && movie[1].movie_year < 1990;
      });
    },
    get1990s() {
      return Object.entries(this.movies).filter(movie => {
        return movie[1].movie_year >= 1990 && movie[1].movie_year < 2000;
      });
    }
  }
};
</script>

<style scoped>
img {
  object-fit: cover;
  height: 500px;
}
</style>