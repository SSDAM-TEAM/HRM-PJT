<template>
  <div id="app">
    <nav>
      <!-- Before-Login -->
      <router-link to="/login">Login</router-link>
      <!-- After-Login -->
      <router-link to="/">홈 page</router-link>
      <router-link to="/employee">계정 page</router-link>
      <router-link to="/timeline">출퇴근&사내이동 page</router-link>
    </nav>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav a {
  padding: 30px;
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
