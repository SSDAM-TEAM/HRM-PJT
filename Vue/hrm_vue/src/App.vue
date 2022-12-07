<template>
  <div id="app">
    <div id="wrapper">
      <router-view name="header"></router-view>
      <main>
        <router-view></router-view>
      </main>
    </div>
    <router-view name="footer"></router-view>
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


/* Page content. The value of the margin-left property should match the value of the sidebar's width property */
div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}
</style>
