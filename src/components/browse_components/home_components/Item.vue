<template>
  <section class="movies-section justify-content-center row m-5">
    <h2 class="col-12 text-left">{{name}}</h2>
    <div
      data-toggle="modal"
      data-target="#exampleModalCenter"
      @click="$emit('showDetail',item.id,categories)"
      class="movies col-md-2 col-12 p-0"
      :class="col"
      :key="item.id"
      v-for="item in list"
    >
      <img class="img-fluid p-2" :src="'images/'+item.cover" />
      <h3 class="h6 font-weight-bold">{{item.title}}</h3>
      <h4 class="h6">{{item.year}}</h4>
      <h4 class="h6">{{item.IMDb}}</h4>
    </div>
  </section>
</template>

<script>
export default {
  props: ["list", "name", "categories", "col"]
};
</script>