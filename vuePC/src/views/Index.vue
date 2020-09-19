<template>
    <div>
        <!-- 顶部搜索框start -->
        <div class="head">
            <router-link to="/">
                <img src="../assets/head/logo.png" alt="" class="logoimg">
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
                        <img src="../assets/in-category/xiangshui.png" alt="">
                    </router-link>
                    <router-link to="/" class="category-title">香水香氛</router-link>
                </li>
                <li>
                    <router-link to="/">
                        <img src="../assets/in-category/mianbu.png" alt="">
                    </router-link>
                    <router-link to="/" class="category-title">面部护理</router-link>
                </li>
                <li>
                    <router-link to="/">
                        <img src="../assets/in-category/jifu.png" alt="">
                    </router-link>
                    <router-link to="/" class="category-title">肌肤护理</router-link>
                </li>
                <li>
                    <router-link to="/">
                        <img src="../assets/in-category/meizhuang.png" alt="">
                    </router-link>
                    <router-link to="/" class="category-title">人气美妆</router-link>
                </li>
                <li>
                    <router-link to="/">
                        <img src="../assets/in-category/xiangxun.png" alt="">
                    </router-link>
                    <router-link to="/" class="category-title">香薰蜡烛</router-link>
                </li>
                <li>
                    <router-link to="/">
                        <img src="../assets/in-category/xinpin.png" alt="">
                    </router-link>
                    <router-link to="/" class="category-title">新品上线</router-link>
                </li>
                <li>
                    <router-link to="/">
                        <img src="../assets/in-category/xihu.png" alt="">
                    </router-link>
                    <router-link to="/" class="category-title">洗护造型</router-link>
                </li>
                <li>
                    <router-link to="/">
                        <img src="../assets/in-category/xiangshui.png" alt="">
                    </router-link>
                    <router-link to="/" class="category-title">礼盒套装</router-link>
                </li>
            </ul>
        </div>

        <!-- 热销排行榜开始 -->
        <div class="index-choice">
            
        </div>
        <!-- 热销排行榜结束 -->


        <!-- 底部选项卡开始 -->
        <van-tabbar v-model="active" active-color="#522555">
            <van-tabbar-item>
                <span>主页</span>
                <img slot="icon" slot-scope="props" :src="props.active ? icon.active : icon.inactive" />
            </van-tabbar-item>
             <van-tabbar-item>
                <span>分类</span>
                <img slot="icon" slot-scope="props" :src="props.active ? icon.active2 : icon.inactive2" />
            </van-tabbar-item>
            <van-tabbar-item>
                <span>品牌</span>
                <img slot="icon" slot-scope="props" :src="props.active ? icon.active3 : icon.inactive3" />
            </van-tabbar-item>
            <van-tabbar-item  badge="3">
                <span>购物车</span>
                <img slot="icon" src="../assets/tabbar/gouwuche.png" />           
            </van-tabbar-item>
            <van-tabbar-item>
                <span>个人中心</span>
                <img slot="icon" src="../assets/tabbar/me.png" />           
            </van-tabbar-item>
        </van-tabbar>
        <!-- 底部选项卡结束 -->
    </div>
</template>

<script>
import Carousel from '../components/Carousel'
export default {
    data(){
        return{
            active:0,
            icon: {
                active: require("../assets/tabbar/zhuye-onfocus.png"),
                inactive: require("../assets/tabbar/zhuye-focus.png"),
                active2: require("../assets/tabbar/fenlei-onfocus.png"),
                inactive2: require("../assets/tabbar/fenlei-focus.png"),
                active3: require("../assets/tabbar/pinpai-onfocus.png"),
                inactive3: require("../assets/tabbar/pinpai-focus.png"),
            },
        }
    },
    components:{ Carousel }
}
</script>

<style scoped>
.head{
    height: 2.75rem;
}
.search{
    width: 55%;
    height: 25px;
    outline: none;
    margin-top: 10px;
    float: right;
}
.logoimg{
    width: 8.625rem;
    height: 26px;
    margin:10px 0px 0px 20px;
}
.category{
    box-sizing: border-box;
    width: 100%;
    padding: 10px;
    width: 375px;
    height: 192px;
    margin: 0 auto;
}
ul,li{
    list-style: none;
}
.cate-list li{
    float: left;
    width: 25%;
    text-align: center;
    margin: 8px 0;
}
.cate-list li img{
    width: 3rem;
    height: 3rem;
    border-radius: 50%;
}
.category-title{
    display: block;
    margin-top: 5px;
    font-size: 12px;
    color: #333;
    text-align: center;
    width: 100%;
}
</style>