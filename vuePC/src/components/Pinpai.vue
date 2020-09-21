<template>
    <div class="index-choice">
        <div  class="popular-title">精选品牌</div>
        <router-link to="/">
            <img src="../assets/pinpai.jpg" alt="">
        </router-link>
        <van-grid class="select-brand" :column-num="4">
            <van-grid-item v-for="value in 8" :key="value">
                <van-image class="van-grid-item__content" src="../assets/pinpai/burberry.jpg"/>
            </van-grid-item>
        </van-grid>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
        <div>11111</div>
    </div>
</template>

<style scoped>
.index-choice{
    background: #fff;
    margin-top: 0.625rem;
    padding-left: 2px;
    overflow: hidden;
}
.popular-title{
    font-size: 1.06rem;
    color: #333;
    text-align: center;
    font-weight: 700;
    line-height: 1.06rem;
    font-family: PingFangSC-Medium;
    padding-top: 1.56rem;
    margin-bottom: 1.25rem;
}
.index-choice a{
    display: block;
    width: 100%;
    height: 10rem;
}
.index-choice a img{
    width: 100%;
    height: 100%;
}
.select-brand{
    height: 6.68rem;
    padding-left: 0.9rem;
    padding-top: 1.09rem;
}
.van-grid-item__content{
    padding: 0 0;    
}
</style>