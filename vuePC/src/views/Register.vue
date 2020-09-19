<template>
    <div>
        <mt-header title="手机注册" class="header">
            <router-link to="/me" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
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