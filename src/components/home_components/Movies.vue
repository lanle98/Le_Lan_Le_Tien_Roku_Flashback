<template>
  <ul class="video-poster-wrapper row p-0">
    <li class="col-12 col-md-4" v-for="movie in movies" v-bind:key="movie.id">
      <img class="img-fluid" :src="'images/'+movie.movies_cover" alt="thubmnail" />
      {{movie.title}}
    </li>
  </ul>
</template>

<script>
export default {
  name: "Movies",
  props: ["movies"]
};
</script>