module Rapidfire
  module ApplicationHelper
    def render_answer_form_helper(answer, form, step = nil, last_step = nil)
      partial = answer.question.type.to_s.split("::").last.downcase
      render partial: "rapidfire/answers/#{partial}", locals: { f: form, answer: answer, step: step, last_step: last_step}
    end

    def checkbox_checked?(answer, option)
      answers_delimiter = Rapidfire.answers_delimiter
      answers = answer.answer_text.to_s.split(answers_delimiter)
      answers.include?(option)
    end
  end
end
