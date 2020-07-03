const ShopUIApp = new Vue({
  el: "#ISRP_Garage_UI",

  data: {
    // Vehicle Shop
    showShopMenu: false,
    // Arrays
    currentPage: "Drinks",
    pages: ["Drinks", "Food", "Auto Care", "Misc"],

    StoreShop: [],
  },

  methods: {
    ///////////////////////////////////////////////////////////////////////////
    // Shop
    ///////////////////////////////////////////////////////////////////////////
    OpenShopMenu(items) {
      this.StoreShop = items;
      this.showShopMenu = true;
    },

    CloseShopMenu() {
      this.showShopMenu = false;
      axios.post("http://drp_shops/close_shop", {})
      .catch(error => {
        console.log(error);
      });
    },
    ChangePage(page) {
      this.currentPage = page;
    },

    BuyThisItem(selectedItem, price) {
      axios.post("http://drp_shops/Buy_item", {
        selectedItem: selectedItem,
        price: price,
      })
      .catch(error => {
        console.log(error);
      });
    },

    ResetButtons(both) {
      if (both) {
        this.currentPage = "Drinks"
      }
    },

    numberformat(value) {
      let val = (value/1).toFixed(0).split('.')
      return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
    }
  },
});

// Listener from Lua CL
document.onreadystatechange = () => {
  if (document.readyState == "complete") {
    window.addEventListener("message", event => {
      if (event.data.type == "open_shop_menu") {
        ShopUIApp.OpenShopMenu(event.data.items);
      }
    });
  }
};