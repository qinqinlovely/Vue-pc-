<template>
  <div>
    <mt-header title="手机注册" class="header">
      <router-link to="/me" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>

    <van-form @submit="onSubmit" class="form">
      <van-field
        v-model="username"
        name="用户名"
        placeholder="用户名"
        :rules="[{ required: true, message: '请输入常用手机' }]"
      ></van-field>
      <van-field
        v-model="password"
        type="password"
        name="密码"
        placeholder="密码"
        :rules="[{ required: true, message: '请输入图形验证码' }]"
      />

      <div style="margin: 16px">
        <van-button
          block
          native-type="submit"
          style="background-color: #ccc; color: white"
          >立即注册</van-button
        >
      </div>
    </van-form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: "",
      password: "",
    };
  },
  methods: {
    onSubmit(values) {
      this.$router.push("/");
    },
  },
};
</script>

<style scoped>
.header {
  height: 44px;
  font-size: 18px;
  background: #fff;
  color: #212121;
  border-bottom: 1px solid #e0e0e0;
}
.shortcut a {
  text-decoration: none;
  color: #000;
}

.form {
  padding: 1.25rem 1rem;
}
</style>