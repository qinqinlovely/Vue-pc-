<template>
  <div class="index-choice">
    <div class="popular-title">精选品牌</div>
    <router-link to="/">
      <img src="../assets/pinpai.jpg" alt="" />
    </router-link>
    <van-grid class="select-brand" :border="false" :column-num="4">
      <van-grid-item v-for="(image, index) in imageList" :key="index">
        <van-image class="van-grid-item__content" :src="image" />
      </van-grid-item>
    </van-grid>
  </div>
</template>

<script>
export default {
  data() {
    return {
      imageList: [
        require("../assets/pinpai/Armani.jpg"),
        require("../assets/pinpai/burberry.jpg"),
        require("../assets/pinpai/ck.jpg"),
        require("../assets/pinpai/Dior.jpg"),
        require("../assets/pinpai/gucci.jpg"),
        require("../assets/pinpai/issey.jpg"),
        require("../assets/pinpai/jacobs.jpg"),
        require("../assets/pinpai/TF.jpg"),
      ],
    };
  },
};
</script>


<style scoped>
.index-choice {
  background: #fff;
  margin-top: 0.625rem;
  padding-left: 2px;
  overflow: hidden;
}
.popular-title {
  font-size: 1.06rem;
  color: #333;
  text-align: center;
  font-weight: 700;
  line-height: 1.06rem;
  font-family: PingFangSC-Medium;
  padding-top: 1.56rem;
  margin-bottom: 1.25rem;
}
.index-choice a {
  display: block;
  width: 100%;
  height: 10rem;
}
.index-choice a img {
  width: 100%;
  height: 100%;
}
.select-brand {
  height: 6.68rem;
  /* padding-left: 0.9rem;
  padding-top: 1.09rem; */
}
.van-grid-item__content {
  padding: 0 0;
}
</style>