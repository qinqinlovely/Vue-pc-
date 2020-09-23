<template>
  <div class="index-choice">
    <div class="zhuanti-title">优选专题</div>
    <!-- 第一部分 -->
    <div class="title-pic">
      <router-link to="/">
        <img src="../assets/zhuanti1.jpg" alt />
      </router-link>
    </div>
    <div id="slider" class="swipe">
      <ul class="swipe-wrap">
        <li class="products-item">
          <router-link to="/">
            <img src="../assets/products/bvlgari.jpg" alt />
            <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
            <div class="product-price">
              <span class="price_now">$55.99</span>
              <span class="price_was">$88.00</span>
            </div>
            <div class="price">参考价：￥378.44</div>
          </router-link>
        </li>
        <li class="products-item">
          <router-link to="/">
            <img src="../assets/products/bvlgari.jpg" alt />
            <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
            <div class="product-price">
              <span class="price_now">$55.99</span>
              <span class="price_was">$88.00</span>
            </div>
            <div class="price">参考价：￥378.44</div>
          </router-link>
        </li>
        <li class="products-item">
          <router-link to="/">
            <img src="../assets/products/bvlgari.jpg" alt />
            <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
            <div class="product-price">
              <span class="price_now">$55.99</span>
              <span class="price_was">$88.00</span>
            </div>
            <div class="price">参考价：￥378.44</div>
          </router-link>
        </li>
      </ul>
    </div>
    <!-- 第二部分 -->
    <div class="title-pic">
      <router-link to="/">
        <img src="../assets/zhuanti2.jpg" alt />
      </router-link>
    </div>
    <div id="slider" class="swipe">
      <ul class="swipe-wrap">
        <li class="products-item">
          <router-link to="/">
            <img src="../assets/products/bvlgari.jpg" alt />
            <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
            <div class="product-price">
              <span class="price_now">$55.99</span>
              <span class="price_was">$88.00</span>
            </div>
            <div class="price">参考价：￥378.44</div>
          </router-link>
        </li>
        <li class="products-item">
          <router-link to="/">
            <img src="../assets/products/bvlgari.jpg" alt />
            <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
            <div class="product-price">
              <span class="price_now">$55.99</span>
              <span class="price_was">$88.00</span>
            </div>
            <div class="price">参考价：￥378.44</div>
          </router-link>
        </li>
        <li class="products-item">
          <router-link to="/">
            <img src="../assets/products/bvlgari.jpg" alt />
            <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
            <div class="product-price">
              <span class="price_now">$55.99</span>
              <span class="price_was">$88.00</span>
            </div>
            <div class="price">参考价：￥378.44</div>
          </router-link>
        </li>
      </ul>
    </div>
  </div>
</template>

<style scoped>
.index-choice {
  background: #fff;
  margin-top: 0.625rem;
  padding: 1.56rem 0.75rem 0;
  overflow: hidden;
}
.zhuanti-title {
  font-size: 1.06rem;
  color: #333;
  text-align: center;
  font-weight: 700;
  line-height: 1.06rem;
  font-family: PingFangSC-Medium;
  margin-bottom: 1.25rem;
}
.zhuanti-title.like{
    margin-top: 1.25rem;
}
.title-pic {
  width: 100%;
  height: 10rem;
}
.title-pic img {
  width: 100%;
  height: 10rem;
}
.swipe {
  overflow: hidden;
  /* visibility: hidden; */
  position: relative;
}
.swipe-wrap {
  overflow: hidden;
  position: relative;
}
.swipe-wrap > li {
  float: left;
  width: 30%;
  position: relative;
}

.products-item {
  box-sizing: border-box;
  margin-bottom: 0.625rem;
  margin-left: 0.625rem;
  width: 10.7rem;
  height: 12.2rem;
  float: left;
  text-align: center;
  padding: 0 0.625rem;
}
.products-item img {
  width: 5rem;
  height: 5rem;
  margin: 0.31rem auto 0;
}
.base-name {
  display: -webkit-box;
  height: 2.43rem;
  width: 5.7rem;
  margin: 0.25rem 0 0.25rem 0;
  text-overflow: ellipsis;
  color: #212121;
  text-align: left;
  line-height: 1.25rem;
  overflow: hidden;
  font-size: 0.75rem;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.product-price {
  padding-top: 0.25rem;
  text-align: left;
}
.product-price span {
  display: inline-block;
  color: #333;
  text-align: left;
  font-family: PingFangSC-Medium;
}
.product-price .price_now {
  font-size: 1rem;
  font-weight: 700;
}
.product-price .price_was {
  color: #999;
  padding-top: 0.25rem;
  text-decoration: line-through;
  font-size: 0.75rem;
}
.price {
  text-align: left;
  font-size: 0.75rem;
  color: #999;
  margin-top: 0.25rem;
  width: 10.7rem;
}
</style>