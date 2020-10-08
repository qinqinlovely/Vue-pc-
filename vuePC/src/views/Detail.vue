<template>
  <div class="contant">
    <mt-header title="商品  评价  详情" class="header">
      <div slot="left" class="shortcut">
        <router-link to="/">
          <mt-button icon="back"></mt-button>
        </router-link>
      </div>
      <div slot="right" class="shortcut">
        <router-link to="/">注册</router-link>
      </div>
    </mt-header>

    <!-- 详情图片 -->
    <div class="image">
      <img src="../assets/products/frank-lg.jpg" alt="">
    </div>
    <!-- 价格名称 -->
    <div class="pds-info">
      <div class="price">
        <div class="now_price">
          <span class="final">US$27.29</span>
          <span class="discount-tag">4.5折</span>
          <span class="reference">参考价：￥185.85</span>
        </div>
        <div class="was_price">US$60.00</div>
      </div>
      <div class="product-title">Guerlain 娇兰 花草水语系列 娇嫩玫瑰 女士淡香水 EDT 125ml</div>
    </div>
    <!-- 活动 -->
    <div class="pds-active">
      <div class="layout-indent">
        <span class="indent-word">活动</span>
        <div class="indent-content">
          <div class="info">
            <router-link to="/me">
              <span>>>新品专区</span>              
            </router-link>
          </div>
          <div class="info">
            <router-link to="/me">
              <span>热销排行榜</span>              
            </router-link>
          </div>
          <div class="info">
            <router-link to="/me">
              <span>凑单专区</span>              
            </router-link>
          </div>
        </div>
      </div>
    </div>
    <!-- 规格 -->
    <div class="pds-sku">
      <div class="sku-box">
        <div class="sku-head">
          <span>规格:</span>
          <em class="sku-selected">125ml</em>
        </div>
        <div class="attr-item item-selected">125ml</div>
        <div class="attr-item item-select">75ml</div>
      </div>
    </div>
    <!-- 数量 -->
    <div class="product-qty">
      <div class="shuliang">
        <div class="layout-indent">
          <span class="indent-word">数量</span>
          <div class="indent-content">
            <div class="btn-wrap">
              <button>-</button>
              <input type="text">
              <button>+</button>
            </div>
            <div class="limit-info"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- 服务 -->
    <div class="pds-service-info"></div>



    <!-- 底部区域 -->
    <van-goods-action>
      <van-goods-action-icon icon="chat-o" text="客服"    @click="onClickIcon" />
      <van-goods-action-icon icon="cart-o" text="购物车"  badge="5"  @click="onClickIcon" />
      <van-goods-action-icon icon="shop-o" text="收藏"    @click="onClickIcon" />
      <van-goods-action-button
        type="danger"
        text="加入购物车"
        @click="onClickButton"
      />
    </van-goods-action>
  </div>
</template>

<script>
import { Toast } from 'vant';
export default {
  methods: {
    onClickIcon() {
      Toast('点击图标');
    },
    onClickButton() {
      Toast('成功加入购物车');
    },
  },
}
</script>


<style  scoped>
.contant{
  background: #f5f5f5;
}
.header {
  height: 44px;
  font-size: 18px;
  background: #fff;
  color: #212121;
  border-bottom: 1px solid #e0e0e0;
}
.shortcut a {
  text-decoration: none;
  color: #000;
}

/* 详情页图片 */
.image{
  width: 347px;
  height: 18.59rem;
  overflow: hidden;
  background: #fff;
  /* margin: 0 0.875rem; */
  padding: 0 0.875rem;
  border-bottom: 1px solid #ddd;
}
.image img{
  display: block;
  height: 18.59rem;
  margin: 0 auto;
}
.pds-info{
  /* margin:  0 0.875rem; */
  padding:  0 0.875rem;
  background: #fff;
}
.price{
  padding-top: 0.93rem;
}
.now_price{
  float: left;
  vertical-align: middle;
}
.final{
  color: #cc3314;
  font-weight: 700;
  font-size: 1.25rem;
}
.discount-tag{
  display: inline-block;
  line-height: 1.125rem;
  padding: 0 .31rem;
  color: #fff;
  vertical-align: top;
  background: #cc3314;
  font-size: 0.75rem;
  margin: 0 5px;
}
.reference{
  display: block;
  margin-top: .31rem;
  color: #999;
  font-size: 0.75rem;
}
.was_price{
  float: right;
  line-height: 1.125rem;
  color: #999;
  text-decoration: line-through;
  font-size: 0.75rem;
}
.product-title{
  line-height: 1.4375;
  margin-top: 3.125rem;
  font-size: 1rem;
  color: #333;
}
/* 活动 */
.pds-active{
  line-height: 1.06rem;
  padding-top: 1rem;
  padding-bottom: 0.625rem;
  background: #fff;
  font-size: 0.75rem;
  /* margin: 0.25rem 0.875rem; */
  padding: 0.25rem 0.875rem;
  border-top: 1px solid #ddd;
}
.layout-indent{
  position: relative;
  margin-left: 2.718rem;
}
.indent-word{
  color: #999;
  position: absolute;
  left: -2.718rem;
  width: 2.718rem;
}
.indent-content .info a{
  color: #cc3314;
  line-height: 1.4rem;
}
/* 规格 */
.pds-sku{
  background-color: #fff;
  margin-top: 0.625rem;
  font-size: 0.812rem;
  padding: 0 0.875rem;
}
.sku-box{
  margin: 0 -0.625rem;
  padding: 1.125rem 0;
  overflow: hidden;
}
.sku-head{
  margin-left: 0.625rem;
  margin-bottom: 0.312rem;
}
.sku-selected{
  color:#943579;
  margin-left: 0.312rem;
  font-weight: 400;
}
.item-selected{
  color: #522555;
  border: 1px solid #522555;
}
.item-select{
  color: #333333;
  border: 1px solid #e0e0e0;
}
.attr-item{
  position: relative;
  float: left;
  padding: 0.625rem 1.25rem;
  margin: 0.625rem 0 0 0.625rem;
}
/* 数量 */
.product-qty{
  line-height: 1.875rem;
  margin-top: 0.625rem;
  padding-top: 1rem;
  padding-bottom: 0.625rem;
  background: #fff;
  font-size: 0.75rem;
}
/* 服务 */
.pds-service-info{
  line-height: 2.593rem;
  margin-top: 0.625rem;
  background: #fff;
  font-size: 0.75rem;
}

</style>