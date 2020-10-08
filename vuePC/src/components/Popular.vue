<template>
  <div class="index-choice">
    <div class="popular-title">畅销推荐</div>
    <!-- 选项卡部分 -->
    <van-tabs color="#522555" @click="onClick">
      <van-tab v-for="(item,index) in menu" :key="index" :title="item.name"></van-tab>
    </van-tabs>
    <!-- 内容 -->
    <div>
      <div :is="currentComp"></div>
    </div>

    <router-link to="/">
      <span class="more">查看更多</span>
    </router-link>
  </div>
</template>

<script>
import tab1 from "./tab1";
import tab2 from "./tab2";
import tab3 from "./tab3";
import tab4 from "./tab4";
import tab5 from "./tab5";
import tab6 from "./tab6";
export default {
  data() {
    return {
      currentComp:'tab1',
      menu:[
        {
          name:"平价香水",
          value:'1',
          comp:'tab1'
        },
        {
          name:"高颜值香水",
          value:'2',
          comp:'tab2'
        },
        {
          name:"面部护理",
          value:'3',
          comp:'tab3'
        },
        {
          name:"礼盒套装",
          value:'4',
          comp:'tab4'
        },
        {
          name:"人气美妆",
          value:'5',
          comp:'tab5'
        },
        {
          name:"身体洗护",
          value:'6',
          comp:'tab6'
        },
      ],
    };
  },
  methods:{
    onClick(index){
      switch (index){
        case 0: 
          this.currentComp='tab1'
          break;
        case 1:
          this.currentComp="tab2"
          break;
        case 2:
          this.currentComp="tab3"
          break;
        case 3:
          this.currentComp="tab4"
          break;
        case 4:
          this.currentComp="tab5"
          break;
        case 5:
          this.currentComp="tab6"
          break;
      }
    }
    
  },
  components:{
    tab1,tab2,tab3,tab4,tab5,tab6
  }
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
  background: #fff;
  margin: 0.625rem 0 1.56rem;
  padding: 0 10px;
  overflow: hidden;
}
.more {
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