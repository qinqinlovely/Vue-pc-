<template>
    <div>
        <van-swipe class="my-swipe" :autoplay="3000" indicator-color="#522555">
            <router-link to="/me">
                <van-swipe-item>
                    <img src="../assets/banner/banner1.jpg" alt="">
                </van-swipe-item>
            </router-link>
            <router-link to="/me">
                <van-swipe-item>
                    <img src="../assets/banner/banner2.jpg" alt="">
                </van-swipe-item>
            </router-link>
            <router-link to="/me">
                <van-swipe-item>
                    <img src="../assets/banner/banner3.jpg" alt="">
                </van-swipe-item>
            </router-link>
            <router-link to="/me">
                <van-swipe-item>
                    <img src="../assets/banner/banner4.jpg" alt="">
                </van-swipe-item>
            </router-link>
            <router-link to="/me">
                <van-swipe-item>
                    <img src="../assets/banner/banner5.jpg" alt="">
                </van-swipe-item>
            </router-link>
            <router-link to="/me">
                <van-swipe-item>
                    <img src="../assets/banner/banner6.jpg" alt="">
                </van-swipe-item>
            </router-link>
        </van-swipe>
    </div>
</template>

<style>
.my-swipe .van-swipe-item {
    color: #fff;
    text-align: center;
  }
.my-swipe .van-swipe-item img{
    width: 375px;
    height: 160px;
    line-height: 160px;
}
</style>
