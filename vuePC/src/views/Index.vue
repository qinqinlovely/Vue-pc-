<template>
  <div class="contant">
    <!-- 顶部搜索框start -->
    <div class="head">
      <router-link to="/">
        <img src="../assets/head/logo.png" alt class="logoimg" />
      </router-link>
      <router-link to="/search">
        <van-search placeholder="一生之水" class="search" shape="round"></van-search>
      </router-link>
    </div>
    <!-- 顶部搜索框end -->
    <!-- 轮播图 -->
    <carousel></carousel>
    <!-- 分类 -->
    <div class="category">
      <ul class="cate-list">
        <li>
          <router-link to="/">
            <img src="../assets/in-category/xiangshui.png" alt />
          </router-link>
          <router-link to="/" class="category-title">香水香氛</router-link>
        </li>
        <li>
          <router-link to="/">
            <img src="../assets/in-category/mianbu.png" alt />
          </router-link>
          <router-link to="/" class="category-title">面部护理</router-link>
        </li>
        <li>
          <router-link to="/">
            <img src="../assets/in-category/jifu.png" alt />
          </router-link>
          <router-link to="/" class="category-title">肌肤护理</router-link>
        </li>
        <li>
          <router-link to="/">
            <img src="../assets/in-category/meizhuang.png" alt />
          </router-link>
          <router-link to="/" class="category-title">人气美妆</router-link>
        </li>
        <li>
          <router-link to="/">
            <img src="../assets/in-category/xiangxun.png" alt />
          </router-link>
          <router-link to="/" class="category-title">香薰蜡烛</router-link>
        </li>
        <li>
          <router-link to="/">
            <img src="../assets/in-category/xinpin.png" alt />
          </router-link>
          <router-link to="/" class="category-title">新品上线</router-link>
        </li>
        <li>
          <router-link to="/">
            <img src="../assets/in-category/xihu.png" alt />
          </router-link>
          <router-link to="/" class="category-title">洗护造型</router-link>
        </li>
        <li>
          <router-link to="/">
            <img src="../assets/in-category/xiangshui.png" alt />
          </router-link>
          <router-link to="/" class="category-title">礼盒套装</router-link>
        </li>
      </ul>
    </div>
    <!-- 热卖排行榜开始 -->
    <hotsale></hotsale>
    <!-- 热卖排行榜结束 -->
    <!-- 新品推荐开始 -->
    <newrecommend></newrecommend>
    <!-- 新品推荐结束 -->
    <!-- 精选活动开始 -->
    <activities></activities>
    <!-- 精选活动结束 -->
    <!-- 畅销推荐开始 -->
    <popular></popular>
    <!-- 畅销推荐结束 -->
    <!-- 精选品牌 -->
    <pinpai></pinpai>
    <!-- 精选品牌 -->
    <!-- 优选专题 -->
    <youxuan></youxuan>
    <!-- 优选专题 -->
    <!-- 猜你喜欢 -->
    <youlike></youlike>
    <!-- 猜你喜欢 -->
    <!-- 网站优势 开始 -->
    <div class="advantage">
      <ul class="our-adv">
        <li class="item">
          <img src="../assets/global.png" alt />
          <p class="advantage-name">正品货源</p>
        </li>
        <li class="item">
          <img src="../assets/overseas-mail.png" alt />
          <p class="advantage-name">中文服务</p>
        </li>
        <li class="item">
          <img src="../assets/convenient-pay.png" alt />
          <p class="advantage-name">国际直邮</p>
        </li>
        <li class="item">
          <img src="../assets/brand-direct.png" alt />
          <p class="advantage-name">便捷支付</p>
        </li>
      </ul>
    </div>
    <!-- 网站优势 结束 -->
    <!-- 汇率 开始 -->
    <div class="rate">
        今日参考汇率：1美元=7.15人民币
    </div>
    <!-- 汇率 结束 -->

    <div class="copyright">
      ©2019 Fragrance.com All Rights Reserved.
      <br />Designed by
      <router-link to="/">Azoya.</router-link>
      <router-link to="/me">粤ICP备13081207号-9</router-link>
    </div>
    <!-- 底部选项卡开始 -->
    <van-tabbar v-model="active" active-color="#522555">
      <van-tabbar-item replace to="/index" id="index">
        <span>主页</span>
        <img slot="icon" slot-scope="props" :src="props.active ? icon.active : icon.inactive" />
      </van-tabbar-item>
      <van-tabbar-item replace to="/category" id="category">
        <span>分类</span>
        <img slot="icon" slot-scope="props" :src="props.active ? icon.active2 : icon.inactive2" />
      </van-tabbar-item>
      <van-tabbar-item replace to="/brand" id="brand">
        <span>品牌</span>
        <img slot="icon" slot-scope="props" :src="props.active ? icon.active3 : icon.inactive3" />
      </van-tabbar-item>
      <van-tabbar-item replace to="/cart" badge="3" id="cart">
        <span>购物车</span>
        <img slot="icon" src="../assets/tabbar/gouwuche.png" />
      </van-tabbar-item>
      <van-tabbar-item replace to="/me">
        <span>个人中心</span>
        <img slot="icon" src="../assets/tabbar/me.png" />
      </van-tabbar-item>
    </van-tabbar>
    <!-- 底部选项卡结束 -->
  </div>
</template>

<script>
import Carousel from "../components/Carousel";
import Newrecommend from "../components/Newrecommend";
import Hotsale from "../components/Hotsale";
import Activities from "../components/Activities";
import Popular from "../components/Popular";
import Pinpai from "../components/Pinpai";
import Youxuan from "../components/Youxuan";
import Youlike from "../components/Youlike";
export default {
  data() {
    return {
      active: 0,
      icon: {
        active: require("../assets/tabbar/zhuye-onfocus.png"),
        inactive: require("../assets/tabbar/zhuye-focus.png"),
        active2: require("../assets/tabbar/fenlei-onfocus.png"),
        inactive2: require("../assets/tabbar/fenlei-focus.png"),
        active3: require("../assets/tabbar/pinpai-onfocus.png"),
        inactive3: require("../assets/tabbar/pinpai-focus.png"),
      },
    };
  },
  components: {
    Carousel,
    Newrecommend,
    Hotsale,
    Activities,
    Popular,
    Pinpai,
    Youxuan,
    Youlike,
  },
};
</script>

<style scoped>
.contant {
  background: #f5f5f5;
}
/* 头部 */
.head {
  height: 2.75rem;
  background: #fff;
}
.search {
  width: 55%;
  height: 25px;
  outline: none;
  margin-top: 10px;
  float: right;
}
.logoimg {
  width: 8.625rem;
  height: 26px;
  margin: 10px 0px 0px 20px;
}
.category {
  box-sizing: border-box;
  width: 100%;
  padding: 10px;
  width: 375px;
  height: 192px;
  margin: 0 auto;
  background: #fff;
}
ul,
li {
  list-style: none;
}
.cate-list li {
  float: left;
  width: 25%;
  text-align: center;
  margin: 8px 0;
}
.cate-list li img {
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
}
.category-title {
  display: block;
  margin-top: 5px;
  font-size: 12px;
  color: #333;
  text-align: center;
  width: 100%;
}

/* 网站优势 */
.advantage {
  background: #fff;
  color: #333;
}
.our-adv {
  height: 8.75rem;
  box-sizing: border-box;
  background: #fff;
  padding: 1.56rem 0 0;
  overflow: hidden;
}
.our-adv .item {
  float: left;
  width: 50%;
  height: 3.43rem;
  text-align: left;
  color: #333;
  font-size: 0.875rem;
}
.our-adv .item img {
  float: left;
  width: 2.5rem;
  height: 2.5rem;
  margin-right: 0.5rem;
  vertical-align: middle;
  margin-left: 1.875rem;
}
.our-adv .item .advantage-name {
  height: 2.5rem;
  line-height: 2.5rem;
  font-size: 0.875rem;
}
.rate{
    background: #fff url(../assets/rate.png) no-repeat 0.875rem;
    margin-top: 0.625rem;
    font-size: 0.875rem;
    font-family: PingFangSC-Regular;
    color: #333;
    height: 2.75rem;
    line-height: 2.75rem;
    background-size: 1.06rem 1.18rem;
    text-indent: 2.46rem;
}

/* footer部分 */
.copyright,
.copyright a {
  color: #a694a8;
}
.copyright {
  width: 95%;
  text-align: center;
  margin: 0 auto;
  height: 1.875rem;
  line-height: 0.93rem;
  padding: 0.78rem 0;
  margin-bottom: 3.125rem;
  background: #522555;
  font-size: 0.75rem;
}
</style>