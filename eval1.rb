# Define evaluator of arithmetic expression
#
# Example
#
#   evaluate(3)                      # => 3
#   evaluate([:+, 1, 3])             # => 4
#   evaluate([:+, [:*, 3, 2], 4])    # => 10
#
# Keywords
#
# * Recursion
# * case
#
def evaluate(expr)
  case expr
  when Array
    case expr[0]
    when :+
      evaluate(expr[1]) + evaluate(expr[2])
    when :-
      evaluate(expr[1]) - evaluate(expr[2])
    when :*
      evaluate(expr[1]) * evaluate(expr[2])
    when :/
      evaluate(expr[1]) / evaluate(expr[2])
    end
  when Numeric
    expr
  end
end

# Define evaluator of arithmetic expression with variables
#
# Example
#
#   evaluateV({ x: 3 }, 3)                   # => 3
#   evaluateV({ x: 3 }, :x)                  # => 3
#   evaluateV({ x: 1 }, [:+, :x, [:-, 5, 3]) # => 3
#   evaluateV({ x: 4 }, [:+, :x, [:-, 5, 3]) # => 6
#
# Keywords
#
# * Recursion
# * case
#
def evaluateV(env, expr)
  case expr
  when Array
    case expr[0]
    when :+
      evaluateV(env, expr[1]) + evaluateV(env, expr[2])
    when :-
      evaluateV(env, expr[1]) - evaluateV(env, expr[2])
    when :*
      evaluateV(env, expr[1]) * evaluateV(env, expr[2])
    when :/
      evaluateV(env, expr[1]) / evaluateV(env, expr[2])
    end
  when Symbol
    env[expr]
  when Numeric
    expr
  end
end
