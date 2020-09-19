<template>
    <div>
        <!-- 顶部搜索框start -->
        <div class="head">
            <router-link to="/">
                <img src="../assets/index/logo.png" alt="" class="logoimg">
            </router-link>
            <router-link to="/search">
                <van-search placeholder="一生之水" class="search" shape="round"></van-search>       
            </router-link>       
        </div>
        <!-- 顶部搜索框end -->
        <!-- 轮播图 -->
        <carousel></carousel>
    </div>
</template>

<script>
import Carousel from '../components/Carousel'
export default {
    components:{ Carousel }
}
</script>

<style scoped>
.head{
    height: 44px
}
.search{
    width: 55%;
    height: 25px;
    outline: none;
    margin-top: 10px;
    float: right;
}
.logoimg{
    width: 138px;
    height: 26px;
    margin:10px 0px 0px 20px;
}
</style>