<template>
        <div class="index-choice">
            <div class="popular-title">畅销推荐</div>
            <!-- 选项卡部分 -->
            <van-tabs>
                <van-tab v-for="index in 6" :key="index" :title="'选项'+index">内容{{index}}</van-tab>
            </van-tabs>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <div>111</div>
            <router-link to="/">
                <span>查看更多</span>
            </router-link>
            <div>111111</div>
            <div>111111</div>
            <div>111111</div>
            <div>111111</div>
            <div>111111</div>
            <div>111111</div>
            <div>111111</div>
            <div>111111</div>
            <div>111111</div>
            <div>111111</div>
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
    width: 94%;
    line-height: 2.5rem;
    background: #fff;
    margin: 0.625rem 0 1.56rem;
    padding: 0 10px;
    overflow: hidden;
}
.index-choice a span{
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