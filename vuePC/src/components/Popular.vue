<template>
  <div class="index-choice">
    <div class="popular-title">畅销推荐</div>
    <!-- 选项卡部分 -->
    <van-tabs>
      <van-tab
        v-model="active"
        v-for="(title, index) in tabTitle"
        :key="index"
        :title="title"
      >
        {{ active }}
        <!-- <div class="main">
          <ul class="hot-list">
            <li class="products-item">
              <router-link to="/">
                <img src="../assets/products/bvlgari.jpg" alt="" />
                <div class="base-name">
                  【陈伟霆/赤西仁同款】BVLGARI 宝格丽
                  大吉岭夜色（夜幽）男士淡香水 EDT 100ml
                </div>
                <div class="product-price">
                  <span class="price_now">$55.99</span>
                  <span class="price_was">$88.00</span>
                </div>
                <div class="price">参考价：￥378.44</div>
                <button class="cart"></button>
              </router-link>
            </li>
          </ul>
        </div> -->
      </van-tab>
    </van-tabs>
    <router-link to="/">
      <span>查看更多</span>
    </router-link>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tabTitle: [
        "平价香水",
        "高颜值香水",
        "面部护理",
        "礼盒套装",
        "人气美妆",
        "身体洗护",
      ],
      active: "1",
      products: [],
    };
  },
  watch: {
    active(value) {
      console.log(value);
    },
  },
  mounted() {},
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
  width: 94%;
  line-height: 2.5rem;
  background: #fff;
  margin: 0.625rem 0 1.56rem;
  padding: 0 10px;
  overflow: hidden;
}
.index-choice a span {
  display: block;
  width: 100%;
  border: 1px solid #999;
  height: 2.5rem;
  line-height: 2.5rem;
  text-align: center;
  border-radius: 1.25rem;
  font-size: 0.875rem;
  color: #333;
}
</style>