import Vue from "vue";
import App from "./App.vue";
import VueRouter from "vue-router";
import Login from "./components/Login.vue";
import Signup from "./components/Signup.vue";
import Home from "./components/Home.vue";
Vue.config.productionTip = false;

Vue.use(VueRouter);
const routes = [
  { path: "/login", name: "login", component: Login },
  { path: "/signup", name: "signup", component: Signup },
  { path: "/home", name: "app", component: Home },
  { path: "/", redirect: "/login" }
];

const router = new VueRouter({
  routes,
  mode: "history"
});

new Vue({
  render: h => h(App),
  router
}).$mount("#app");
