<template>
  <div>
    <van-dropdown-menu>
      <van-dropdown-item title="排序" v-model="value" :options="option1" />
      <van-dropdown-item title="品牌" v-model="value" :options="option2" />
      <van-dropdown-item title="分类" v-model="value" :options="option3" />
      <van-dropdown-item title="筛选" ref="item">
        <van-cell center title="包邮">
          <template #right-icon>
            <van-switch v-model="switch1" size="24" active-color="#ee0a24" />
          </template>
        </van-cell>
        <van-cell center title="团购">
          <template #right-icon>
            <van-switch v-model="switch2" size="24" active-color="#ee0a24" />
          </template>
        </van-cell>
        <div style="padding: 5px 16px;">
          <van-button type="danger" block round @click="onConfirm">
            确认
          </van-button>
        </div>
      </van-dropdown-item>
    </van-dropdown-menu>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value: 0,
      switch1: false,
      switch2: false,
      option1: [
        { text: '综合排序', value: 0 },
        { text: '销量从高到低', value: 1 },
        { text: '价格从低到高', value: 2 },
        { text: '价格从高到低', value: 3 },
        { text: '最新上架商品', value: 4 },
        { text: '折扣从低到高', value: 5 },
      ],
      option2: [
        { text: 'Burberry', value: 0 },
        { text: 'VERSACE', value: 1 },
        { text: 'HERMES', value: 2 },
        { text: 'TOM FORD', value: 3 },
        { text: 'GUCCI', value: 4 },
        { text: 'Dior', value: 5 },
      ],
      option3: [
        { text: '全部分类', value: 0 },
        { text: '香水浓度', value: 1 },
        { text: '香调', value: 2 },
        { text: '适用人群', value: 3 },
        { text: '使用场景', value: 4 },
        { text: '小众香水', value: 5 },
        { text: '香氛香薰', value: 6 },
        { text: '套装礼盒', value: 7 },
      ],
    };
  },
  methods: {
    onConfirm() {
      this.$refs.item.toggle();
    },
  },
}
</script>