class PreviewController < ApplicationController
  def show
    @pre_source = %q{#include<stdio>

int main() {
    puts("Hello 世界!");
    return 0;
}
}
  end
end
