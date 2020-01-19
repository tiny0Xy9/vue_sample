<template>
  <v-form
    ref="form"
    v-model="valid"
    lazy-validation
  >
    <v-text-field
      v-model="title"
      :counter="10"
      :rules="titleRules"
      label="タイトル"
      required
    ></v-text-field>

    <v-text-field
      v-model="target"
      :rules="targetRules"
      label="ターゲット"
      required
    ></v-text-field>

       
    <v-text-field
      v-model="story"
      :rules="storyRules"
      label="ストーリー"
      required
    ></v-text-field>

    <v-select
      v-model="select"
      :items="items"
      :rules="[v => !!v || 'Item is required']"
      label="カテゴリ"
      required
    ></v-select>

    <v-btn
      :disabled="!valid"
      color="success"
      class="mr-4"
      @click="validate"
    >
      Validate
    </v-btn>

      <v-btn
      :disabled="!valid"
      color="success"
      class="mr-4"
      @click="validate"
    >
      Save
    </v-btn>

  </v-form>

  
</template>

<script>
  export default {
    data: () => ({
      valid: true,
      title: '',
      titleRules: [
        v => !!v || 'Name is required',
        v => (v && v.length <= 100) || 'title must be less than 100 characters',
      ],
      target: '',
      targetRules: [
        v => !!v || 'Target is required'
      ],
      select: null,
      items: [
        'エンジニア',
        'プログラミング',
        '学習',
        'フリーランス',
      ],
      story: '',
      storyRules:[
        v => !!v || 'Name is required',
        v => (v && v.length <= 100) || 'title must be less than 100 characters',
      ],
      checkbox: false,
    }),

    methods: {
      validate () {
        if (this.$refs.form.validate()) {
          this.snackbar = true
        }
      },
      save () {
       //save logic dispatch for store
      },
    },
  }
</script>