class Node
    attr_accessor :data,:next
  
    def initialize(data,next_node)
      @data = data
      @next = next_node
    end
end
  
class Linked_List
    attr_accessor :head
  
    def initialize
      @head = nil
    end
  
    
    def is_empty?
      if @head == nil
        return true
      else
        return false
      end
    end
  
    def append(val)
      if is_empty?
        @head = Node.new(val,nil)
      else
        current_node = @head
        new_node = Node.new(val,nil)
        while current_node.next != nil
          current_node = current_node.next
        end
        current_node.next = new_node
      end
    end
  
    def prepend(val)
      if is_empty?
        @head = Node.new(val,nil)
      else
        current_head = Node.new(val,nil)
        current_head.next = @head
        @head = current_head
      end
    end
  
    def count
      if is_empty?
        return 0
      else
        current_node = @head
        start = 1
        while current_node.next != nil
          current_node = current_node.next
          start += 1
        end
        return start
      end
    end
  
    def head
      if is_empty?
        return nil
      else
        current_node = @head
        return current_node.data
      end
    end
  
    def tail
      if is_empty?
        tail = nil
      else
        current_node = @head
        while current_node.next != nil
          current_node = current_node.next
          if current_node.next == nil
            tail = current_node.data
          end
        end
        return tail
      end
    end
  
    def at(idx)
      if is_empty? || idx >= count
        return nil
      else
        current_node = @head
        if idx == 0
          return current_node.data
        else
          count = 0
          while count != idx
            current_node = current_node.next
            count += 1
          end
          return current_node.data
        end
      end
    end
  
    def pop
      if is_empty?
        return nil
      end
  
      if @head.next.nil?
        popped_node = @head
        @head = nil
      else
        current_node = @head
        while current_node.next.next != nil
          current_node = current_node.next
        end
        popped_node = current_node.next
        current_node.next = nil
      end
      return popped_node.data
    end
  
    def contains?(val)
      if is_empty?
        return false
      else
        current_node = @head
        if current_node.data == val
          return true
        else     
          while current_node != nil
            return true if current_node.data == val
            current_node = current_node.next
          end
          return false
        end
      end
    end
  
    def find(val)
      if is_empty?
        return nil
      elsif contains?(val) == false
        return nil
      else
        current_node = @head
        idx = 0
        if current_node.data == val
          idx = 0
        else
          while current_node.data != val
            idx += 1
            current_node = current_node.next
          end
        end
        return idx
      end
    end
  
    def to_s
      if is_empty?
        return nil
      else
        new_arr = []
        current_node = @head
        # new_arr.append(current_node.data)
        while current_node != nil
          new_arr.append(current_node.data)
          current_node = current_node.next
        end
        p new_arr
        str = ""
        new_arr.each do |elem|
          str += "#{elem} -> " 
        end
        puts str + "nil"
      end
    end
end
  
  
  
        
  
      
      