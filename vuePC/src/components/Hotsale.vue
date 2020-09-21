<template>
        <div class="index-choice">
            <div class="index-title">热卖排行榜</div>
            <ul class="hot-list">
                <li class="products-item">
                    <router-link to="/">
                        <img src="../assets/products/bvlgari.jpg" alt="">
                        <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
                        <div class="product-price">
                            <span class="price_now">$55.99</span>
                            <span class="price_was">$88.00</span>
                        </div>
                        <div class="price">参考价：￥378.44</div>
                        <button class="cart"></button>
                    </router-link>
                </li>
                <li class="products-item">
                    <router-link to="/">
                        <img src="../assets/products/bvlgari.jpg" alt="">
                        <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
                        <div class="product-price">
                            <span class="price_now">$55.99</span>
                            <span class="price_was">$88.00</span>
                        </div>
                        <div class="price">参考价：￥378.44</div>
                        <button class="cart"></button>
                    </router-link>
                </li>
                <li class="products-item">
                    <router-link to="/">
                        <img src="../assets/products/bvlgari.jpg" alt="">
                        <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
                        <div class="product-price">
                            <span class="price_now">$55.99</span>
                            <span class="price_was">$88.00</span>
                        </div>
                        <div class="price">参考价：￥378.44</div>
                        <button class="cart"></button>
                    </router-link>
                </li>
                <li class="products-item">
                    <router-link to="/">
                        <img src="../assets/products/bvlgari.jpg" alt="">
                        <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
                        <div class="product-price">
                            <span class="price_now">$55.99</span>
                            <span class="price_was">$88.00</span>
                        </div>
                        <div class="price">参考价：￥378.44</div>
                        <button class="cart"></button>
                    </router-link>
                </li>
                <li class="products-item">
                    <router-link to="/">
                        <img src="../assets/products/bvlgari.jpg" alt="">
                        <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
                        <div class="product-price">
                            <span class="price_now">$55.99</span>
                            <span class="price_was">$88.00</span>
                        </div>
                        <div class="price">参考价：￥378.44</div>
                        <button class="cart"></button>
                    </router-link>
                </li>
                <li class="products-item">
                    <router-link to="/">
                        <img src="../assets/products/bvlgari.jpg" alt="">
                        <div class="base-name">【陈伟霆/赤西仁同款】BVLGARI 宝格丽 大吉岭夜色（夜幽）男士淡香水 EDT 100ml</div>
                        <div class="product-price">
                            <span class="price_now">$55.99</span>
                            <span class="price_was">$88.00</span>
                        </div>
                        <div class="price">参考价：￥378.44</div>
                        <button class="cart"></button>
                    </router-link>
                </li>
            </ul>
        </div>
</template>

<style scoped>
/* 热卖排行榜 */
.index-choice{
    background: #fff;
    margin-top: 0.625rem;
    padding-left: 2px;
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
.hot-list{
    background: #fff;
}
.products-item{
    box-sizing: border-box;
    margin-bottom: 0.625rem;
    margin-left: 0.625rem;
    width: 10.7rem;
    height: 17.2rem;
    float: left;
    text-align: center;
    padding: 0 0.625rem;
}
.products-item img{
    width: 7.59rem;
    height: 7.59rem;
    margin: 1.37rem auto 0;
}
.base-name{
    display: -webkit-box;
    height: 2.43rem;
    width: 9.7rem;
    margin: 1rem 0 0.25rem 0;
    text-overflow: ellipsis;
    color: #212121;
    text-align: left;
    line-height: 1.25rem;
    overflow: hidden;
    font-size: 0.875rem;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.product-price{
    padding-top: 1.25rem;
    text-align: left;
}
.product-price span{
    display: inline-block;
    color: #333;
    text-align: left;
    font-family: PingFangSC-Medium;
}
.product-price .price_now{
    font-size: 1rem;
    font-weight: 700;
}
.product-price .price_was{
    color: #999;
    padding-top: 0.25rem;
    text-decoration: line-through;
    font-size: 0.75rem;
    padding-left: 5px;
}
.price{
    text-align: left;
    font-size: 0.75rem;
    color: #999;
    margin-top: 0.5rem;
}
</style>