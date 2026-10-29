// 꿈을 찾아서 웹 체험: 열쇠의 마지막 톱니 두 개를 채워 꿈 상자를 열어 본다.
// 꿈과 단계, 질문은 앱에 든 그대로다(TravelBucket.swift 의 '아이슬란드에서 오로라 보기', 글은 앱 번역 T.app).
// 앱처럼 단계마다 질문 셋에 답하면 톱니 하나가 채워지고, 톱니가 다 차면 상자를 연다. 답을 비워 두면 앱처럼 '확인함'으로 넘어간다.
(() => {
  const root = document.getElementById("demo");
  if (!root) return;
  const T = JSON.parse(root.dataset.text), A = T.app;
  const START = A.steps.length - 2;                   // 이미 마친 단계 수
  const fmt = (s, ...v) => { let i = 0; return s.replace(/%(?:(\d)\$)?d/g, (_, n) => v[n ? n - 1 : i++]); };
  let done, q, opened;
  const reset = () => { done = START; q = 0; opened = false; };

  root.innerHTML = `
    <div class="bc-stage">
      <p class="bc-cat">${A.category}</p>
      <p class="bc-dream">${A.dream}</p>
      <div class="bc-key" aria-hidden="true"><span class="bc-bow"></span><span class="bc-shaft"></span>
        <span class="bc-teeth">${A.steps.map(() => "<i></i>").join("")}</span></div>
      <p class="bc-count" aria-live="polite"></p>
      <div class="bc-box" aria-hidden="true">🎁</div>
    </div>
    <div class="bc-side">
      <div class="bc-card">
        <p class="bc-now">${A.now}</p>
        <p class="bc-step"></p>
        <p class="bc-title"></p>
        <div class="bc-q"><span class="bc-qn"></span><span class="bc-qt"></span></div>
        <label class="bc-label"><span class="visually-hidden">${A.answer}</span>
          <textarea rows="2" placeholder="${A.answer}"></textarea></label>
      </div>
      <button type="button" class="bc-go"></button>
      <p class="muted small">${T.note}</p>
    </div>`;
  const $ = s => root.querySelector(s);
  const teeth = [...root.querySelectorAll(".bc-teeth i")], input = $("textarea"), go = $(".bc-go");

  function render() {
    const total = A.steps.length, all = done === total;
    teeth.forEach((t, i) => { t.classList.toggle("on", i < done); t.classList.toggle("now", i === done); });
    $(".bc-count").textContent = opened ? A.found : fmt(A.teeth, done, total);
    root.classList.toggle("bc-full", all);
    root.classList.toggle("bc-opened", opened);
    $(".bc-card").hidden = all;
    if (!all) {
      const s = A.steps[done];
      $(".bc-step").textContent = fmt(A.step, done + 1);
      $(".bc-title").textContent = s.title;
      $(".bc-qn").textContent = `${q + 1}/${s.qs.length}`;
      $(".bc-qt").textContent = s.qs[q];
      go.textContent = q === s.qs.length - 1 ? `✓ ${A.done}` : `✓ ${A.next}`;
    } else go.textContent = opened ? `↺ ${T.again}` : `🔑 ${A.open}`;
  }

  go.addEventListener("click", () => {
    if (opened) reset();
    else if (done === A.steps.length) opened = true;
    else {
      input.value = "";
      if (++q === A.steps[done].qs.length) { q = 0; done++; }   // 질문 셋을 마치면 톱니 하나
    }
    render();
    if (!opened && done < A.steps.length) input.focus({ preventScroll: true });
  });
  input.addEventListener("keydown", e => { if (e.key === "Enter" && !e.shiftKey) { e.preventDefault(); go.click(); } });

  reset(); render();
})();
