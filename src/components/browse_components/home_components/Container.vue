<template>
  <div class="container-fluid content">
    <section class="popular justify-content-center row m-5">
      <h2 class="col-12 text-left">Popular</h2>
      <div
        data-toggle="modal"
        data-target="#exampleModalCenter"
        @click="showDetail(movie.id,'movie')"
        class="movies col-md-4 col-12 p-0"
        :key="movie.id"
        v-for="movie in movies.slice(2) "
      >
        <img class="img-fluid p-2" :src="'images/'+movie.cover" />
        <h3 class="h5">{{movie.title}}</h3>
      </div>
    </section>
    <Detail :detail="getDetail[0]" />

    <Item @showDetail="showDetail" :list="movies" :categories="'movie'" :name="'Movies'" />

    <Item @showDetail="showDetail" :list="tvshows" :categories="'tv'" :name="'TV Shows'" />

    <Item @showDetail="showDetail" :list="musics" :categories="'music'" :name="'Musics'" />
  </div>
</template>

<script>
import Item from "./Item";
import Detail from "./Detail";
export default {
  name: "Container",
  components: { Item, Detail },
  props: ["movies", "musics", "tvshows"],
  data() {
    return {
      getDetail: {}
    };
  },

  methods: {
    showDetail(id, categories) {
      fetch(
        `server/?categories=${categories}&id=${id}&type=${this.$attrs.user}`
      )
        .then(res => res.json())
        .then(data => (this.getDetail = data.list));
    }
  }
};
</script>