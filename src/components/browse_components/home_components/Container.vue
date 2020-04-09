<template>
  <div class="container-fluid content">
    <Item
      @showDetail="showDetail"
      :col="'col-md-4 popular'"
      :list="movies.slice(2)"
      :categories="'movie'"
      :name="'Popular'"
    />

    <Item
      :col="'col-md-2'"
      @showDetail="showDetail"
      :list="movies"
      :categories="'movie'"
      :name="'Movies'"
    />

    <Item
      :col="'col-md-2'"
      @showDetail="showDetail"
      :list="tvshows"
      :categories="'tv'"
      :name="'TV Shows'"
    />

    <Item
      :col="'col-md-2'"
      @showDetail="showDetail"
      :list="musics"
      :categories="'music'"
      :name="'Musics'"
    />

    <Detail :detail="getDetail[0]" />
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
        .then(data => {
          this.getDetail = data.list;
          return document.querySelector("video").load();
        });
    }
  }
};
</script>