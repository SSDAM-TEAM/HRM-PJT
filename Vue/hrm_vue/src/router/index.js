import Vue from 'vue'
import VueRouter from 'vue-router'
import AppHome from '@/views/AppHome.vue'
import AppHeader from '@/components/common/AppHeader.vue'
import AppFooter from '@/components/common/AppFooter.vue'
import AppLogin from '@/views/AppLogin.vue'
import AppEmployee from '@/views/AppEmployee.vue'
import AppTimeline from '@/views/AppTimeline.vue'

import EmHome from '@/components/employee/EmployeeHome.vue'
import EmCreate from '@/components/employee/EmployeeCreate.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    components: {
      header: AppHeader,
      default: AppHome,
      footer: AppFooter
    }
  },
  {
    path: '/login',
    name: 'login',
    components: {
      header: AppHeader,
      default: AppLogin,
      footer: AppFooter
    }
  },
  {
    path: '/employee/',
    name: 'employee',
    components: {
      header: AppHeader,
      default: AppEmployee,
      footer: AppFooter
    },
    children: [
      {path: '', component: EmHome},
      {path: 'emcreate', component: EmCreate}
    ]
  },
  {
    path: '/timeline',
    name: 'timeline',
    components: {
      header: AppHeader,
      default: AppTimeline,
      footer: AppFooter
    }
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
