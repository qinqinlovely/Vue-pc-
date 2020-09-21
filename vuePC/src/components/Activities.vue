<template>
    <div class="index-choice">
        <div class="index-title">精选活动</div>
        <div class="index-activity-left">
            <router-link to="/">
                <img src="../assets/activities/huodong1.jpg" alt="">
            </router-link>
        </div>
        <div class="index-activity-right">
            <router-link to="/">
                <img class="img1" src="../assets/activities/huodong2.jpg" alt="">
            </router-link>
             <router-link to="/">
                <img src="../assets/activities/huodong3.jpg" alt="">
            </router-link>
        </div>
    </div>
</template>

<style scoped>
.index-choice{
    background: #fff;
    margin-top: 0.625rem;
    padding-bottom: 1.56rem;
    height: 17.82rem;
    overflow: hidden;
}
.index-title{
    font-size: 1.06rem;
    color: #333;
    text-align: center;
    font-weight: 700;
    line-height: 1.06rem;
    font-family: PingFangSC-Medium;
    padding-top: 1.56rem;
    margin-bottom: 1.25rem;
}
.index-activity-left{
    float: left;
    width: 9.37rem;
    height: 12.62rem;
    margin-left: 0.75rem;
}
.index-activity-left img{
    width: 9.37rem;
    height: 12.62rem;
}
.index-activity-right{
    float: right;
    width: 12.18rem;
    height: 12.62rem;
    margin-right: 0.75rem;
}
.index-activity-right img{
    width: 12.18rem;
    height: 6.125rem;
}
.index-activity-right .img1{
    margin-bottom: 0.2rem;
}

</style>