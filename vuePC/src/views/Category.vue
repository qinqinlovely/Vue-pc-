<template>
    <div>
        <van-sidebar v-model="activeKey" @change="change" :active-name="sidebarItem">
            <van-sidebar-item name="aaa" title="新品上线" />
            <van-sidebar-item name="b" title="香水香氛" />
            <van-sidebar-item name="c" title="肌肤护理" />
            <van-sidebar-item title="洗护造型" />
            <van-sidebar-item title="人气美妆" />
            <van-sidebar-item title="礼盒套装" />
            <van-sidebar-item title="全部商品" />
        </van-sidebar>
        <div class="rightContent">
            <router-view></router-view>
        </div>
    </div>
</template>

<script>
import { Toast } from 'vant';
export default {
  name:"aaa",
  data() {
    return {
      sidebarItem:"",
      activeKey: 0,
    };
  },
  mounted(){
      this.sidebarItem=this.$route.name;
  },
  methods: {
    change(index){
        this.sidebarItem=name;
        this.$route.push({
            name:name,
        });             
    },
    changeSidebar(name){
        this.sidebarItem=name;
        // this.$route.push({
        //     name:name,
        // });
    }
  },
}
</script>

<style scoped>
.van-sidebar-item--select::before{
    height: 60px;
    background-color: #522555;
}
</style>

<style scoped>
.rightContent{
    float: right;
}
</style>