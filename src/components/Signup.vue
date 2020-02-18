<template>
  <div class="container login-page m-auto text-center vh-100">
    <h2>Sign Up</h2>
    <form method="post" class="w-75 mx-auto text-center">
      <div class="input username my-5 text-left">
        <i class="far fa-user p-2"></i>
        <input v-model="username" name="username" type="text" placeholder="username..." />
      </div>
      <div class="input password my-5 text-left">
        <i class="fas fa-key p-2"></i>
        <input v-model="password" name="password" type="password" placeholder="password..." />
      </div><router-link to="/login">
      <button class="btn btn-primary my-5 text-center px-5 py-2" type="submit">
        Sign Up
      </button></router-link>
    </form>

    <a href="#">Help?</a>
  </div>
</template>
<script>
export default {
  data() {
    return { username: "", password: "" };
  }
};
</script>

<style>
.input {
  border-bottom: 2px solid;
}
.input input {
  border: none;
}
.login-page {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
}
button {
  border-radius: 40px !important;
}
li {
  list-style-type: none;
} /*# sourceMappingURL=main.css.map */
</style>
