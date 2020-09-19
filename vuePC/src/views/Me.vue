<template>
    <div>
        <mt-header title="账户登录" class="header">
            <div slot="left" class="shortcut">
                <router-link to="/">
                    <mt-button icon="back"></mt-button>
                </router-link>
            </div>
            <div slot="right" class="shortcut">
                <router-link to="/register">注册</router-link>
            </div>
        </mt-header>
    </div>
</template>

<style scoped>
.header{
    height: 44px;
    font-size:18px;
    background: #fff;
    color: #212121;
    border-bottom: 1px solid #e0e0e0;
}
.shortcut a{
    text-decoration: none;
    color: #000;
}
</style>