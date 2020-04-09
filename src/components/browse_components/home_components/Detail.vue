<template>
  <div @click="click" class="modal fade m-0 p-0 row justify-content-center" id="exampleModalCenter">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content p-5">
        <div v-if="this.$props.detail">
          <!-- <img class="pb-5 cover" :src="'images/'+ detail.cover" /> -->
          <video class="p-3" controls>
            <source :src="'videos/'+detail.link" type="video/mp4" />
          </video>
          <h2>{{detail.title}}</h2>
          <p>{{detail.desc}}</p>
        </div>
      </div>
    </div>
  </div>
</template>


<script>
export default {
  props: ["detail"],

  methods: {
    click() {
      document.querySelector("video").pause();
      document.querySelector("video").currentTime = 0;
    }
  }
};
</script>