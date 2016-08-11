module CandidatesHelper

  def candidates_table candidates
    content_tag(:table, nil, class: 'ui celled selectable table') { yield } unless candidates.empty?
  end

  def candidates_empty candidates
    content_tag(:div, 'Não há candidatos cadastrados.', class: 'ui info message') if candidates.empty?
  end

end
