<template>
  <div class="contant">
    <!-- 顶部搜索框start -->
    <div class="head">
      <router-link to="/">
        <img src="../assets/head/logo.png" alt class="logoimg" />
      </router-link>
      <router-link to="/search">
        <van-search
          placeholder="一生之水"
          class="search"
          shape="round"
        ></van-search>
      </router-link>
    </div>
    <!-- 顶部搜索框end -->
    <!-- 轮播图 -->
    <carousel></carousel>
    <!-- 分类 -->
    <div class="category">
      <ul class="cate-list">
        <li>
          <router-link to="/categories/xiangshui">
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
    <div class="rate">今日参考汇率：1美元=7.15人民币</div>
    <!-- 汇率 结束 -->
    <!-- 手风琴效果部分开始 -->
    <van-collapse v-model="activeName" accordion>
      <van-cell-group>
        <van-cell title="在线客服" />
      </van-cell-group>
      <van-collapse-item title="客服咨询" name="1">
        <div class="chn-email">中文客服邮箱: china@service.fragrancenet.cn</div>
        <div class="wx-kefu">微信客服公众号: FragranceNet</div>
        <div class="wx-contact">
          <img src="../assets/wx-contact.jpg" alt="" />
          <div class="contact-box">
            <p class="contact">微信客服公众号: FragranceNet</p>
            <p class="contact">您可以在微信公众号直接发起咨询哦~</p>
            <p class="contact">客服在线时间: 9:00 - 21:00</p>
          </div>
        </div>
      </van-collapse-item>
      <van-collapse-item title="关于我们" name="2">
        <ul>
          <li>
            <router-link class="nr-a" to="/me">网站介绍</router-link>
          </li>
          <li>
            <router-link class="nr-a" to="/me">正品承诺</router-link>
          </li>
          <li>
            <router-link class="nr-a" to="/me">联系我们</router-link>
          </li>
        </ul>
      </van-collapse-item>
      <van-collapse-item title="消费者指南" name="3">
        <ul>
          <li><router-link class="nr-a" to="/brand">购物流程</router-link></li>
          <li><router-link class="nr-a" to="/brand">常见问题</router-link></li>
          <li><router-link class="nr-a" to="/brand">关税发票</router-link></li>
        </ul>
      </van-collapse-item>
      <van-collapse-item title="物流配送" name="4">
        <ul>
          <li><router-link class="nr-a" to="/brand">配送方式</router-link></li>
          <li><router-link class="nr-a" to="/brand">运费标准</router-link></li>
          <li><router-link class="nr-a" to="/brand">物流跟踪</router-link></li>
        </ul>
      </van-collapse-item>
      <van-collapse-item title="售后政策" name="5">
        <ul>
          <li><router-link class="nr-a" to="/brand">退货政策</router-link></li>
          <li><router-link class="nr-a" to="/brand">退货流程</router-link></li>
          <li><router-link class="nr-a" to="/brand">联系客服</router-link></li>
        </ul>
      </van-collapse-item>
      <van-collapse-item title="网站政策" name="6">
        <ul>
          <li><router-link class="nr-a" to="/brand">服务条款</router-link></li>
          <li><router-link class="nr-a" to="/brand">隐私政策</router-link></li>
          <li>
            <router-link class="nr-a" to="/brand">消费者告知书</router-link>
          </li>
        </ul>
      </van-collapse-item>
    </van-collapse>
    <!-- 手风琴效果部分结束 -->
    <!-- 关注我们开始 -->
    <div class="index-attention">
      <ul>
        <li>
          <span class="attention-span us">关注我们</span>
          <div class="attention-img">
            <img src="../assets/weixin.png" alt="" />
            <img src="../assets/weibo.png" alt="" />
          </div>
        </li>
        <li>
          <span class="attention-span">支付方式</span>
          <div class="attention-img-zhifu">
            <img src="../assets/zhifubao.png" alt="" />
            <img src="../assets/weixinzhifu.png" alt="" />
            <img src="../assets/zaixianzhifu.png" alt="" />
          </div>
        </li>
        <li class="more">
          <router-link to="/">
            <span>切换到美国站</span>
          </router-link>
        </li>
      </ul>
    </div>
    <!-- 关注我们结束 -->

    <!-- footer -->
    <div class="copyright">
      ©2019 Fragrance.com All Rights Reserved.
      <br />Designed by
      <router-link to="/">Azoya.</router-link>
      <router-link to="/me">粤ICP备13081207号-9</router-link>
    </div>
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
      activeName: "1",
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
.rate {
  background: #fff url(../assets/rate.png) no-repeat 0.875rem;
  margin-top: 0.625rem;
  margin-bottom: 0.625rem;
  font-size: 0.875rem;
  font-family: PingFangSC-Regular;
  color: #333;
  height: 2.75rem;
  line-height: 2.75rem;
  background-size: 1.06rem 1.18rem;
  text-indent: 2.46rem;
}

/* 手风琴效果部分 */
.wx-contact {
  width: 21.03rem;
  height: 7.5rem;
  box-sizing: border-box;
  padding: 1.25rem 0.93rem;
  background: #f8eef5;
  border-radius: 0.625rem;
  margin-top: 0.625rem;
}
.wx-contact > img {
  float: left;
  width: 5rem;
  margin-right: 0.625rem;
}
.chn-email,
.wx-kefu {
  margin-top: 0.625rem;
  color: #333;
  font-size: 0.812rem;
}
.contact {
  font-size: 0.812rem;
  line-height: 0.812rem;
  color: #333;
  padding-bottom: 0.625rem;
}
.contact-box > p:last-child {
  padding-top: 1.56rem;
  font-size: 0.68rem;
  color: #666;
}
.nr-a {
  color: #999;
}

.index-attention {
  padding: 1.56rem 0.75rem;
  background-color: #fff;
}
.index-attention li {
  height: 2rem;
  line-height: 2rem;
}
.index-attention li:nth-child(2) {
  margin-top: 1.75rem;
  margin-bottom: 1.875rem;
}
.attention-span.us {
  float: left;
}
.attention-img {
  float: left;
  margin-left: 50px;
}
.attention-img > img {
  width: 2.4rem;
  height: 38px;
  margin-right: 0.375rem;
}
.attention-img-zhifu {
  /* width: 70px; */
  height: 27px;
  display: flex;
  flex-direction: row;
  float: right;
}
.attention-img-zhifu > img {
  width: 4.37rem;
  margin-right: 0.625rem;
}
.more a span {
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
  background: #522555;
  font-size: 0.75rem;
}
</style>