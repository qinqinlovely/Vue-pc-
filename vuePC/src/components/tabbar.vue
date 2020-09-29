<template>
  <van-tabbar v-model="active" active-color="#522555" placeholder>
    <van-tabbar-item
      replace
      v-for="(item, index) in tabbarList"
      :key="index"
      :to="item.path"
    >
      <span>{{ item.title }}</span>
      <img
        slot="icon"
        slot-scope="props"
        :src="props.active ? item.active : item.normal"
      />
    </van-tabbar-item>

    <van-tabbar-item replace to="/cart" badge="3" id="cart">
      <span>购物车</span>
      <img slot="icon" src="../assets/tabbar/gouwuche.png" />
    </van-tabbar-item>
    <van-tabbar-item replace to="/me">
      <span>个人中心</span>
      <img slot="icon" src="../assets/tabbar/me.png" />
    </van-tabbar-item>
  </van-tabbar>
</template>

<script>
export default {
  name: "tabbar",
  data() {
    return {
      active: 0,
      tabbarList: [
        {
          path: "/",
          title: "主页",
          normal: require("../assets/tabbar/zhuye-focus.png"),
          active: require("../assets/tabbar/zhuye-onfocus.png"),
        },
        {
          path: "/category",
          title: "分类",
          normal: require("../assets/tabbar/fenlei-focus.png"),
          active: require("../assets/tabbar/fenlei-onfocus.png"),
        },
        {
          path: "/brand",
          title: "品牌",
          normal: require("../assets/tabbar/pinpai-focus.png"),
          active: require("../assets/tabbar/pinpai-onfocus.png"),
        },
      ],
    };
  },

  //监听路由变化
  watch: {
    $route(to) {
      this.activeTab(to.path);
    },
  },

  methods: {
    activeTab(path) {
      var index = this.tabbarList.map((item) => item.path).indexOf(path);
      if (index != -1) {
        this.active = index;
      }
    },
  },
};
</script>