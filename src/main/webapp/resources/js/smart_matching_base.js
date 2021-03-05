$('.select_all').on('click', UnderCheckboxChildren);
$(document).ready(function () {
    LeftContentResizing();
});

$(document).on('ScrollChange', function () {
    LeftContentResizing();
})


function LeftContentResizing(){
  var right_height = $('.content').height();
    $('.sidebar div ul').css('height', right_height);

}

  function LastCheckedRadioValueValidator($radio_boxes, checked_value){
      // radio box용 이전 값들 check 로직
      // $checkboxes = check 여부 처리할 checkbox list (Jquery)
      // checked_value = View에서 받아온 str ex) 'manpower_nothing'

      if (checked_value === undefined){
          return false;
      }
      $radio_boxes.each(function () {
         if ($(this).val() === checked_value) {
             $(this).prop('checked', true);
         }
      });
  }

  function LastCheckedValueValidator($checkboxes, checked_list) {
      // Checkbox용 이전 값들 check 로직
      // $checkboxes = check 여부 처리할 checkbox list (Jquery)
      // checked_list = View에서 받아온 str list ex) 'value1|value2|...'
      if (checked_list === undefined) {
          return
      }
      $checkboxes.each(function () {
          if (checked_list.indexOf($(this).val()) !== -1) {
              $(this).prop('checked', true);
          }
      });
  }

  function LastCheckedValueValidatorInBox($checkboxes, checked_list) {
      // Checkbox 내부에 checkbox가 있어서 추가로 chc
      // $checkboxes = check 여부 처리할 checkbox list (Jquery)
      // checked_list = View에서 받아온 str list ex) 'value1|value2|...'

      if (checked_list === undefined) {
          return
      }
      $checkboxes.each(function () {
          if (checked_list.indexOf($(this).val()) !== -1) {
              $(this).prop('checked', true);
              $(this).parent().prev('input[type="checkbox"]').prop('checked', true)
          }
      })


  }

function ChecboxEventHandler($checked, $non_checked, $select_trigger){
    // AllChckTrigger에서 전체 선택 내부 체크박스가 전부 클릭했을 때 &
    // 전체 클릭된 상태에서 내부 체크박스 하나가 체크해제 되었을 때 Event 처리

    if ($checked.length === $non_checked.length){
        $select_trigger.prop('checked', true);
    } else{
        $select_trigger.prop('checked', false);
    }
}

function Checked($elem){
    // $elem: jQuery element 정보 ( checkbox가 들어와야 함 )
    // $elem 의 checked 여부 확인, check or not 처리
    if ($elem.is(':checked')){
        $elem.prop('checked', false);
        return false;
    } else{
        $elem.prop('checked', true);
        return true;
    }
}


function AllCheckTrigger(is_checked, $children_){
    // 전체 선택 여부 확인 & 전체 선택 or not 처리
  if (is_checked){
      $children_.each (function () {
          $(this).prop('checked', true);
      });

  } else{
      $children_.each (function () {
          $(this).prop('checked', false);
      });

  }
}

function UnderCheckboxChildren(){
    // Checkbox Event Handler
    // 체크박스 전체선택은 2종류가 있으며, checkbox & labeled checkbox가 있다.

    var is_checked = Checked($(this).prev('input:checkbox'));
    var children_ = undefined;

    if ($(this).siblings('.radio_label_box').length === 0){
        //circle_set
        children_ = $(this).siblings('.circle_set').children('input:checkbox');

    }else{
        //checkbox_set
        children_ = $(this).siblings('.radio_label_box').children('input:checkbox');
    }
      AllCheckTrigger(is_checked, children_);
}



// 프로젝트 특성 Tab Event Handler
function CheckedAdder(){
  // 이전 값 체크여부 확인 & 내부 체크박스 체크여부 처리
  Checked($(this).prev('input:checkbox'));
  Checked($(this).children('input:checkbox'));

}

function PlanSpecCheckEventHandler(){
    // project_property_page.html 에서 사용하는 checkbox event
    var $plan_specs = $('input[name="plan_spec"]');
    var select_check_trigger = $plan_specs.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="plan_spec"]:checked'), $plan_specs, select_check_trigger);
}

function DetailCategoryEventHandler(){
    var $detail_category = $('input[name="detail_category"]');
    var select_check_trigger = $detail_category.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="detail_category"]:checked'), $detail_category, select_check_trigger);
}

function JobCategoryEventHandler(){
    var $job_category = $('input[name="job_category"]');
    var select_check_trigger = $job_category.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="job_category"]:checked'), $job_category, select_check_trigger);
}

// END

// 클라이언트 특성 Tab Event Handler
function CompanySizeCheckEventHandler(){
    // client_property_page 에서 사용하는 checkbox event
    var $company_size = $('input[name="company_size"]');
    var select_check_trigger = $company_size.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="company_size"]:checked'), $company_size, select_check_trigger);
}

function CompanyTypeCheckEventHandler(){
    // client_property_page 에서 사용하는 checkbox event
    var $company_type = $('input[name="company_type"]');
    var select_check_trigger = $company_type.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="company_type"]:checked'), $company_type, select_check_trigger);
}

// END

// 계약 조건 외주(도급) 프로젝트 Event Handler
function TaskBaseBudgetCheckEventHandler(){
    // agreement_condition_page 에서 사용하는 checkbox event
    var $task_base_budget = $('input[name="task_base_budget"]');
    var select_check_trigger = $task_base_budget.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="task_base_budget"]:checked'), $task_base_budget, select_check_trigger);

}

function TaskBasePeriodCheckEventHandler(){
    // agreement_condition_page 에서 사용하는 checkbox event
    var $task_base_period = $('input[name="task_base_period"]');
    var select_check_trigger = $task_base_period.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="task_base_period"]:checked'), $task_base_period, select_check_trigger);

}

function TaskBaseAfterCountEventHandler(){
    // agreement_condition_page 에서 사용하는 checkbox event
    var $task_base_after_count = $('input[name="task_base_after_count"]');
    var select_check_trigger = $task_base_after_count.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="task_base_after_count"]:checked'), $task_base_after_count, select_check_trigger);

}
// END

// 계약 조건 상주 프로젝트 Event Handler
function TermBaseBudgetCheckEventHandler(){
    var $term_base_budget = $('input[name="term_base_budget"]');
    var select_check_trigger = $term_base_budget.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="term_base_budget"]:checked'), $term_base_budget, select_check_trigger);

}

function TermBasePeriodCheckEventHandler(){
    var $term_base_period = $('input[name="term_base_period"]');
    var select_check_trigger = $term_base_period.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="term_base_period"]:checked'), $term_base_period, select_check_trigger);

}
function TermBaseStartWorkTimeCheckEventHandler(){
    var $term_base_start_work_time = $('input[name="term_base_start_work_time"]');
    var select_check_trigger = $term_base_start_work_time.parent().siblings('.select_check_trigger');
    ChecboxEventHandler($('input[name="term_base_start_work_time"]:checked'), $term_base_start_work_time, select_check_trigger);

}

// END

// 선호 기술 Event Handler

// END