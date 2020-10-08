<template>
  <div>
    <!-- 顶部 -->
    <div class="head">
      <router-link to="/" slot="left">
          <mt-button class="leftbtn" icon="back"></mt-button>
      </router-link>
      <van-search
        shape="round"
        v-model="value"
        show-action
        placeholder="请输入搜索关键词"
        @search="onSearch"
        @cancel="onCancel"
      />
    </div>
    <dropdownmenu></dropdownmenu>

    <!-- 商品列表 -->
    <van-card v-for="(item,index) in hotsale" :key="index"
      :price="item.price"
      :title="item.title"
      :thumb="item.pic_sm"
    >
      <template #tags>
        <van-tag plain type="danger">{{item.count}}折</van-tag>
      </template>
    </van-card>
  
      <van-card
      num="2"
      price="2.00"
      desc="描述信息"
      title="商品标题"
      thumb="https://img.yzcdn.cn/vant/ipad.jpeg"
    >
      <template #tags>
        <van-tag plain type="danger">标签</van-tag>
        <van-tag plain type="danger">标签</van-tag>
      </template>
    </van-card>
  </div>
</template>

<script>
import { Toast } from 'vant';
import dropdownmenu from "../dropdownmenu";
export default {
 data() {
    return {
      value: '',
      hotsale: [],
    };
  },
  mounted() {
    this.axios.get("/hotsale").then((res) => {
      let data = res.data.results;
      data.forEach((item) => {
        item.pic_sm = require("../../assets/products/" + item.pic_sm);
        this.hotsale.push(item);
      });
    });
  },
  methods: {
    onSearch(val) {
      Toast(val);
    },
    onCancel() {
      Toast('取消');
    },
  },


components:{dropdownmenu}
}
</script>

<style scoped>
.van-search{
  width: 88%;
  float: right;
  padding: 5px 0 0 0;
}
.leftbtn{
  background-color: #fff;
  border: none;
}
.head{
  height: 44px;
}
.van-card__title{
    color: #333;
    font-weight: 600;
    font-size: .26rem;
    margin-bottom: 15px;
}
</style>