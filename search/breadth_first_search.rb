=begin
Breadth First Search Algorithm

Time Complexity:
  Worst case performance  O(|E|) = O(b^d)
  Worst case space complexity O(|V|) = O(b^d)
=end


queue = Queue.new

graph = Array.new

p graph[],[] = {
            "0", "0", "0", "0","0", "0", "0", "0"
            "1", "1", "1", "1","1", "1", "1", "1"
            "2", "2", "2", "2","2", "2", "2", "2"
            "3", "3", "3", "3","3", "3", "3", "3"
        }

source = 0



def enqueue queue, obj
    queue.push(obj)
end

def dequeue
    queue.shift
end

def is_empty queue
    queue.length == 0
end

root_node = 0

n_nodes = 0

visited == false

def do_bfs graph, source, bfs_info
    i = 0

    while queue.length != 0
       dequeue
    end

    # bfs_info[source].distance = 0

    # puts bfs_info
end


