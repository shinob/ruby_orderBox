class Controller

  def initialize()
    @style = ""
    @page_title = ""
    @title = ""
    @foot = ""
    @menu = ""
  end
  
  def main()
    
    @menu += $usr.get_logout_form()
    html = "Controller.main()"
    
    return html
    
  end
  
  def output(html)
    
    wk = {
      "style" => @style,
      "page_title" => @page_title,
      "title" => @title,
      "menu" => @menu,
      "cont" => html,
      "foot" => @foot
    }
    
    html = load_template(wk, "page.html")
    puts html
    
  end
  
  def index()
    
    if $usr.is_login() then
      html = main()
    else
      html = $usr.get_login_form()
      @title = "ログイン"
    end
    
    output(html)
    
  end
  
  def make_menu_form(name, caption)
    html = <<EOF
<div onClick="document.#{name}.submit();">
<form method="post" name="#{name}">
  <input type="hidden" name="mode" value="#{name}" />
  <p
  onMouseOver="this.style.color='red';"
  onMouseOut="this.style.color='white';"
  onClick="this.style.color='white';"
  >#{caption}</p>
</form>
</div>
EOF
    return html
  end
  

end

