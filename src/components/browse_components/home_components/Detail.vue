<template>
  <div class="modal fade" id="exampleModalCenter">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content p-5">
        <div v-if="this.$props.detail">
          <img class="pb-5" :src="'images/'+ detail.cover" />
          <h2>{{detail.title}}</h2>
          <p>{{detail.desc}}</p>
        </div>
      </div>
    </div>
  </div>
</template>


<script>
export default {
  props: ["detail"]
};
</script>