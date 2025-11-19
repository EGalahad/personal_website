<template>
  <div class="video-container">
    <video
      ref="videoEl"
      :src="src"
      :autoplay="autoplay"
      :loop="loop"
      :muted="muted"
      :playsinline="playsinline"
      :preload="preload"
      v-bind="$attrs"
      @waiting="isLoading = true"
      @loadeddata="isLoading = false"
      @canplay="isLoading = false"
      @playing="isLoading = false"
    >
      <source v-if="src && type" :src="src" :type="type" />
      <slot />
    </video>
    <div v-if="isLoading && showLoading" class="loading-overlay">
      <v-progress-circular indeterminate color="primary" />
    </div>
  </div>
</template>

<style scoped>
.video-container {
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
  overflow: hidden;
}

.video-container video {
  display: block;
  width: 100%;
  height: 100%;
  margin: 0;
  border: none;
  background: #000;
  object-fit: cover;
  box-sizing: border-box;
}

.loading-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background: none;
  z-index: 10;
  pointer-events: none;
}
</style>


<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue';

const props = defineProps({
  src: { type: String, default: '' },
  type: { type: String, default: 'video/mp4' },
  autoplay: { type: Boolean, default: true },
  loop: { type: Boolean, default: true },
  muted: { type: Boolean, default: true },
  playsinline: { type: Boolean, default: true },
  preload: { type: String, default: 'metadata' },
  showLoading: { type: Boolean, default: true }
});

const videoEl = ref(null);
let observer = null;
const showLoading = ref(props.showLoading);
const isLoading = ref(true);

onMounted(() => {
  observer = new IntersectionObserver(
    ([entry]) => {
      if (!videoEl.value) return;
      if (entry.isIntersecting) {
        videoEl.value.play().catch(() => {});
      } else {
        videoEl.value.pause();
      }
    },
    { threshold: 0.1 }
  );
  if (videoEl.value) {
    observer.observe(videoEl.value);
    videoEl.value.pause();
  }
});

onBeforeUnmount(() => {
  if (observer && videoEl.value) {
    observer.unobserve(videoEl.value);
    observer.disconnect();
  }
});
</script>
