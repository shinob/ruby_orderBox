class KmrCustomers < Model
  
  def initialize()
    set_value($db, "kmrcustomers")
    @name = "customer"
  end
  
  def show(id)
    
    vals = get_data_by_id(id)
    #vals["user_id"] = $usr.get_disp_name(vals["user_id"])
    return get_show_form(vals)
    
  end
  
  def edit(id)
    
    vals = get_data_by_id(id)
    return get_edit_form(vals)
    
  end
  
  def add()
    
    vals = get_blank_data()
    return get_edit_form(vals)
    
  end
  
  def find(word)
    
    #sql = "SELECT * FROM #{@table} WHERE title LIKE '%#{word}%' OR tags LIKE '%#{word}%' ORDER BY task_date"
    vals = @db.query(sql)
    
    return get_list_table(vals)
    
  end
  
  def list_all()
    
    return get_list_table(get_data())
    
  end
  
  def get_list_table(vals)
    
    html = ""
    
    color = "#EEE"
    cnt = 1
    
    vals.each do |row|
      
      id = row["id"]
      name = row["name"]
      note = row["note"]
      
      html += <<EOF
<div class="customer">
  <form method="post" name="item_#{id}">
    <input type="hidden" name="id" value="#{id}">
    <input type="hidden" name="mode" value="edit_customer">
    <div onClick="document.item_#{id}.submit();">[編集]</div>
  </form>
  <div class="name">#{name}</div>
  <div class="note">#{note}</div>
  <br style="clear: both;" />
</div>
EOF

      cnt += 1
      
    end
    
    if html != "" then
      html = "<div class='list'>#{html}</div>"
    end
    
    return html
    
  end
  
end
    
