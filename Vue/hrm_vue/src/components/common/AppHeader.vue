<template>
  <header>
    <b-navbar class="topbar navbar navbar-expand-sm">
      <router-link to="/" class="navbar-brand" style="margin-left: 20px">
        <img src="@/assets/logo.png" alt="logo" style="width: 40px" />
      </router-link>
      <h2>HRM</h2>
      <router-link to="/employee" class="nav-link">계정</router-link>
    </b-navbar>

    <nav class="sidebar collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav" style="padding: 0">
        <li class="nav-item">
          <router-link to="/" class="nav-link">홈</router-link>
        </li>
        <li class="nav-item">
          <router-link to="/employee" class="nav-link">계정</router-link>
        </li>
        <li class="nav-item">
          <router-link to="timeline" class="nav-link">출입 기록</router-link>
        </li>
      </ul>
    </nav>
  </header>
</template>

<script>
export default {
  name: "AppHeader",
  data() {
    return {};
  },
};
</script>

<style>
.topbar {
  display: flex;
  align-items: center;
  margin: 0;
  padding: 0;
  align-content: center;
  width: 100%;
  height: 80px;
  background-color: white;
  box-shadow: 5px 5px 5px #cfcfcf;
}
/* The side navigation menu */
.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #074499;
  position: absolute;
  height: 100%;
  overflow: auto;
}

/* sidebar links */
.sidebar a {
  display: block;
  color: white;
  padding: 16px;
  text-decoration: none;
}

/* active sidebar link */
nav a.router-link-exact-active {
  font-weight: bolder;
}

/* Links on mouser-over */
.sidebar a:hover:not(.router-link-exact-active) {
  text-decoration: underline;
}

/* On screens that are less than 700px wide, make the sidebar into a topbar */
@media screen and (max-width: 700px) {
  .sidebar {
    display: none;
  }
}

/* On screen that are less than 400px, display the bar vertically, instead of horizontally */
@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
