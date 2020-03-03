<template>
  <div class="container-fluid content">
    <section class="popular justify-content-center row m-5">
      <h2 class="col-12 text-left">Popular</h2>
      <div class="movies col-md-4 col-12 p-0" :key="movie.id" v-for="movie in movies.slice(0,3)">
        <img class="img-fluid p-2" :src="'images/'+movie.cover" />
        <h3 class="h5">{{movie.title}}</h3>
      </div>
    </section>

    <Item :list="movies.slice(0,5)" :name="'Movies'" />

    <Item :list="tvshows.slice(0,5)" :name="'TV Shows'" />

    <Item :list="musics.slice(0,5)" :name="'Musics'" />
  </div>
</template>

<script>
import Item from "./Item";
export default {
  name: "Container",
  components: { Item },
  props: ["movies", "musics", "tvshows"]
};
</script>