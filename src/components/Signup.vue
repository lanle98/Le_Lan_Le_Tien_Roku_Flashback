<template>
  <div class="container-fluid login-page wrapper m-auto text-center vh-100 w-100">
    <div class="h-575">
      <img class="img-fluid logo" alt="logo" src="images/Roku-Flashback-Logo.svg" />
      <form class="w-75 mx-auto text-center container signup-form" method="post">
        <div class="input password my-5 text-left">
          <input
            class="w-100 text-center"
            v-model="name"
            name="name"
            type="text"
            placeholder="Your Name..."
          />
        </div>
        <div class="input username my-5 text-left">
          <input
            class="w-100 text-center"
            v-model="username"
            name="username"
            type="text"
            placeholder="Username..."
          />
        </div>
        <div class="input password my-5 text-left">
          <input
            class="w-100 text-center"
            v-model="password"
            name="password"
            type="password"
            placeholder="Password..."
          />
        </div>
        <div class="input radio-selection password my-5 text-left">
          Avatar:
          <div class="row">
            <label class="col-4 p-3">
              <input v-model="avatar" type="radio" name="avatar" value="kid.svg" />
              <img class="img-fluid p-3" src="images/users/kid.svg" alt="avatar" />
            </label>

            <label class="col-4 p-3">
              <input v-model="avatar" type="radio" name="avatar" value="daddy.svg" />
              <img class="img-fluid p-3" src="images/users/daddy.svg" alt="avatar" />
            </label>

            <label class="col-4 p-3">
              <input v-model="avatar" type="radio" name="avatar" value="mama.svg" />
              <img class="img-fluid p-3" src="images/users/mama.svg" alt="avatar" />
            </label>
          </div>
        </div>

        <p>{{this.message}}</p>
        <button
          @click.prevent="createUser"
          class="btn btn-primary my-5 text-center px-5 py-2"
        >SIGN UP</button>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: "",
      username: "",
      password: "",
      avatar: "kid.svg",
      message: ""
    };
  },

  methods: {
    createUser() {
      let url =
        "http://localhost:8888/Le_Lan_Le_Tien_Roku_Flashback/server/admin/admin_createuser.php";

      let formData = new FormData();

      formData.append("name", this.name);
      formData.append("username", this.username);
      formData.append("password", this.password);
      formData.append("avatar", this.avatar);

      fetch(url, {
        method: "POST",
        body: formData
      })
        .then(res => res.json())
        .then(data => {
          this.message = data;

          if (data === "Signup successful") {
            window.location.href = "/";
          }
        })
        .catch(err => console.log(err));
    }
  }
};
</script>