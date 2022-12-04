import Vue from 'vue'
import VueRouter from 'vue-router'
import AppHome from '@/views/AppHome.vue'
import AppLogin from '@/views/AppLogin.vue'
import AppEmployee from '@/views/AppEmployee.vue'
import AppTimeline from '@/views/AppTimeline.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: AppHome
  },
  {
    path: '/login',
    name: 'login',
    component: AppLogin
  },
  {
    path: '/employee',
    name: 'employee',
    component: AppEmployee
  },
  {
    path: '/timeline',
    name: 'timeline',
    component: AppTimeline
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
