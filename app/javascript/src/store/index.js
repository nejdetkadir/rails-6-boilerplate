import Vue from "vue/dist/vue.esm";
import Vuex from "vuex";

Vue.use(Vuex);


const store = new Vuex.Store({
  state: {
    message: "Hello rails from vuex!"
  },
  modules: {}
});

export default store;