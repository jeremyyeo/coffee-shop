{%- set roast_types = ['light', 'medium', 'dark'] -%}

{%- for r in roast_types -%}
    select {{ loop.index }} as id, '{{ r }}' as roast_type {% if not loop.last -%} union all {% endif %}
{% endfor %}
