# aA-homework
#ex 1: stack
class Stack
    attr_reader :ivar
    def initialize
        @ivar = []
    end

    def push(el)
      ivar.push(el)
    end

    def pop
      ivar.pop
    end

    def peek
      ivar.last
    end
  end

  #ex 2: queue

  class Queue
    attr_reader :queue 
    def initialize 
        @queue = []
    end

    def enqueue(el)
        queue.unshift(el)
    end

    def dequeue
        queue.pop 
    end

    def peek
        queue.first
    end
  end

  class Map
    attr_reader :map
    def initialize 
        @map = Hash.new(0)
    end

    def set (key, value)
        map[key] = value
    end

    def get(key)
        map.each do |k, v|
            return k, v if k == key
        end
        nil
    end

    def delete(key)
       map.reject! {|k, v| k == key} 
    end

    def show
        dupe = Hash.new(0)
        @map.each do |k, v|
            dupe[k] = v
        end
        dupe
    end
  end




