class OrderBox < Controller
  
  def initialize()
    
    super()
    @page_title = "オーダーボックス"
    
  end
  
  def main()
  	
  	html = ""
  	
    prod = KmrProducts.new()
    
    mode = $_POST["mode"]
    id = $_POST["id"].to_i
    
    @menu += $usr.get_logout_form()
    
    case mode
    when "list_product"
      html = prod.list_all()
      @title = "商品一覧"
      @menu += menu_for_products()
    when "edit_product"
      html = prod.edit(id)
      @title = "商品編集"
      @menu += menu_for_products()
    when "add_product"
      html = prod.add()
      @title = "商品追加"
      @menu += menu_for_products()
    when "apply_product"
      debug($_POST.to_s)
      id = prod.apply($_POST)
      html = prod.list_all()
      @title = "商品一覧"
      @menu += menu_for_products()
    else
      #html = prod.list_all()
      html = load_template({}, "main_menu.html")
      @title = "メインメニュー"
      #@menu += menu_for_products()
    end
    
    return html
    
  end
  
  def menu_for_products()
    tmp = ""
    tmp += menu_main_menu()
    tmp += menu_list_product()
    tmp += menu_add_product()
    return tmp
  end
  
  def menu_list_product()
    return make_menu_form("list_product", "商品一覧")
  end
  
  def menu_add_product()
    return make_menu_form("add_product", "商品追加")
  end
  
  def menu_main_menu()
    return make_menu_form("main_menu", "メインメニュー")
  end
  
end

