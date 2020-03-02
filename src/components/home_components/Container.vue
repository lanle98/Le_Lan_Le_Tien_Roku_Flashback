<template>
  <div class="container">
    <section class="popular">
      <h2>Popular</h2>
    </section>

    <section class="movies-section row m-5">
      <h2 class="col-12 text-left">Movies</h2>
      <div class="movies col-4" :key="movie.id" v-for="movie in movies">
        <img class="img-fluid p-2" :src="'images/'+movie.cover" />
      </div>
    </section>

    <section class="movies-section row m-5">
      <h2 class="col-12 text-left">TV Shows</h2>
      <div class="movies col-4" :key="tvshow.id" v-for="tvshow in tvshows">
        <img class="img-fluid p-2" :src="'images/'+tvshow.cover" />
      </div>
    </section>

    <section class="movies-section row m-5">
      <h2 class="col-12 text-left">Musics</h2>
      <div class="movies col-4" :key="music.id" v-for="music in musics">
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