<script setup lang="ts">
  import {ref} from "vue";

  const isSidebarOpen = ref(false);

  const toggleSidebar = () => {
    isSidebarOpen.value =!isSidebarOpen.value;
  };
</script>

<template>
  <div class="sidebar" :class="{ 'open': isSidebarOpen }">
    <div class="sidebar-icon" @click="toggleSidebar">
      <img src="../../assets/img/engines/godot.svg" alt="Icon 1">
    </div>
    <div class="sidebar-icon" id="wedot" @click="toggleSidebar">
      <img src="../../assets/img/engines/wedot.svg" alt="Icon 2">
    </div>
    <div class="sidebar-icon" @click="toggleSidebar">
      <img src="../../assets/img/engines/redot.svg" alt="Icon 3">
    </div>
  </div>
</template>

<style scoped>
.sidebar {
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 100px;
  background-color: #333;
  color: #fff;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;
  transition: width 0.3s ease-in-out;
}

.sidebar-icon {
  margin: 20px 0;
  width: 60px;
  height: 60px;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  transition: background-color 0.3s ease-in-out;
}

.sidebar-icon::before {
  content: "";
  position: absolute;
  top: -10px;
  left: -10px;
  right: -10px;
  bottom: -10px;
  border-radius: 10%;
  background: radial-gradient(#ece8e8, transparent);
  opacity: 0;
  transition: opacity 0.3s ease-in-out;
  pointer-events: none;
}

.sidebar-icon:hover::before {
  opacity: 1;
}

.sidebar-icon img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

#wedot img{
  height: calc(100% + 20px);
  width: calc(100% + 20px);
}

@media (min-width: 1440px) {
.sidebar {
    width: 70px;
  }
}

@media (max-width: 1439px) {
.sidebar {
    width: 60px;
  }
}
</style>
