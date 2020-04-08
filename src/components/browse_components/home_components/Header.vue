

<template>
  <header>
    <nav class="search-nav navbar navbar-light justify-content-end p-5">
      <div class="search-form px-5 d-flex align-items-center">
        <i class="fas fa-search"></i>
      </div>

      <div class="user-switch row">
        <div
          @click="switchType('parents')"
          class="p-2 m-2 h6"
          :class="{'active':user == 'parents'}"
        >PARENTS</div>
        <div @click="switchType('kids')" class="p-2 m-2 h6" :class="{'active':user == 'kids'}">KIDS</div>
      </div>
    </nav>
    <div class="jumbotron p-0">
      <!-- Additional required wrapper -->
      <div class="swiper-container">
        <div class="swiper-wrapper" v-if="user == 'parents'">
          <div class="swiper-slide">
            <img class="img-fluid" src="images/hero_parents.jpg" alt="hero" />
          </div>
          <div class="swiper-slide">
            <img class="img-fluid" src="images/hero_kids.png" alt="hero" />
          </div>
          <div class="swiper-slide">
            <img class="img-fluid" src="images/hero_kids.png" alt="hero" />
          </div>
        </div>

        <div class="swiper-wrapper" v-if="user == 'kids'">
          <div class="swiper-slide">
            <img class="img-fluid" src="images/hero_parents.jpg" alt="hero" />
          </div>
          <div class="swiper-slide" v-if="user == 'kids'">
            <img class="img-fluid" src="images/hero_kids.png" alt="hero" />
          </div>
          <div class="swiper-slide">
            <img class="img-fluid" src="images/hero_kids.png" alt="hero" />
          </div>
        </div>
      </div>

      <div @click="this.buttonNext" class="btn-next">
        <i class="fas fa-angle-right"></i>
      </div>
      <div @click="this.buttonPrev" class="btn-prev">
        <i class="fas fa-angle-left"></i>
      </div>
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
  props: ["user", "authority"],
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
    },
    switchType(user) {
      console.log(user);
      if (this.authority !== "kids") {
        this.$emit("switchType", user);
      }
    }
  }
};
</script>

<style scoped>
</style>