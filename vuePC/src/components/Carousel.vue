<template>
  <div>
    <van-swipe class="my-swipe" :autoplay="3000" indicator-color="#522555">
      <van-swipe-item v-for="(banner, index) of imgs" :key="index">
        <img :src="banner.img" alt="" />
      </van-swipe-item>
      <!-- <van-swipe-item>
        <img src="../assets/banner/banner2.jpg" alt="" />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/banner/banner3.jpg" alt="" />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/banner/banner4.jpg" alt="" />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/banner/banner5.jpg" alt="" />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/banner/banner6.jpg" alt="" />
      </van-swipe-item> -->
    </van-swipe>
  </div>
</template>

<script>
export default {
  data() {
    return {
      imgs: [],
    };
  },
  mounted() {
    this.axios.get("/banner").then((res) => {
      console.log(res.data);
      let data = res.data.results;
      console.log(data);
      data.forEach((item) => {
        item.img = require("../assets/banner/" + item.img);
        this.imgs.push(item);
      });
    });
  },
};
</script>

<style>
.my-swipe .van-swipe-item {
  color: #fff;
  text-align: center;
}
.my-swipe .van-swipe-item img {
  width: 375px;
  height: 160px;
  line-height: 160px;
}
</style>
