<template>
  <div class="container">
    <section class="popular justify-content-center row m-5">
      <h2 class="col-12 text-left">Popular</h2>
      <div class="movies col-md-4 col-12 p-0" :key="movie.id" v-for="movie in movies.slice(0,3)">
        <img class="img-fluid p-2" :src="'images/'+movie.cover" />
      </div>
    </section>

    <section class="movies-section justify-content-center row m-5">
      <h2 class="col-12 text-left">Movies</h2>
      <div class="movies col-md-2 col-12 p-0" :key="movie.id" v-for="movie in movies.slice(0,5)">
        <img class="img-fluid p-2" :src="'images/'+movie.cover" />
      </div>
    </section>

    <section class="movies-section justify-content-center row m-5">
      <h2 class="col-12 text-left">TV Shows</h2>
      <div class="movies col-md-2 col-12 p-0" :key="tvshow.id" v-for="tvshow in tvshows.slice(0,5)">
        <img class="img-fluid p-2" :src="'images/'+tvshow.cover" />
      </div>
    </section>

    <section class="movies-section justify-content-center row m-5">
      <h2 class="col-12 text-left">Musics</h2>
      <div class="movies col-md-2 col-12 p-0" :key="music.id" v-for="music in musics.slice(0,5)">
        <img class="img-fluid p-2" :src="'images/'+music.cover" />
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: "Container",
  props: ["movies", "musics", "tvshows"]
};
</script>