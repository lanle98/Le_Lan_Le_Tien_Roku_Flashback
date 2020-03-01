

<template>
  <header>
    <nav>
      <ul class="row justify-content-around p-0 mx-0">
        <li>Home</li>
        <li>Movies</li>
        <li>TV</li>
      </ul>
    </nav>
    <div class="jumbotron">
      <!-- Additional required wrapper -->
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide">slide 1</div>
          <div class="swiper-slide">slide 2</div>
          <div class="swiper-slide">slide 3</div>
        </div>
      </div>

      <div @click="this.buttonPrev" class="btn-next">-</div>
      <div @click="this.buttonNext" class="btn-prev">+</div>
    </div>
  </header>
</template>

<script>
export default {
  data() {
    return {
      index: 0
    };
  },
  methods: {
    buttonPrev() {
      if (this.index <= 2 && this.index > 0) {
        this.index--;
      }
      let swiperWrapper = document.querySelector(".swiper-wrapper"),
        swiperSlide = document.querySelectorAll(".swiper-slide"),
        sliderOffset = swiperSlide[this.index].offsetLeft;
      console.log(sliderOffset);

      swiperWrapper.style.transform = `translateX(-${sliderOffset}px)`;
    },
    buttonNext() {
      if (this.index < 2) {
        this.index++;
      }
      let swiperWrapper = document.querySelector(".swiper-wrapper"),
        swiperSlide = document.querySelectorAll(".swiper-slide"),
        sliderOffset = swiperSlide[this.index].offsetLeft;
      console.log(sliderOffset);

      swiperWrapper.style.transform = `translateX(-${sliderOffset}px)`;
    }
  }
};
</script>

<style scoped>
.jumbotron {
  overflow: hidden;
  position: relative;
}

.swiper-container {
  width: 100%;
  overflow: hidden;
}

.swiper-slide {
  width: 100%;
  overflow: hidden;
}

.swiper-wrapper {
  display: flex;
  background: blue;
  width: 300%;
  transition: 0.5s !important;
}
</style>