<template>
  <div class="sidebar p-3 pt-5">
    <img class="img-fluid" alt="logo" src="images/Roku-Flashback-Logo.svg" />
    <section class="user">
      <div class="user-avatar my-3">
        <img :src="'images/users/'+info.avatar" alt="avatar" />
        <h3 class="h5 p-2">{{info.name}}</h3>
      </div>
      <img />
      <ul class="p-0 m-0">
        <li class="py-3 text-left">
          <a href="#">My Profiles</a>
        </li>
        <li class="py-3 text-left">
          <a href="#">My Favorites</a>
        </li>
        <li class="py-3 text-left">
          <a href="#">Recent Watch</a>
        </li>
        <li class="py-3 text-left">
          <a href="#">Settings</a>
        </li>
        <li class="py-3 text-left">
          <a href="/">Log Out</a>
        </li>
      </ul>
    </section>
  </div>
</template>

<script>
export default {
  props: ["user", "info"]
};
</script>