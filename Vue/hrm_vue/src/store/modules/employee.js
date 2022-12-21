const employeeStore = {
  state: {
    employee: {
      id: null,
      name: null,
      password: null,
      departmentId: null,
      positionId: null,
      phoneNumber: null,
      address: null,
      birth: null,
      profile: null,
      state: null,
      accessLevel: null,
    },
  },
  getters: {
    // 사원 정보 가져오기
    getEmployee(state) {
      return state.employee;
    },
  },
  mutations: {
    // 사원정보 등록? -> 이건 action?
    // createEmployee(context) {},
  },
  actions: {},
};

export default employeeStore;
