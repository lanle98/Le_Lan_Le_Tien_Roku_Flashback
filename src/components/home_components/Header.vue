

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
      <swiper ref="mySwiper">
        <!-- slides -->
        <swiper-slide>I'm Slide 1</swiper-slide>
        <swiper-slide>I'm Slide 2</swiper-slide>
        <swiper-slide>I'm Slide 3</swiper-slide>

        <!-- Optional controls -->

        <div class="swiper-button-prev" @click="this.buttonPrev" slot="button-prev"></div>
        <div class="swiper-button-next" @click="this.buttonNext" slot="button-next"></div>
      </swiper>
    </div>
  </header>
</template>

<script>
import "swiper/dist/css/swiper.css";
import { swiper, swiperSlide } from "vue-awesome-swiper";

//declare variables

export default {
  components: { swiper, swiperSlide },
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

.swiper-wrapper {
  display: flex;
  width: 300%;
}

.swiper-slide {
  width: 100%;
  height: 300px;
}

.swiper-button-prev {
  position: absolute;
  left: 0;
  top: 50%;
}

.swiper-button-next {
  position: absolute;
  right: 0;
  top: 50%;
}
</style>