=begin
Breadth First Search Algorithm

Time Complexity:
  Worst case performance - O(|E|) = O(b^d)
  Worst case space complexity - O(|V|) = O(b^d)
=end

require_relative 'node'

class BFS
  def enqueue queue, obj
    queue.push(obj)
  end
  
  def dequeue queue
    queue.pop()
  end
  
  def do_bfs queue
    visited = {queue.first => true}
    while !queue.empty? do
      root_node = queue.pop
      queue.each do |child_node|
        if visited[child_node] != true
          puts child_node
          queue.push(rand(0..1))
          visited[child_node] = true
        end
      end
    end
  end
end
