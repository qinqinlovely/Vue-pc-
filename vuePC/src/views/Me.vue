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
    <van-form @submit="onSubmit" class="form">
      <van-field
        v-model="username"
        name="用户名"
        placeholder="用户名"
        :rules="[{ required: true, message: '请填写用户名' }]"
      ></van-field>
      <van-field
        v-model="password"
        type="password"
        name="密码"
        placeholder="密码"
        :rules="[{ required: true, message: '请填写密码' }]"
      />
      <div style="margin: 16px;">
        <van-button block native-type="submit">提交</van-button>
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