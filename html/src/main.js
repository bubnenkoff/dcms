import Vue from 'vue'
import App from './App.vue'
import VueRouter from 'vue-router'

import General from './General.vue'
import Book from './Book.vue'
import FAQ from './FAQ.vue'


Vue.use(VueRouter)

const routes = [
 { path: '/', component: General },
 { path: '/book', component: Book },
 { path: '/faq', component: FAQ }
];

const router = new VueRouter({
  routes,
  // mode: 'history' // do not turn on, or we would get 404 on page refrash
});

new Vue({
  el: '#app',
  router, 
  data : {
	  msg: "Hello World"
  },
  components: {App}
})

