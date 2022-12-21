<template>
  <div>
    <b-container>
      <b-row class="my-1">
        <!-- 사번 -->
        <b-col sm="2">
          <label>사번:</label>
        </b-col>
        <b-col sm="10">
          <b-form-input placeholder="사번입력"></b-form-input>
        </b-col>
        <!-- 이름 -->
        <b-col sm="2">
          <label>이름:</label>
        </b-col>
        <b-col sm="10">
          <b-form-input placeholder="Enter your name"></b-form-input>
        </b-col>
        <!-- 비밀번호 -->
        <b-col sm="2">
          <label>비밀번호:</label>
        </b-col>
        <b-col sm="10">
          <b-form-input placeholder="Enter your name"></b-form-input>
        </b-col>
        <!-- 직급 -->
        <b-col sm="2">
          <label>직급:</label>
        </b-col>
        <b-col sm="10">
          <div>
            <b-form-select
              v-model="getEmployee.positionId"
              :options="positionOptions"
            ></b-form-select>
          </div>
        </b-col>
        <!-- 전화번호 -->
        <b-col sm="2">
          <label>전화번호:</label>
        </b-col>
        <b-col sm="10">
          <b-form-input placeholder="Enter your name"></b-form-input>
        </b-col>
        <!-- 주소 -->
        <b-col sm="2">
          <label>주소:</label>
        </b-col>
        <b-col sm="10">
          <b-form-input placeholder="Enter your name"></b-form-input>
        </b-col>

        <!-- 생일 -->
        <b-col sm="2">
          <!-- 생일은 반드시 4자리 -->
          <label>생년월일:</label>
        </b-col>
        <b-col sm="10">
          <b-form-datepicker
            id="example-datepicker"
            v-model="getEmployee.birth"
            class="mb-2"
          ></b-form-datepicker>
        </b-col>

        <!-- 사진? -->
        <b-col sm="2">
          <label>사진?:</label>
        </b-col>
        <b-col sm="10">
          <b-form-input placeholder="Enter your name"></b-form-input>
        </b-col>
        <!-- 상태 -->
        <b-col sm="2">
          <label>상태:</label>
        </b-col>
        <b-col sm="10">
          <div>
            <b-form-select
              v-model="getEmployee.state"
              :options="stateOptions"
            ></b-form-select>
          </div>
        </b-col>
        <!-- 접근 권한 -->
        <b-col sm="2">
          <label>접근권한:</label>
        </b-col>
        <b-col sm="10">
          <div>
            <b-form-select
              v-model="getEmployee.accessLevel"
              :options="accessLevelOptions"
            ></b-form-select>
          </div>
        </b-col>
      </b-row>

      <b-button>사원등록</b-button>
    </b-container>
  </div>
</template>

<script>
import { mapGetters } from "vuex";

export default {
  name: "EmCreate",
  // components: {},
  data() {
    return {
      ...mapGetters(["getEmployee"]),
      positionOptions: [
        { value: 1, text: "사원" },
        { value: 2, text: "대리" },
        { value: 3, text: "과장" },
        { value: 4, text: "차장" },
        { value: 5, text: "부장" },
      ],
      stateOptions: [
        { value: 1, text: "입사" },
        { value: 2, text: "퇴사" },
        { value: 3, text: "휴가" },
      ],
      accessLevelOptions: [
        { value: 1, text: "사원급" },
        { value: 2, text: "대리급" },
        { value: 3, text: "과장급" },
        { value: 4, text: "차장급" },
        { value: 5, text: "부장급" },
      ],
    };
  },
};
</script>

<style></style>
