$(document).ready(function () {
	const setting = {
		tab_title: "MAI FOOD VN",
		app_title: "MAI FOOD VN, Co. Ltd",
		app_sologan: "An toàn, đa dạng, hợp lý!",
		monitor_interval: 1,
		talk_begin: "Công ty",
		talk_delay: 5,
	}
	const default_setting = {};
	const ca_name = { '1': 'Sáng', '2': 'Trưa', '3': 'Tối', '4': 'Đêm' };
	for (var item in setting) default_setting[item] = setting[item];

	const api = '/api.ashx';
	const mp3 = '/mp3/';

	var logined = false, user_info, all_quyen, ngay = '';
	var json_global, json_suat_an, json_company, json_don_nguyen, json_setup_combo, json_loai, json_user, json_setting;


	//--begin ck---
	function setCookie(name, value, days) {
		var expires = "";
		if (days) {
			var date = new Date();
			date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
			expires = "; expires=" + date.toUTCString();
		}
		document.cookie = name + "=" + (value || "") + expires + "; path=/";
	}
	function getCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for (var i = 0; i < ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0) == ' ') c = c.substring(1, c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
		}
		return null;
	}
	function eraseCookie(name) {
		document.cookie = name + '=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
	}
	function getLocal(name) {
		return window.localStorage.getItem(name);
	}
	function setLocal(name, value) {
		window.localStorage.setItem(name, value);
	}
	function delLocal(name) {
		localStorage.removeItem(name);
	}
	function get_store(key) {
		var value = getCookie(key);
		if (value == null || value == '' || value == undefined) {
			value = getLocal(key);
		}
		return value;
	}
	//--end ck---

	//cac ham dung chung
	function get_datediff(date1, date2) {
		const diffTime = (date2 - date1);
		const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
		return diffDays;
	}
	Date.prototype.vn = function () {
		this.setHours(this.getHours() + 7);
		return this;
	}
	function Date2() {
		return new Date().vn();
	}

	var ngay = getCookie('ngay');
	if (ngay == null || ngay == '') {
		ngay = Date2().toISOString().split('T')[0];
		setCookie('ngay', ngay, 1);
	}

	//--auto play mp3---

	class Queue {
		constructor() {
			this.queue = [];
		}

		enqueue(item) {
			return this.queue.unshift(item);
		}

		dequeue() {
			return this.queue.pop();
		}

		peek() {
			return this.queue[this.length - 1];
		}

		get length() {
			return this.queue.length;
		}

		isEmpty() {
			return this.queue.length === 0;
		}

		checkExist(item_check) {
			for (var item of this.queue) {
				if (item.id == item_check.id) return true;
			}
			return false;
		}
	}
	var Q = new Queue();
	var Q_done = new Queue();
	var gtts_playing = 0;

	var last_mp3_id = getLocal('last_mp3_id')
	if (last_mp3_id == null || last_mp3_id == "" || last_mp3_id == undefined) last_mp3_id = 0;

	var last_talk_id = getLocal('last_talk_id')
	if (last_talk_id == null || last_talk_id == "" || last_talk_id == undefined) last_talk_id = 0;

	function mp3_talk(id, text, time) {
		if (text == null || text == '') return;
		var item = { id: id, text: text, time: time };
		//if (id >= last_talk_id) 
		{
			{
				last_talk_id = id;
				setLocal('last_talk_id', last_talk_id);
				Q.enqueue(item);
			}
		}
	}
	function mp3_hangdoi(id, text, time) {
		if (text == null || text == '') return;
		var item = { id: id, text: json_setting.talk_begin + ' ' + text, time: time };
		if (!Q_done.checkExist(item)) {
			if (id > last_mp3_id) {
				{
					last_mp3_id = id;
					setLocal('last_mp3_id', last_mp3_id)
					Q.enqueue(item);
				}
			}
		}
	}
	function playSound(url, text, sanbay, time) {
		if (gtts_playing) return;
		var url2 = sanbay ? (mp3 + 'san_bay.mp3') : url;
		var audio = new Audio(url2);
		var audio2;
		if (sanbay) audio2 = new Audio(url);
		audio.addEventListener("ended", function () {
			if (sanbay) {
				audio2.addEventListener("ended", function () {
					setTimeout(function () { gtts_playing = 0; }, json_setting.talk_delay * 1000);
				});
				audio2.play().then(() => {
					gtts_playing = 1;
					toastr["info"]("<b>Thông báo đặt suất ăn:</b><br>" + text + (time != '' ? '<br>Time: ' + time : ''));
				}).catch(e => {
					console.log(e);
					toastr["warning"]("Hãy bật loa và CLICK vào trình duyệt để cho phép nói ra loa nhé");
				});
			} else {
				setTimeout(function () { gtts_playing = 0; }, json_setting.talk_delay * 1000);
			}
		});
		audio.play().then(() => {
			gtts_playing = 1;
			toastr["info"]('Đang nói ra loa, hãy bật loa!' + (Q.length > 0 ? ('<hr>Hàng đợi: còn ' + Q.length + ' thông báo') : ''));
		}).catch(e => {
			console.log(e);
			toastr["warning"]("Hãy bật loa và CLICK vào trình duyệt để cho phép nói ra loa nhé");
		});
	}//hết hàm playSound
	function play_tts(text, sanbay = 1, time = '') {
		if (text == null || text == '') return;
		$.post(mp3,
			{ text: text },
			function (tts) {
				if (tts.ok)
					playSound(mp3 + tts.fn, text, sanbay, time);
				else
					toastr["warning"](tts.msg + '<br>' + tts.text + (time != '' ? '<br>Time: ' + time : ''));
			}
		);
	}
	function auto_play_in_queue() {
		if (!gtts_playing && !Q.isEmpty()) {
			var item = Q.dequeue();
			Q_done.enqueue(item);
			if (item.text != '')
				play_tts(item.text, 1, item.time); //có tiếng sân bay
		};
	}

	//--end auto play mp3---
	function monitor(action, callback, callback2) {
		$.post(api,
			{
				action: action,
			},
			function (json) {
				json_global = json;
				callback(json, callback2);
			},
		);
	}

	function alert_not_login() {
		if (!logined) {
			$.confirm({
				animateFromElement: false,
				typeAnimated: false,
				icon: 'fa fa-clipboard-check',
				title: 'Bạn chưa đăng nhập',
				content: 'Hãy đăng nhập để điều khiển',
				type: 'red',
				closeIcon: true,
				closeIconClass: 'fa fa-close',
				columnClass: 'm',
				escapeKey: 'cancel',
				buttons: {
					ok: {
						text: '<i class="fa fa-circle-check"></i> Đăng nhập luôn',
						btnClass: 'btn-blue',
						keys: ['enter'],
						action: function () {
							do_login();
						}
					},
					cancel: {
						text: '<i class="fa fa-circle-xmark"></i> Cancel',
						keys: ['esc'],
						btnClass: 'btn-red',
					}
				}
			});
			return true;
		}
		return false;
	}
	function getItem(arr, id) {
		for (var item of arr) {
			if (item.id == id) return item;
		}
		return null;
	}
	function listSuat(suat, arr, item_cong_ty) {
		var s = '';
		var id = item_cong_ty.id;
		if (id == 0) s += '<ol type="1" style="margin:0">';
		for (var c of arr) {
			var item = getItem(suat, c.id);
			if (item == null) return '';
			if (id == 0) s += '<li>';
			s += `<span title="${item.name}">${item.sign}${id == 0 ? ' ' : ''}<span class="badge rounded-pill bg-primary">${c.sl}</span></span> `;
			if (id == 0) s += '</li>';
		}
		if (id == 0) s += '</ol>';
		return s;
	}
	function listLoaiSuat(arr, type_bulet = 'ul', type_sl = 'info') {
		var s = '';
		s += '<' + type_bulet + ' style="margin:0">';
		for (var item of arr) {
			s += '<li>';
			s += `<span title="${item.name}">${item.name} <span class="badge rounded-pill bg-${type_sl}">${item.sl}</span></span> `;
			s += '</li>';
		}
		s += '</' + type_bulet + '>';
		return s;
	}
	function get_log(data) {
		$.post(api,
			data,
			function (json) {
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					var content = '';
					content += `<div class="table-responsive-sm">
                  <table width="100%" class="table table-hover table-striped" id="table-list-history-order">
                  <thead>
                  <tr class="table-info">
                  <th>ID</th>
                  <th>Log</th>
                  <th>Time</th>
                  </tr></thead><tbody>`;
					for (var item of json.data) {
						var talk = '';
						if (item.input == 'mp3_short' || item.input == 'mp3_long') {
							talk = ` <button class="btn btn-sm btn-info btn-talk-log" data-lid="${item.id}">Nói</button> `;
						}
						content += `<tr>
                    <td nowarp align="center">${item.id}</td>
                    <td nowarp>${talk}<span id="log-content-${item.id}">${item.log.replaceAll(';', '<br>')}</span></td>
                    <td nowarp align="center">${item.time}</td>
                  </tr>`;
					}
					content += '</tbody></table></div>';
					$('#list-history-order').html(content);
					if (json.data.length > 10) {
						sort_table('#table-list-history-order', "Log history", 20);
					}
					$('#table-list-history-order tbody').on('click', '.btn-talk-log', function () {
						var lid = $(this).data('lid');
						var text = $('#log-content-' + lid).text();
						Q.enqueue({ id: lid, text: text });
					});
				} else {
					$('#list-history-order').html(json.msg);
					thong_bao_loi(json, { w0, t: 1 });
				}
			}
		);
	}
	function view_history_order(data) {

		dialog_order = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-clock',
			title: 'Xem lịch sử sửa đổi',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'xl',
			type: 'blue',
			escapeKey: 'cancel',
			content: '<div id="list-history-order">Loading...</div>',
			buttons: {
				all: {
					text: '<i class="fa fa-clock-rotate-left"></i> History All Day',
					btnClass: 'btn-primary',
					action: function () {
						get_log({ action: 'list_all_history_order' });
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				get_log(data);
			}
		});
	}
	function show_order_total_one_company(item_company) {
		if (alert_not_login()) return;
		if (!(logined && (user_info.role == 3 || user_info.role == 100))) {
			thong_bao_loi({ ok: 0, msg: 'Bạn không có quyền' });
			return;
		}
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Chi tiết: ${item_company.name}`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'l',
			type: 'blue',
			escapeKey: 'ok',
			content: '<div id="one-company-detail">Loading...</div>',
			buttons: {
				History: {
					text: '<i class="fa fa-utensils"></i> History company',
					btnClass: 'btn-warning',
					action: function () {
						view_history_order({
							action: 'list_history_company_order',
							id_company: item_company.id,
						});
						return false;
					}
				},
				ok: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$.post(api,
					{
						action: 'report_1_congty',
						id: item_company.id
					},
					function (json) {
						if (json.ok) {
							thong_bao_ok(json, { w: 0, t: 1 });
							function show_detail(arr, name, type) {
								var s = `<tr class="table-info"><th colspan="2">${name}</th></tr>`
								for (var ca_item of arr) {
									if (ca_item.data == null) {
										s += `<tr class="row_combo table-danger" data-ids="${type}${ca_item.ca}"><th>${ca_name[ca_item.ca]}</th><td colspan="2">Không có dữ liệu</td></tr>`;
									} else {
										s += `<tr class="row_combo" data-ids="${type}${ca_item.ca}" valign="middle"><th rowspan="${ca_item.data.length}">${ca_name[ca_item.ca]}</th>`;
										var stt = 0;
										for (var item of ca_item.data) {
											stt++;
											if (stt > 1) s += `<tr class="row_combo" data-ids="${type}${ca_item.ca}">`;
											s += `
                      <td>${item.name} <span class="badge rounded-pill bg-primary">${item.sl}</span></td>
                    </tr>`;
										}
									}
								}
								return s;
							}
							var content = `<div class="table-responsive-sm">
                  <table width="100%" class="table table-bordered">
                  <thead>
                  <tr class="table-primary">
                  <th width="50px">Ca</th>
                  <th>Thống kê</th>
                  </tr></thead><tbody>`+
								show_detail(json.suat, 'Thống kê theo Suất ăn', 's') +
								show_detail(json.loai, 'Thống kê theo Loại', 'l') +
								show_detail(json.don, 'Thống kê theo Đơn nguyên', 'd') +
								'</tbody></table></div>';

							$('#one-company-detail').html(content);
							$('tr.row_combo').hover(function () {
								var ids = $(this).data('ids')
								$(`tr.row_combo[data-ids= '${ids}']`).addClass('table-warning')
							}, function () {
								var ids = $(this).data('ids')
								$(`tr.row_combo[data-ids= '${ids}']`).removeClass('table-warning')
							});

						} else {
							thong_bao_loi(json);
						}
					}
				);
			}
		});
	}
	function show_report_oto(id_ca, json_car) {
		if (alert_not_login()) return;
		if (!(logined && (user_info.role == 3 || user_info.role == 100))) {
			thong_bao_loi({ ok: 0, msg: 'Bạn không có quyền' });
			return;
		}

		function show_detail(arr, name, type) {
			var s = `<tr class="table-info"><th colspan="2">${name}</th></tr>`
			for (var ca_item of arr) {
				if (ca_item.data == null) {
					s += `<tr class="row_combo table-danger" data-ids="${type}${ca_item.ca}"><th>${ca_name[ca_item.ca]}</th><td colspan="2">Không có dữ liệu</td></tr>`;
				} else {
					s += `<tr class="row_combo" data-ids="${type}${ca_item.ca}" valign="middle"><th rowspan="${ca_item.data.length}">${ca_name[ca_item.ca]}</th>`;
					var stt = 0;
					for (var item of ca_item.data) {
						stt++;
						if (stt > 1) s += `<tr class="row_combo" data-ids="${type}${ca_item.ca}">`;
						s += `<td>${item.name} <span class="badge rounded-pill bg-primary">${item.sl}</span></td></tr>`;
					}
				}
			}
			return s;
		}
		function get_content_car(car, arr_congty) {
			if (car.ok) {
				var json = JSON.parse(car.msg);
				var list_congty = `<P>${json.msg} chở hàng đến các công ty:<UL>`;
				for (var id_cty of arr_congty) {
					for (var item of json_global.data) {
						if (id_cty == item.id) {
							list_congty += `<li>${item.id}. ${item.name}</li>`;
							break;
						}
					}
				}
				list_congty += '</UL></P>'
				return `<div class="table-responsive-sm">${list_congty}
					<table width="100%" class="table table-bordered">
					<thead>
					<tr class="table-primary">
					<th width="50px">Ca</th>
					<th>Thống kê</th>
					</tr></thead><tbody>`+
					show_detail(json.suat, 'Thống kê theo Suất ăn', 's') +
					show_detail(json.loai, 'Thống kê theo Loại', 'l') +
					show_detail(json.don, 'Thống kê theo Đơn nguyên', 'd') +
					'</tbody></table></div>';
			} else {
				return car.msg;
			}
		}
		var json_car_chon = JSON.parse(json_setting['oto' + id_ca]);
		var tk1 = get_content_car(json_car.car1, json_car_chon.car1);
		var tk2 = get_content_car(json_car.car2, json_car_chon.car2);
		var tk3 = get_content_car(json_car.car3, json_car_chon.car3);
		var tk4 = get_content_car(json_car.car4, json_car_chon.car4);
		var tk5 = get_content_car(json_car.car5, json_car_chon.car5);

		var content = `<ul class="nav nav-tabs" id="myTab" role="tablist">`
		var car_ok = [];
		function have_only(i) {
			if (i == 1) return json_car.car1.ok;
			if (i == 2) return !json_car.car1.ok && json_car.car2.ok;
			if (i == 3) return !json_car.car1.ok && !json_car.car2.ok && json_car.car3.ok;
			if (i == 4) return !json_car.car1.ok && !json_car.car2.ok && !json_car.car3.ok && json_car.car4.ok;
			if (i == 5) return !json_car.car1.ok && !json_car.car2.ok && !json_car.car3.ok && !json_car.car4.ok && json_car.car5.ok;
		}
		if (json_car.car1.ok) {
			car_ok.push(1);
			content += `<li class="nav-item" role="presentation">
        <button class="nav-link ${have_only(1) ? 'active' : ''}" id="tabx-1" data-bs-toggle="tab" data-bs-target="#tabx-1-content" type="button" role="tab" aria-controls="tabx-1-content" aria-selected="true">Xe 1</button>
      </li>`
		}
		if (json_car.car2.ok) {
			car_ok.push(2);
			content += `<li class="nav-item" role="presentation">
        <button class="nav-link ${have_only(2) ? 'active' : ''}" id="tabx-2" data-bs-toggle="tab" data-bs-target="#tabx-2-content" type="button" role="tab" aria-controls="tabx-2-content" aria-selected="true">Xe 2</button>
      </li>`
		}
		if (json_car.car3.ok) {
			car_ok.push(3);
			content += `<li class="nav-item" role="presentation">
        <button class="nav-link ${have_only(3) ? 'active' : ''}" id="tabx-3" data-bs-toggle="tab" data-bs-target="#tabx-3-content" type="button" role="tab" aria-controls="tabx-3-content" aria-selected="true">Xe 3</button>
      </li>`
		}
		if (json_car.car4.ok) {
			car_ok.push(4);
			content += `<li class="nav-item" role="presentation">
        <button class="nav-link ${have_only(4) ? 'active' : ''}" id="tabx-4" data-bs-toggle="tab" data-bs-target="#tabx-4-content" type="button" role="tab" aria-controls="tabx-4-content" aria-selected="true">Xe 4</button>
      </li>`
		}
		if (json_car.car5.ok) {
			car_ok.push(5);
			content += `<li class="nav-item" role="presentation">
        <button class="nav-link ${have_only(5) ? 'active' : ''}" id="tabx-5" data-bs-toggle="tab" data-bs-target="#tabx-5-content" type="button" role="tab" aria-controls="tabx-5-content" aria-selected="true">Xe 5</button>
      </li>`
		}
		content += `</ul>
    <div class="tab-content">
      <div class="tab-pane fade show ${have_only(1) ? 'active' : ''}" id="tabx-1-content" role="tabpanel" aria-labelledby="tabx-1" tabindex="0">${tk1}</div>
      <div class="tab-pane fade show ${have_only(2) ? 'active' : ''}" id="tabx-2-content" role="tabpanel" aria-labelledby="tabx-2" tabindex="0">${tk2}</div>
      <div class="tab-pane fade show ${have_only(3) ? 'active' : ''}" id="tabx-3-content" role="tabpanel" aria-labelledby="tabx-3" tabindex="0">${tk3}</div>
      <div class="tab-pane fade show ${have_only(4) ? 'active' : ''}" id="tabx-4-content" role="tabpanel" aria-labelledby="tabx-4" tabindex="0">${tk4}</div>
      <div class="tab-pane fade show ${have_only(5) ? 'active' : ''}" id="tabx-5-content" role="tabpanel" aria-labelledby="tabx-5" tabindex="0">${tk5}</div>
    </div>`;
		if (car_ok.length == null) content = 'KHÔNG CẦN XE NÀO';
		$('#list-tk-oto').html(content);
		$('tr.row_combo').hover(function () {
			var ids = $(this).data('ids')
			$(`tr.row_combo[data-ids= '${ids}']`).addClass('table-warning')
		}, function () {
			var ids = $(this).data('ids')
			$(`tr.row_combo[data-ids= '${ids}']`).removeClass('table-warning')
		});
	}

	function company_order(item_company, ca, json) {
		if (alert_not_login()) return;
		if (!(logined && (user_info.role == 3 || user_info.role == 100))) {
			thong_bao_loi({ ok: 0, msg: 'Bạn không có quyền' });
			return;
		}
		if (!ca) ca = 0;
		if (ca == 0) return;
		if (item_company.default.length == 0) {
			thong_bao_loi({ ok: 0, msg: 'Chưa thiết lập các suất hay ăn cho công ty này.<br>Hãy dùng chức năng SỬA công ty nhé!' })
			return;
		}

		var ds_company = '', ds_ca = '', ds_suat = '';
		for (var cty_item of json.data) {
			if (cty_item.id > 0)
				if (cty_item.id == item_company.id) {
					ds_company += `<option value="${cty_item.id}" selected>${cty_item.name} - ${cty_item.address} - ${cty_item.phone}</option>`;
					break;
				}
			//else
			//ds_company += `<option value="${cty_item.id}" >${cty_item.name} - ${cty_item.address} - ${cty_item.phone}</option>`;
		}
		for (var ca_item in ca_name) {
			if (ca_item == ca) {
				ds_ca += `<option value="${ca_item}" selected>${ca_name[ca_item]}</option>`;
				break;
			}
			//else
			//ds_ca += `<option value="${ca_item}">${ca_name[ca_item]}</option>`;
		}
		ds_suat += '<option selected="true" disabled="disabled" value="0">--Chọn suất--</option>';
		for (var suat_item of json.suat) {
			ds_suat += `<option value="${suat_item.id}">${suat_item.name} (${format_price(suat_item.price)})</option>`;
		}
		var dialog_order;
		function reload_order() {
			monitor('monitor', draw_init, function () {
				thong_bao_ok(json_global, { w: 0, t: 1 });
				var content = list_order_done(item_company.id, ca);
				$('#list-order-done').html(content);
				$('.btn-order-delete').click(function () {
					var id_suat = $(this).data('suat');
					var ten = $(this).data('name');
					var sl = $(this).data('sl');
					delete_button(id_suat, ten, sl);
				});
				$('.btn-order-edit').click(function () {
					var id_suat = $(this).data('suat');
					var sl = $(this).data('sl');
					edit_button(id_suat, sl);
				});
				$('#edit-suat').focus();
			});
		}
		function list_order_done(id_company, id_ca) {

			var s = []
			for (var item of json_global.data) {
				if (item.id == id_company) {
					var c = [];
					if (id_ca == 1) c = item.c1;
					if (id_ca == 2) c = item.c2;
					if (id_ca == 3) c = item.c3;
					if (id_ca == 4) c = item.c4;
					for (var order_item of c) {
						var item_suat = getItem(json.suat, order_item.id);
						if (item_suat) {
							var content = `<tr id="order_suat_${item_suat.id}">
              <td>${item_suat.sign}</td>
              <td>${format_price(item_suat.price)}</td>
              <td><span class="badge rounded-pill bg-primary">${order_item.sl}</span></td>
              <td>
                <button class="btn btn-sm btn-warning btn-order-edit" data-suat="${item_suat.id}" data-sl="${order_item.sl}">Sửa</button>
                <button class="btn btn-sm btn-danger btn-order-delete" data-name="${item_suat.sign}" data-suat="${item_suat.id}" data-sl="${order_item.sl}">Xóa</button>
              </td>
              </tr>`;
							s.push(content);
						}
					}
					break;
				}
			}
			var kq = '';
			if (s.length == 0) {
				kq = `<span class="badge rounded-pill bg-danger">Chưa đặt suất ăn nào</span>`;
			} else {
				kq += 'Đã đặt các suất ăn:';
				kq += `<div class="table-responsive-sm">
              <table width="100%" class="table table-hover table-striped"><thead><tr class="table-info">
              <th>Tên</th>
              <th>Giá</th>
              <th>Số&nbsp;lượng</th>
              <th>Action</th>
              </tr></thead><tbody>`;
				for (var content of s) {
					kq += content;
				}
				kq += '</tbody></table></div>';
			}
			return kq;
		}
		function update_soluong() {
			var id_suat = $('#edit-suat').val();
			if (!id_suat) return;

			var id_company = $('#edit-company').val();
			var id_ca = $('#edit-ca').val();
			$.post(api,
				{
					action: 'dem_suat_an',
					id_company: id_company,
					id_ca: id_ca,
					id_suat: id_suat
				},
				function (json) {
					if (json.ok) {
						thong_bao_ok(json, { w: 0, t: 1 });
						$('#soluong-old').val(json.soluong);
						if (json.soluong == 0) json.soluong = '';
						$('#soluong-new').val(json.soluong);
						$('#soluong-new').focus();
					}
					else
						thong_bao_loi(json);
				}
			);
		}
		function update_name_cty() {
			var id_company = $('#edit-company').val();
			var selected_item = null;
			for (var c_item of json.data) {
				if (c_item.id == id_company) {
					selected_item = c_item;
					break;
				}
			}
			if (selected_item != null) {
				dialog_order.setTitle('Đặt suất ăn cho công ty: ' + selected_item.name + (selected_item.vip ? ' <i class="fa fa-star" style="color:red"></i>' : ''));
			}
		};
		function delete_button(id_suat, ten, sl) {
			if (!id_suat) {
				thong_bao_loi({ ok: 0, msg: 'Chưa chọn suất ăn!' }, { w: 1, t: 1 }, function () {
					$('edit-suat').focus();
				})
				return;
			}

			var id_company = $('#edit-company').val();
			var id_ca = $('#edit-ca').val();
			$.confirm({
				animateFromElement: false,
				typeAnimated: false,
				icon: 'fa fa-circle-question',
				title: 'Xác nhận xóa đặt suất ăn',
				closeIcon: true,
				closeIconClass: 'fa fa-close',
				columnClass: 'm',
				type: 'red',
				escapeKey: 'cancel',
				content: `Xác nhận muốn xóa<br>Suất ăn <span class="badge rounded-pill bg-primary">${ten}</span> số lượng: <span class="badge rounded-pill bg-primary">${sl}</span> ??`,
				autoClose: "cancel|5000",
				buttons: {
					yes: {
						text: '<i class="fa fa-trash-can"></i> Yes',
						keys: ['enter', 'y'],
						btnClass: 'btn-danger',
						action: function () {
							$.post(api,
								{
									action: 'delete_order',
									id_company: id_company,
									id_ca: id_ca,
									id_suat: id_suat
								},
								function (json) {
									if (json.ok) {
										thong_bao_ok(json, { w: 0, t: 1 });
										reload_order();
									}
									else
										thong_bao_loi(json);
								}
							);
						}
					},
					cancel: {
						text: '<i class="fa fa-circle-check"></i> No no no',
						keys: ['esc', 'n'],
						btnClass: 'btn-blue',
					}
				}
			})
		}
		function edit_hay_an(item_company) {
			$.post(api, { action: 'get_company', id: item_company.id }, function (json) {
				show_edit_company(item_company, json)
			})
		}
		var row_order_nhanh = '';

		var c = [];
		if (ca == 1) c = item_company.c1;
		if (ca == 2) c = item_company.c2;
		if (ca == 3) c = item_company.c3;
		if (ca == 4) c = item_company.c4;

		function thu_ok(suat) {
			var _ngay = new Date(json.ngay);
			var _thu = _ngay.getDay();
			_thu++;
			if (_thu == 1) _thu = 8;
			for (var thu of suat.thu) {
				if (thu == _thu) {
					return true;
				}
			}
			return false;
		}

		for (var suat of item_company.default) {
			if (thu_ok(suat)) {
				for (var item of json.suat) {
					var so_luong = 0
					if (suat.id == item.id) {
						for (var order_item of c) {
							if (order_item.id == item.id) {
								so_luong = order_item.sl;
								break;
							}
						}
						row_order_nhanh += `
            <tr>
              <td>${item.sign}:</td>
              <td>
              <div class="input-group">
                <span class="input-group-text">SL:</span>
                <input type="number" min="0" max="5000" oninput="validity.valid||(value='');" data-sid="${item.id}" class="form-control input_soluong_order" value="${so_luong}">
                <span class="input-group-text">${format_price(item.price)}</span>
              </div>
              </td>
            </tr>`
						break;
					}
				}
			}
		}
		var content = `<div class="table-responsive-sm">
    <table align="center" width="100%">
    <tr>
    <td>Công&nbsp;ty:</td>
    <td><select class="form-select cbo-order" id="edit-company">${ds_company}</select></td>
    </tr>
    <tr>
    <td>Ca:</td>
    <td><select class="form-select cbo-order" id="edit-ca">${ds_ca}</select></td>
    </tr>
    <!--
    <tr>
    <td>Suất&nbsp;ăn (tí xóa):</td>
    <td><select class="form-select cbo-order" id="edit-suat">${ds_suat}</select></td>
    </tr>
    <tr>
    <td>Số&nbsp;lượng (tí xóa):</td>
    <td>
    <div class="input-group">
      <span class="input-group-text">Cũ</span>
      <input type="number" class="form-control" id="soluong-old" value="0" disabled>
      <span class="input-group-text">Mới</span>
      <input type="number" class="form-control" id="soluong-new" placeholder="Số mới">
      <button class="btn btn-info" id="save-order" type="button">Save</button>
    </div>
    </td>
    </tr>
    -->
    ${row_order_nhanh}
    </table></div>
    `;
		dialog_order = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Đặt suất ăn cho công ty',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'l',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				save_db: {
					text: '<i class="fa fa-floppy-disk"></i> Save',
					btnClass: 'btn-primary',
					action: function () {
						var order_id = [], order_sl = [];
						$('.input_soluong_order').each(function (i, item) {
							order_id.push($(item).data('sid'))
							var sl = parseInt(item.value);
							if (isNaN(sl)) sl = 0;
							if (sl < 0) sl = 0;
							order_sl.push(sl);
						})
						var data_save = {
							action: 'save_order',
							id_company: item_company.id,
							id_ca: ca,
							order_id: order_id,
							order_sl: order_sl
						}
						$.post(api,
							data_save,
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									mp3_hangdoi(json.id, json.mp3, 'now');
									dialog_order.close();
									reload_order();
								} else {
									thong_bao_loi(json);
								}
							}
						);
						return false;
					}
				},
				History: {
					text: '<i class="fa fa-utensils"></i> History cty/ca',
					btnClass: 'btn-warning',
					action: function () {
						view_history_order({
							action: 'list_history_order',
							id_company: item_company.id,
							id_ca: ca
						});
						return false;
					}
				},
				reload: {
					text: '<i class="fa fa-utensils"></i> Reload',
					btnClass: 'btn-info',
					action: function () {
						reload_order();
						return false;
					}
				},
				hay_an: {
					text: '<i class="fa fa-splotch"></i> Hay ăn!',
					btnClass: 'btn-warning',
					action: function () {
						edit_hay_an(item_company);
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				update_soluong();
				update_name_cty();
			}
		});
	}

	function copy_order() {
		var nay = Date2().toISOString().split('T')[0];
		var mai = Date2();
		mai.setDate(mai.getDate() + 1);
		mai = mai.toISOString().split('T')[0];
		var content = `
      <p>Hôm nay là ngày: <span class="badge rounded-pill bg-info">${nay}</span></p>
      Ngày nguồn:
      <div class="input-group">
        <button type="button" class="btn btn-warning btn-next-back-day" data-delta="-1" data-target="#ngay-from">--</button>
        <input type="date" class="form-control input-ngay-copy" id="ngay-from" value="${nay}" style="text-align:center">
        <button type="button" class="btn btn-info btn-next-back-day" data-delta="0" data-target="#ngay-from" data-reset="${nay}" title="Chọn ngày: ${nay}">Hôm nay</button>
        <button type="button" class="btn btn-success btn-next-back-day" data-delta="1" data-target="#ngay-from">++</button>
      </div>
      Ngày đích:
      <div class="input-group">
        <button type="button" class="btn btn-warning btn-next-back-day" data-delta="-1" data-target="#ngay-to">--</button>
        <input type="date" class="form-control input-ngay-copy" id="ngay-to" value="${mai}" style="text-align:center">
        <button type="button" class="btn btn-info btn-next-back-day" data-delta="0" data-target="#ngay-to" data-reset="${mai}" title="Chọn ngày: ${mai}">Ngày mai</button>
        <button type="button" class="btn btn-success btn-next-back-day" data-delta="1" data-target="#ngay-to">++</button>
      </div>
      <span id="date-diff-copy">Copy từ hôm nay đến ngày mai</span>
    `;
		var dialog_copy = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-calendar-check',
			title: 'Sao chép dữ liệu',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				copy: {
					text: '<i class="fa fa-clone"></i> Copy',
					btnClass: 'btn-primary',
					action: function () {
						var dialog_confirm_copy = $.confirm({
							title: 'Xác nhận copy dữ liệu',
							content: `Copy dữ liệu từ ${$('#ngay-from').val()} đến ngày ${$('#ngay-to').val()}<br>Mọi dữ liệu của ngày ${$('#ngay-to').val()} sẽ bị xóa và ghi đè.<br>Nếu ngày ${$('#ngay-to').val()} có dữ liệu, hãy copy nó ra xa xa trong tương lai`,
							animateFromElement: false,
							typeAnimated: false,
							icon: 'fa fa-circle-question',
							columnClass: 'm',
							type: 'red',
							escapeKey: 'no',
							autoClose: "no|30000",
							buttons: {
								yes: {
									text: '<i class="fa fa-circle-check"></i> YES',
									btnClass: 'btn-red',
									action: function () {
										$.post(api,
											{
												action: 'copy_order',
												ngay_from: $('#ngay-from').val(),
												ngay_to: $('#ngay-to').val()
											},
											function (json) {
												if (json.ok) {
													thong_bao_ok(json);
													monitor('monitor', draw_init);
													dialog_confirm_copy.close();
													dialog_copy.close();
												} else {
													thong_bao_loi(json);
												}
											}
										);
									}
								},
								no: {
									text: '<i class="fa fa-circle-xmark"></i> NO',
									keys: ['esc'],
									btnClass: 'btn-blue',
								}
							}
						});
						return false; //ko đóng dialog_copy
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				var dialog = this;
				function tinh_khoang_cach_copy() {
					var ngay_from = $('#ngay-from').val();
					var ngay_to = $('#ngay-to').val();
					var ngay_from = new Date(ngay_from);
					var ngay_to = new Date(ngay_to);
					var hom_nay = Date2();
					const d1 = get_datediff(ngay_from, ngay_to);
					const d2 = get_datediff(hom_nay, ngay_to);
					var error_msg = '';
					if (d2 >= 0) {
						dialog.buttons.copy.enable();
						if (d1 <= 0) {
							dialog.buttons.copy.disable()
							if (d1 < 0)
								error_msg = '<span class="badge bg-danger">Không được copy từ tương lai về quá khứ</span>';
							else
								error_msg = '<span class="badge bg-warning">Hãy chọn 2 ngày khác nhau</span>';
						}
					} else {
						dialog.buttons.copy.disable();
						error_msg = '<span class="badge bg-danger">Hãy để quá khứ ngủ yên</span>';
					}

					$('#date-diff-copy').html(error_msg == '' ? `nguồn->đích=${d1} ngày, hôm nay->đích=${d2} ngày` : error_msg);
				}
				$('.btn-next-back-day').click(function () {
					var delta = $(this).data('delta');
					var target = $(this).data('target');
					if (delta == 0) {
						var reset = $(this).data('reset');
						$(target).val(reset)
					} else {
						var ngay_chon = $(target).val();
						var ngay_chon = new Date(ngay_chon);
						ngay_chon.setDate(ngay_chon.getDate() + delta);
						ngay_chon = ngay_chon.toISOString().split('T')[0];
						$(target).val(ngay_chon);
					}
					tinh_khoang_cach_copy();
				});
				$('.input-ngay-copy').on('change', function () {
					tinh_khoang_cach_copy();
				});
				tinh_khoang_cach_copy();
			}
		});
	}

	var is_first = 1;
	function draw_init(json, callback2) {
		if (json.ok) {
			if (!is_first) {
				thong_bao_ok(json, { w: 0, t: 1 });
				is_first = 1;
			}
			var content = '' +
				'<h5>Kế hoạch ngày: <span class="badge rounded-pill bg-info">' + json.ngay + '</span> <button class="btn btn-sm btn-primary chon-ngay-monitor" data-ngay="' + json.ngay + '"><i class="fa fa-calendar-check"></i> Chọn ngày</button></h5>' +
				'<div class="table-responsive-sm">' +
				'<table id="ke-hoach-sx" class="ke-hoach-sx table table-bordered table-hover table-striped">' +
				'<thead><tr class="table-info fw-bold">' +
				'<th class="text-center" width="20px">STT</th>' +
				'<th>Công ty</th>' +
				'<th width="20%" class="btn-xe-oto" data-ca="1" title="Click để thống kê theo xe ca Sáng">Sáng <i class="fa fa-truck"></i></th>' +
				'<th width="20%" class="btn-xe-oto" data-ca="2" title="Click để thống kê theo xe ca Trưa">Trưa <i class="fa fa-truck"></i></th>' +
				'<th width="20%" class="btn-xe-oto" data-ca="3" title="Click để thống kê theo xe ca Tối">Tối <i class="fa fa-truck"></i></th>' +
				'<th width="20%" class="btn-xe-oto" data-ca="4" title="Click để thống kê theo xe ca Đêm">Đêm <i class="fa fa-truck"></i></th>' +
				'</tr></thead><tbody>';
			var stt = 0;
			for (var item of json.data) {
				if (item.id > 0) {
					var s1 = item.d1 > 1 ? `<i class="fa fa-star" style="color:red" title="Số lần edit=${item.d1}"></i> ` : '';
					var s2 = item.d2 > 1 ? `<i class="fa fa-star" style="color:red" title="Số lần edit=${item.d2}"></i> ` : '';
					var s3 = item.d3 > 1 ? `<i class="fa fa-star" style="color:red" title="Số lần edit=${item.d3}"></i> ` : '';
					var s4 = item.d4 > 1 ? `<i class="fa fa-star" style="color:red" title="Số lần edit=${item.d4}"></i> ` : '';
					content += `<tr data-cid="${item.id}">` +
						'<td align=center nowarp class="btn-company-order" data-ca="0">' + (++stt) + '</td>' +
						'<td align="left" nowarp class="btn-company-order" data-ca="0">' + (item.name) + (item.vip == 1 ? ' <i class="fa fa-star" style="color:red"></i>' : '') + '</td>' +
						`<td align=left nowarp class="btn-company-order" data-ca="1" title="Click để đặt suất ăn cho công ty ${item.name} ca ${ca_name['1']}">${s1}${listSuat(json.suat, item.c1, item)}</td>` +
						`<td align=left nowarp class="btn-company-order" data-ca="2" title="Click để đặt suất ăn cho công ty ${item.name} ca ${ca_name['2']}">${s2}${listSuat(json.suat, item.c2, item)}</td>` +
						`<td align=left nowarp class="btn-company-order" data-ca="3" title="Click để đặt suất ăn cho công ty ${item.name} ca ${ca_name['3']}">${s3}${listSuat(json.suat, item.c3, item)}</td>` +
						`<td align=left nowarp class="btn-company-order" data-ca="4" title="Click để đặt suất ăn cho công ty ${item.name} ca ${ca_name['4']}">${s4}${listSuat(json.suat, item.c4, item)}</td>` +
						'</tr>';
				} else if (item.id == 0) {
					content += `<tr data-cid="${item.id}" class="table-info fw-bold">` +
						'<td align=center nowarp ></td>' +
						'<td align="right" nowarp>' + item.name + '</td>' +
						`<td nowarp>${listSuat(json.suat, item.c1, item)}</td>` +
						`<td nowarp>${listSuat(json.suat, item.c2, item)}</td>` +
						`<td nowarp>${listSuat(json.suat, item.c3, item)}</td>` +
						`<td nowarp>${listSuat(json.suat, item.c4, item)}</td>` +
						'</tr>';
				} else if (item.id == -1) {
					content += `<tr data-cid="${item.id}" class="table-warning fw-bold">` +
						'<td align=center nowarp></td>' +
						'<td align="right" nowarp>' + item.name + '</td>' +
						`<td nowarp>${listLoaiSuat(item.c1, 'ul', 'info')}</td>` +
						`<td nowarp>${listLoaiSuat(item.c2, 'ul', 'info')}</td>` +
						`<td nowarp>${listLoaiSuat(item.c3, 'ul', 'info')}</td>` +
						`<td nowarp>${listLoaiSuat(item.c4, 'ul', 'info')}</td>` +
						'</tr>';
				} else if (item.id == -2) {
					content += `<tr data-cid="${item.id}" class="table-success fw-bold">` +
						'<td align=center nowarp></td>' +
						'<td align="right" nowarp>' + item.name + '</td>' +
						`<td nowarp>${listLoaiSuat(item.c1, 'ol', 'danger')}</td>` +
						`<td nowarp>${listLoaiSuat(item.c2, 'ol', 'danger')}</td>` +
						`<td nowarp>${listLoaiSuat(item.c3, 'ol', 'danger')}</td>` +
						`<td nowarp>${listLoaiSuat(item.c4, 'ol', 'danger')}</td>` +
						'</tr>';
				}
			}
			content += "</tbody></table></div>";

			$('#monitor-zone').html(content);
			$('.btn-xe-oto').click(function () {
				var ca = $(this).data('ca');
				manager_oto(ca);
			});
			$('.btn-company-order').click(function () {
				var id = $(this).parent().data('cid');
				var ca = $(this).data('ca');
				if (id > 0) {
					for (var item of json.data) {
						if (item.id == id) {
							if (ca == 0) {
								show_order_total_one_company(item);
							} else {
								company_order(item, ca, json);
							}
							break;
						}
					}
				}
			});

			$('.chon-ngay-monitor').click(function () {
				function str_tinh_khoang_cach(ngay_chon) {
					var ngay_chon = new Date(ngay_chon);
					var hom_nay = Date2();
					const diffDays = get_datediff(hom_nay, ngay_chon)
					if (diffDays > 0)
						return (`Ngày chọn <span class="badge rounded-pill bg-primary">sau</span> hôm nay: <span class="badge rounded-pill bg-primary">${diffDays}</span> ngày`);
					else if (diffDays < 0)
						return (`Ngày chọn <span class="badge rounded-pill bg-warning">trước</span> hôm nay: <span class="badge rounded-pill bg-danger">${-diffDays}</span> ngày`);
					else
						return (`Ngày chọn là <span class="badge rounded-pill bg-info">hôm nay</span>`);
				}

				var ngay_monitor = $(this).data("ngay");
				var content = `
        <p>Hôm nay là ngày: <span class="badge rounded-pill bg-info">${Date2().toISOString().split('T')[0]}</span></p>
        Chọn ngày:
        <div class="input-group">
          <button class="btn btn-warning nut_tang_giam" type="button" data-delta="-1">Back</button>
          <input type="date" class="form-control" id="txt-ngay-chon" value="${ngay_monitor}" style="text-align:center">
          <button class="btn btn-info nut_tang_giam" type="button" data-delta="0" title="Chọn ngày: ${Date2().toISOString().split('T')[0]}">Today</button>
          <button class="btn btn-success nut_tang_giam" data-delta="1" type="button">Next</button>
        </div>
        <span id="khoang-cach-ngay">${str_tinh_khoang_cach(ngay_monitor)}</span>
        `;

				var dialog_chon_ngay = $.confirm({
					animateFromElement: false,
					typeAnimated: false,
					icon: 'fa fa-calendar-check',
					title: 'Chọn ngày',
					closeIcon: true,
					closeIconClass: 'fa fa-close',
					columnClass: 'm',
					type: 'blue',
					escapeKey: 'cancel',
					content: content,
					buttons: {
						chon: {
							text: '<i class="fa fa-calendar-check"></i> Chọn ngày',
							btnClass: 'btn-primary',
							action: function () {
								ngay = $('#txt-ngay-chon').val();
								setCookie("ngay", ngay, 1);
								monitor('monitor', draw_init);
							}
						},
						copy: {
							text: '<i class="fa fa-clone"></i> Copy',
							btnClass: 'btn-info',
							isHidden: !(logined && (user_info.role == 3 || user_info.role == 100)),
							action: function () {
								copy_order();
								return false;
							}
						},
						history: {
							text: '<i class="fa fa-clock-rotate-left"></i> History day',
							btnClass: 'btn-warning',
							action: function () {
								view_history_order({ action: 'list_all_history_order' })
								return false;
							}
						},
						cancel: {
							text: '<i class="fa fa-circle-xmark"></i> Close',
							keys: ['esc'],
							btnClass: 'btn-red',
						}
					},
					onContentReady: function () {
						function tinh_khoang_cach() {
							var ngay_chon = $('#txt-ngay-chon').val();
							var ngay_chon = new Date(ngay_chon);
							var hom_nay = Date2();
							const diffDays = get_datediff(hom_nay, ngay_chon)
							if (diffDays > 0)
								$('#khoang-cach-ngay').html(`Ngày chọn <span class="badge rounded-pill bg-primary">sau</span> hôm nay: <span class="badge rounded-pill bg-primary">${diffDays}</span> ngày`);
							else if (diffDays < 0)
								$('#khoang-cach-ngay').html(`Ngày chọn <span class="badge rounded-pill bg-warning">trước</span> hôm nay: <span class="badge rounded-pill bg-danger">${-diffDays}</span> ngày`);
							else
								$('#khoang-cach-ngay').html(`Ngày chọn là <span class="badge rounded-pill bg-info">hôm nay</span>`);
						}
						$('.nut_tang_giam').click(function () {
							var delta = $(this).data('delta');
							if (delta == 0) {
								var date_homnay = Date2().toISOString().split('T')[0];
								$('#txt-ngay-chon').val(date_homnay);
								tinh_khoang_cach();
							} else {
								var date1 = $('#txt-ngay-chon').val();
								var date2 = new Date(date1);
								date2.setDate(date2.getDate() + delta);
								var date_ngay = date2.toISOString().split('T')[0];
								$('#txt-ngay-chon').val(date_ngay);
								tinh_khoang_cach();
							}
						});
						$('#txt-ngay-chon').on("change", function () {
							tinh_khoang_cach();
						});
						//tinh_khoang_cach();
					}
				});
			});
			if (callback2) callback2(json);
		} else {
			$('#monitor-zone').html('Không có dữ liệu');
		}
	}
	//--thuc_don--
	function format_price(price) {
		var t = price + 'vnđ';
		t = t.replace('000vnđ', 'K');
		if (t == '0vnđ') t = '0k';
		return t;
	}
	function list_suat_an() {
		$.post(api,
			{
				action: 'list_suat_an'
			},
			function (json) {
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					json_suat_an = json;
					content = '<div class="table-responsive-sm"><table id="table-list-suat-an" class="table table-hover table-striped">' +
						'<thead><tr class="table-info fw-bold">' +
						'<th style="text-align:center">Stt</th>' +
						'<th>Kí hiệu</th>' +
						'<th>Tên</th>' +
						'<th>Loại</th>' +
						'<th style="text-align:right">Giá</th>' +
						'<th style="text-align:center">Action</th>' +
						'</tr></thead><tbody>';
					var stt = 0;
					for (var item of json.data) {
						var action = '<button class="btn btn-sm btn-warning btn-edit-suat-an" data-sid="' + item.id + '">Sửa</button>';
						content += '<tr class="' + (item.enable ? '' : 'table-danger') + '">' +
							'<td align=center>' + (++stt) + '</td>' +
							'<td>' + item.sign + '</td>' +
							'<td>' + item.name + '</td>' +
							'<td>' + item.tenloai + '</td>' +
							'<td align=right>' + format_price(item.price) + '</td>' +
							'<td align=center>' + action + '</td>' +
							'</tr>'
					}
					content += '</tbody></table></div>';
					$('#list-suat-an').html(content);
					sort_table('#table-list-suat-an', "Danh sách suất ăn", 20);
					$('#table-list-suat-an tbody').on('click', '.btn-edit-suat-an', function () {
						var id = $(this).data('sid');
						for (var item of json.data) {
							if (item.id == id) {
								edit_suat_an(item);
								break;
							}
						}
					});
				}
				else {
					thong_bao_loi(json)
				}
			}
		);//end $.post
	}
	function edit_suat_an(item) {
		var ds_loai = ``;
		for (var litem of json_global.loai) {
			if (item.loai == litem.id)
				ds_loai += `<option value="${litem.id}" selected>${litem.name}</option>`
			else
				ds_loai += `<option value="${litem.id}">${litem.name}</option>`
		}

		var content = `<div class="table-responsive-sm"><table align="center" width="100%">
    <tr>
    <td>Kí hiệu:</td>
    <td><input type="text" class="form-control" id="edit-sign" value="`+ item.sign + `"></td>
    </tr>
    <tr>
    <td>Tên:</td>
    <td><input type="text" class="form-control" id="edit-name" value="`+ item.name + `"></td>
    </tr>
    <tr>
    <td>Giá:</td>
    <td><input type="text" class="form-control" id="edit-price" value="`+ item.price + `"></td>
    </tr>
    <tr>
    <td>Loại:</td>
    <td><select class="form-select" id="edit-loai">${ds_loai}</select></td>
    </tr>
    </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Cập nhật thông tin suất ăn`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				enable: {
					text: '<i class="fa fa-utensils"></i> Enable',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'enable_suat_an',
								id: item.id,
								name: $('#edit-name').val(),
								sign: $('#edit-sign').val(),
								price: $('#edit-price').val(),
								loai: $('#edit-loai').val(),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_suat_an();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},
				disable: {
					text: '<i class="fa fa-utensils"></i> Dis',
					btnClass: 'btn-warning',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'disable_suat_an',
								id: item.id,
								name: $('#edit-name').val(),
								sign: $('#edit-sign').val(),
								price: $('#edit-price').val(),
								loai: $('#edit-loai').val(),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_suat_an();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},
				delete: {
					text: '<i class="fa fa-trash-can"></i> Del',
					btnClass: 'btn-danger',
					action: function () {
						var self = this;
						$.confirm({
							animateFromElement: false,
							typeAnimated: false,
							icon: 'fa fa-trash-can',
							closeIcon: true,
							closeIconClass: 'fa fa-close',
							columnClass: 'm',
							type: 'red',
							escapeKey: 'cancel',
							title: `Xác nhận xóa: ${item.name} ?`,
							content: `Xóa suất ăn <b>${item.name}</b> (${format_price(item.price)}) nhé?`,
							buttons: {
								yes: {
									text: '<i class="fa fa-trash-can"></i> Yes',
									btnClass: 'btn-danger',
									keys: ['y'],
									action: function () {
										$.post(api,
											{
												action: 'delete_suat_an',
												id: item.id,
											},
											function (json) {

												if (json.ok) {
													thong_bao_ok(json, { w: 0, t: 1 });
													self.close();
													list_suat_an();
												} else {
													thong_bao_loi(json)
												}
											}
										);//end $.post
									}
								},
								cancel: {
									text: '<i class="fa fa-circle-check"></i> No no no',
									btnClass: 'btn-blue',
									keys: ['n', 'esc'],
								}
							}
						});
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-price').focus();
			}
		});
	}
	function add_suat_an() {
		var ds_loai = ``;
		for (var item of json_global.loai) {
			ds_loai += `<option value="${item.id}">${item.name}</option>`
		}
		var content = `<div class="table-responsive-sm"><table align="center" width="100%">
    <tr>
    <td>Kí hiệu:</td>
    <td><input type="text" class="form-control" id="edit-sign" value=""></td>
    </tr>
    <tr>
    <td>Tên:</td>
    <td><input type="text" class="form-control" id="edit-name" value=""></td>
    </tr>
    <tr>
    <td>Giá:</td>
    <td><input type="text" class="form-control" id="edit-price" value=""></td>
    </tr>
    <tr>
    <td>Loại:</td>
    <td><select class="form-select" id="edit-loai">${ds_loai}</select></td>
    </tr>
    </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Thêm suất ăn',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				Add: {
					text: '<i class="fa fa-utensils"></i> Thêm',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'add_suat_an',
								name: $('#edit-name').val(),
								sign: $('#edit-sign').val(),
								price: $('#edit-price').val(),
								loai: $('#edit-loai').val(),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_suat_an();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},

				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-sign').focus();
			}
		});
	}
	//begin-đơn nguyên  
	function list_don_nguyen() {
		$.post(api,
			{
				action: 'list_don_nguyen'
			},
			function (json) {
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					json_don_nguyen = json;
					var content = '<div class="table-responsive-sm">' +
						'<table id="table-list-don-nguyen" class="table table-bordered table-hover table-striped">' +
						'<thead><tr class="table-info fw-bold">' +
						'<th class="text-center" width="10px">ID</th>' +
						'<th>Name</th>' +
						'<th>Mô tả</th>' +
						'<th width="10px">In&nbsp;Combo</th>' +
						'<th width="70px">Action</th>' +
						'</tr></thead><tbody>';
					for (var item of json.data) {
						var action = `<button class="btn btn-sm btn-warning btn-edit-don-nguyen" data-action="edit" data-did="${item.id}">Sửa</button> `
						action += `<button class="btn btn-sm btn-danger btn-edit-don-nguyen" data-action="del" data-did="${item.id}">Xóa</button>`
						content += `<tr data-cid="${item.id}">` +
							'<td align=center nowarp>' + (item.id) + '</td>' +
							'<td align="left" nowarp>' + (item.name) + '</td>' +
							'<td align="left" nowarp>' + (item.des) + '</td>' +
							`<td align="center" nowarp class="btn-edit-don-nguyen" data-action="view" data-did="${item.id}" title="Click để view ${item.sl} các combo (suất ăn) có sử dụng ${item.name}"><span class="badge rounded-pill bg-primary">${item.sl}</span></td>` +
							'<td align="left" nowarp class="btn-company-order">' + (action) + '</td>' +
							'</tr>';
					}
					$('#list-don-nguyen').html(content);
					sort_table('#table-list-don-nguyen', "Danh sách đơn nguyên", 20);
					//$('.btn-edit-don-nguyen').click(function () {
					$('#table-list-don-nguyen tbody').on('click', '.btn-edit-don-nguyen', function () {
						var id = $(this).data('did');
						var action = $(this).data('action');
						for (var item of json.data) {
							if (item.id == id) {
								if (action == 'edit')
									edit_don_nguyen(item);
								else if (action == 'del')
									del_don_nguyen(item);
								else if (action == 'view')
									view_combo_use_don_nguyen(item);
								break;
							}
						}
					});
				} else {
					thong_bao_loi(json);
				}
			}
		);
	}
	function add_don_nguyen() {
		var item = { id: '', name: '', des: '' };
		var content = `<div class="table-responsive-sm">
    <table align="center" width="100%">
    <tr>
    <td>ID:</td>
    <td><input type="number" min="1" class="form-control" id="edit-id" value="${item.id}"></td>
    </tr>
    <tr>
    <td>Tên:</td>
    <td><input type="text" class="form-control" id="edit-name" value="${item.name}"></td>
    </tr>
    <tr>
    <td>Mô tả:</td>
    <td><input type="text" class="form-control" id="edit-des" value="${item.des}"></td>
    </tr>    
    </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Thêm đơn nguyên',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				Add: {
					text: '<i class="fa fa-utensils"></i> Thêm',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'add_don_nguyen',
								id: $('#edit-id').val(),
								name: $('#edit-name').val(),
								des: $('#edit-des').val(),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_don_nguyen();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},

				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-id').focus();
			}
		});
	}
	function edit_don_nguyen(item) {
		var content = `<div class="table-responsive-sm">
    <table align="center" width="100%">
    <tr>
    <td>ID:</td>
    <td><input type="number" min="1" class="form-control" id="edit-id" value="${item.id}"></td>
    </tr>
    <tr>
    <td>Tên:</td>
    <td><input type="text" class="form-control" id="edit-name" value="${item.name}"></td>
    </tr>
    <tr>
    <td>Mô tả:</td>
    <td><input type="text" class="form-control" id="edit-des" value="${item.des}"></td>
    </tr>    
    </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Sửa đơn nguyên',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				Add: {
					text: '<i class="fa fa-utensils"></i> Cập nhật',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'edit_don_nguyen',
								id: $('#edit-id').val(),
								id_old: item.id,
								name: $('#edit-name').val(),
								des: $('#edit-des').val(),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_don_nguyen();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},

				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-id').focus();
			}
		});
	}
	function del_don_nguyen(item) {
		var content = `Xác nhận muốn xóa<br>Đơn nguyên <span class="badge rounded-pill bg-danger">${item.name}</span>?`;
		if (item.sl > 0) content += `<br>Sẽ có <span class="badge rounded-pill bg-danger">${item.sl} combo</span>  bị xóa thành phần này!?`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-circle-question',
			title: 'Xác nhận xóa đơn nguyên',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'red',
			escapeKey: 'cancel',
			content: content,
			autoClose: "cancel|5000",
			buttons: {
				yes: {
					text: '<i class="fa fa-trash-can"></i> Yes',
					keys: ['enter', 'y'],
					btnClass: 'btn-danger',
					action: function () {
						$.post(api,
							{
								action: 'del_don_nguyen',
								id: item.id
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									list_don_nguyen();
								}
								else
									thong_bao_loi(json);
							}
						);//end $.post
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-check"></i> No no no',
					keys: ['n', 'esc'],
					btnClass: 'btn-blue',
				}
			}
		});
	}
	function view_combo_use_don_nguyen(item) {
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Danh sách các Combo (suất ăn) có sử dụng: ${item.name}`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'l',
			type: 'blue',
			escapeKey: 'ok',
			content: '<div id="ds-combo-use-don-nguyen">Loading...</div>',
			buttons: {
				ok: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				//api get data -> #ds-combo-use-don-nguyen
				$.post(api,
					{
						action: 'dem_don_nguyen', //liệt kê combo sử dụng don_nguyen này
						id: item.id,
					},
					function (json) {
						if (json.ok) {
							thong_bao_ok(json, { w: 0, t: 1 });
							var content = `<div class="table-responsive-sm">
              <table width="100%" class="table table-hover table-striped"><thead><tr class="table-info">
              <th>STT</th>
              <th>Tên</th>
              <th>Giá</th>
              <th>Các đơn nguyên</th>
              </tr></thead><tbody>`;
							var stt = 0;
							function show_don_nguyen(don_nguyen) {
								var s = '<ol style="margin:0">';
								for (var item of don_nguyen) {
									s += `<li>${item.name} <span class="badge rounded-pill bg-primary">${item.sl}</span></li>`;
								}
								s += '</ol>';
								return s;
							}
							for (var item of json.data) {
								content += `<tr>
                <td>${++stt}</td>
                <td>${item.name}</td>
                <td>${format_price(item.price)}</td>
                <td>${show_don_nguyen(item.don_nguyen)}</td>
                </tr>`;
							}
							content += '</tbody></table></div>';
							$('#ds-combo-use-don-nguyen').html(content);
						} else {
							thong_bao_loi(json);
						}
					}
				);
			}
		});
	}
	//end-đơn nguyên

	//begin setup combo
	function list_setup_combo() {
		$.post(api,
			{
				action: 'list_combo'
			},
			function (json) {
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					json_setup_combo = json;
					var content = `<div class="table-responsive-sm">
        <table id="table-list-combo" class="table table-bordered">
          <thead class="table-info fw-bold"><tr>
            <th rowspan="2" class="text-center" width="20px" valign="middle">STT</th>
            <th rowspan="2" valign="middle">Suất ăn</th>
            <th rowspan="2" class="text-center" valign="middle" width="20px">Loại</th>
            <th rowspan="2" style="text-align:center;width:50px;" valign="middle">Giá</th>
            <th colspan="5" style="text-align:center">Thành phần đơn nguyên</th>
          </tr>
            <tr>
              <th style="text-align:center">Đơn nguyên</th>
              <th style="text-align:center" width="10px">Số&nbsp;lượng</th>
              <th style="text-align:center" width="10px">Sửa</th>
              <th style="text-align:center" width="10px">Xóa</th>
              <th style="text-align:center" width="10px">Thêm</th>
            </tr>
          </thead>
          <tbody>`;
					var stt = 0;
					for (var item of json.data) {
						var tp = show_thanh_phan(item);
						content += `<tr class="row_combo" data-ids="${item.id}">
              <td rowspan="${tp.sl}" align="center" valign="middle">${++stt}</td>
              <td rowspan="${tp.sl}" align="left" valign="middle" title="${item.name}">${item.sign}</td>
              <td rowspan="${tp.sl}" align="center" valign="middle"">${item.tenloai}</td>
            <td rowspan="${tp.sl}" align="center" valign="middle">${format_price(item.price)}</td>
            ${tp.html}
          </tr>`;
					}
					content += `</tbody></table></div>`;
					$('#list-combo').html(content);
					$('tr.row_combo').hover(function () {
						var ids = $(this).data('ids')
						$(`tr.row_combo[data-ids= '${ids}']`).addClass('table-warning')
					}, function () {
						var ids = $(this).data('ids')
						$(`tr.row_combo[data-ids= '${ids}']`).removeClass('table-warning')
					});
					$('.btn-action-combo').click(function () {
						var action = $(this).data('action');
						var ids = $(this).data('ids');
						for (var items of json.data) {
							if (items.id == ids) {
								switch (action) {
									case 'add':
										add_setup_combo(items);
										break;
									case 'edit':
									case 'del':
										var idn = $(this).data('idn');
										for (var itemn of items.combo) {
											if (itemn.id == idn) {
												if (action == 'edit')
													edit_setup_combo(items, itemn);
												else
													del_setup_combo(items, itemn);
											}
										}
										break;
								}
								break;
							}
						}
					});
				} else {
					thong_bao_loi(json, { w: 0, t: 1 });
				}
			}
		)
	}
	function show_thanh_phan(item_combo) {
		var tp = { sl: 0, html: '' }
		var s = '';
		var add_button = `<button class="btn btn-sm btn-info btn-action-combo" data-action="add" data-ids="${item_combo.id}" title="Thêm thành phần vào combo">Add</button>`;
		for (var item of item_combo.combo) {
			var edit_button = `<button class="btn btn-sm btn-warning btn-action-combo" data-action="edit" data-ids="${item_combo.id}" data-idn="${item.id}" title="Sửa thành phần trong combo"> Edit</button>`;
			var del_button = `<button class="btn btn-sm btn-danger btn-action-combo"  data-action="del" data-ids="${item_combo.id}" data-idn="${item.id}" title="Xóa thành phần trong combo"> Del</button>`;
			tp.sl++;
			if (tp.sl > 1) s += `<tr class="row_combo" data-ids="${item_combo.id}"> `;
			s += `<td title="${item.des}"> ${item.name}</td>
           <td align="center" title="${item.name} có số lượng = ${item.sl}">${item.sl}</td>
           <td align="center">${edit_button}</td>
           <td align="center">${del_button}</td>`;
			if (tp.sl == 1)
				s += `<td rowspan="${item_combo.combo.length}" valign="middle"> ${add_button}</td>`;
			s += '</tr>';
		}
		tp.html = s;
		if (tp.sl == 0) {
			tp.sl = 1;
			tp.html = `<td colspan="4" valign="middle"><span class="badge rounded-pill bg-danger">Không có dữ liệu thành phần</span></td><td valign="middle">${add_button}</td></tr>`;
		}
		return tp;
	}
	function add_setup_combo(item) {
		var ds_chon = '';
		for (var item_dn of json_don_nguyen.data) {
			ds_chon += `<option value="${item_dn.id}">${item_dn.name}</option>`;
		}
		var content = `
    <div class="table-responsive-sm">
    <table width="100%">
    <tr><td>Combo:</td><td>${item.name} (${format_price(item.price)})</td></tr>
    <tr><td>Đơn nguyên:</td>
    <td><select class="form-select form-select-lg cbo-don-nguyen" id="edit-id" style="width: 100%"><option selected="true" disabled="disabled" value="0">--Chọn đơn nguyên--</option>
    ${ds_chon}
    </select></td></tr>
    <tr><td>Số lượng:</td>
    <td><input type="number" class="form-control" id="edit-sl"></td>
    </tr></table></div>
    `;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Thêm đơn nguyên vào combo`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				add: {
					text: '<i class="fa fa-utensils"></i> Add',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						var sl = $('#edit-sl').val();
						if (sl == '' || sl <= 0) {
							thong_bao_loi({ ok: 0, msg: 'Chưa nhập số lượng' }, { w: 0, t: 1 });
							return false;
						}
						$.post(api,
							{
								action: 'add_combo',
								ids: item.id,
								idn: $('#edit-id').val(),
								sl: sl,
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_setup_combo();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-id').select2({
					placeholder: 'Chọn đơn nguyên',
					closeOnSelect: true,
					allowClear: true,
				});
				$('#edit-id').focus();
			}
		});
	}
	function edit_setup_combo(item, itemn) {
		var ds_chon = '';
		for (var item_dn of json_don_nguyen.data) {
			if (item_dn.id == itemn.id) {
				ds_chon += `<option value="${item_dn.id}" selected>${item_dn.name}</option>`;
				break;
			}
			//else
			// ds_chon += `<option value="${item_dn.id}">${item_dn.name}</option>`;
		}
		var content = `
    <div class="table-responsive-sm"><table width="100%">
    <tr><td>Combo:</td><td>${item.name} (${format_price(item.price)})</td></tr>
    <tr><td>Đơn nguyên:</td>
    <td><select class="form-select form-control cbo-don-nguyen" id="edit-id" style="width: 100%"><option selected="true" disabled="disabled" value="0">--Chọn đơn nguyên--</option>
    ${ds_chon}
    </select></td></tr>
    <tr><td>Số lượng:</td>
    <td><input type="number" class="form-control" id="edit-sl" value="${itemn.sl}"></td>
    </tr></table></div>
    `;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Cập nhật đơn nguyên trong combo`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				add: {
					text: '<i class="fa fa-utensils"></i> Update',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						var sl = $('#edit-sl').val();
						if (sl == '' || sl <= 0) {
							thong_bao_loi({ ok: 0, msg: 'Chưa nhập số lượng' }, { w: 0, t: 1 });
							return false;
						}
						$.post(api,
							{
								action: 'edit_combo',
								ids: item.id,
								idn: itemn.id,
								sl: sl,
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_setup_combo();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-sl').focus();
			}
		});
	}
	function del_setup_combo(items, itemn) {
		var dialog_del_combo = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-circle-question',
			title: 'Xác nhận xóa?',
			content: 'Bạn có chắc muốn xóa khỏi combo  <b>' + items.name + '</b> đơn nguyên <b>' + itemn.name + '</b> x ' + itemn.sl + ' ?',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'red',
			columnClass: 'm',
			escapeKey: 'cancel',
			autoClose: 'cancel|15000',
			buttons: {
				ok: {
					text: '<i class="fa fa-circle-check"></i> ok Xóa đi',
					btnClass: 'btn-red',
					keys: ['enter'],
					action: function () {
						$.post(api,
							{
								action: 'del_combo',
								ids: items.id,
								idn: itemn.id,
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									list_setup_combo();
									dialog_del_combo.close()
								} else {
									thong_bao_loi(json); //báo lỗi khi delete_user
								}
								return false;
							}
						);//end $.post
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-blue',
				}
			}
		});
	}
	//end setup combo

	//begin talk
	function list_talk() {
		$.post(api,
			{
				action: 'list_talk'
			},
			function (json) {
				if (json.ok) {
					var content = '';
					content += `<div class="table-responsive-sm">
                  <table width="100%" class="table table-hover table-striped" id="table-list-talk">
                  <thead>
                  <tr class="table-info">
                  <th width="10px">ID</th>
                  <th>Message</th>
                  <th width="100px">Time</th>
                  <th width="70px">Talk</th>
                  <th width="70px">Edit</th>
                  <th width="70px">Del</th>
                  </tr></thead><tbody>`;
					for (var item of json.data) {
						if (item.state == 'new') {
							content += `<tr>
                    <td nowarp align="center">${item.id}</td>
                    <td nowarp id="talk-content-${item.id}">${item.message}</td>
                    <td nowarp align="center">${item.time_say}</td>
                    <td nowarp align="center">
                      <button class="btn btn-sm btn-info btn-talk" data-tid="${item.id}" data-action="talk">Nói</button>
                    </td>
                    <td nowarp align="center">
                      <button class="btn btn-sm btn-warning btn-talk" data-tid="${item.id}" data-action="edit">Edit</button>
                    </td>
                    <td nowarp align="center">
                      <button class="btn btn-sm btn-danger btn-talk" data-tid="${item.id}" data-action="del">Del</button>
                    </td>
                  </tr>`;
						} else {
							content += `<tr>
                    <td nowarp align="center">${item.id}</td>
                    <td nowarp id="talk-content-${item.id}">${item.message}</td>
                    <td nowarp align="center">${item.time}</td>
                    <td nowarp align="center">
                      <button class="btn btn-sm btn-info btn-talk" data-tid="${item.id}" data-action="talk">Nói</button>
                    </td>
                    <td nowarp align="center" title="Can not edit talked">
                    
                    <button class="btn btn-sm btn-secondary" disabled>Edit</button>
                    </td>
                    <td nowarp align="center">
                      <button class="btn btn-sm btn-danger btn-talk" data-tid="${item.id}" data-action="del">Del</button>
                    </td>
                  </tr>`;
						}
					}
					content += '</tbody></table></div>';
					$('#list-talk').html(content);
					sort_table('#table-list-talk', "Log talk", 10);
					$('#table-list-talk tbody').on('click', '.btn-talk', function () {
						var tid = $(this).data('tid');
						var action = $(this).data('action');
						switch (action) {
							case 'talk':
								var text = $('#talk-content-' + tid).text();
								Q.enqueue({ id: tid, text: text });
								break;
							case 'edit':
							case 'del':
								for (var item of json.data) {
									if (item.id == tid) {
										switch (action) {
											case 'edit':
												edit_talk(item);
												break;
											case 'del':
												del_talk(item);
												break;
										}
									}
								}
								break;
						}
					});
				} else {
					$('#list-talk').html('Không có dữ liệu');
					thong_bao_loi(json, { w: 0, t: 1 });
				}
			}
		)
	}
	function add_talk() {
		var item = { id: '', message: '', time_say: '' };
		var date = Date2();
		date.setTime(date.getTime() + 10 * 1000);

		item.time_say = date.toISOString().substr(0, 16);
		item.time_say += ':00';
		var content = `<div class="table-responsive-sm">
    <table align="center" width="100%">
    <tr>
    <td width="70px">Giờ&nbsp;hẹn:</td>
    <td><input type="datetime-local" class="form-control" id="edit-time" value="${item.time_say}"></td>
    </tr>
    <tr>
    <td colspan=2>Nếu giờ hẹn nhỏ hơn hiện tại thì giờ hẹn sẽ là hiện tại</td>
    </tr>
    <tr>
    <td>Thông&nbsp;điệp:</td>
    <td><textarea class="form-control" id="edit-message">${item.message}</textarea></td>
    </tr>    
    </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Thêm thông điệp hẹn nói',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'l',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				ok: {
					text: '<i class="fa fa-clock"></i> Thêm',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'add_talk',
								message: $('#edit-message').val().replaceAll('\n', ' '),
								time_say: $('#edit-time').val().replace('T', ' '),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_talk();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},

				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-message').focus();
			}
		});
	}
	function edit_talk(item) {
		var content = `<div class="table-responsive-sm">
    <table align="center" width="100%">
    <tr>
    <td>Giờ hẹn:</td>
    <td><input type="datetime-local" class="form-control" id="edit-time" value="${item.time_say}"></td>
    </tr>
    <tr>
    <td>Text:</td>
    <td><textarea class="form-control" id="edit-message">${item.message}</textarea></td>
    </tr>    
    </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Sửa thông điệp hẹn nói',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				ok: {
					text: '<i class="fa fa-clock"></i> Update',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'edit_talk',
								id: item.id,
								message: $('#edit-message').val().replaceAll('\n', ' '),
								time_say: $('#edit-time').val().replace('T', ' '),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_talk();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},

				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-message').focus();
			}
		});
	}
	function del_talk(item) {
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-circle-question',
			title: 'Xác nhận xóa?',
			content: 'Bạn có chắc muốn xóa <b>' + item.message + '</b> ?',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'red',
			columnClass: 'm',
			escapeKey: 'cancel',
			autoClose: 'cancel|15000',
			buttons: {
				ok: {
					text: '<i class="fa fa-circle-check"></i> ok Xóa đi',
					btnClass: 'btn-red',
					keys: ['enter'],
					action: function () {
						//gửi đi api: y/c xóa
						$.post(api,
							{
								action: 'del_talk',
								id: item.id
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									list_talk();
								} else {
									thong_bao_loi(json); //báo lỗi khi delete_user
								}
							}
						);//end $.post
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-blue',
				}
			}
		});
	}
	//end talk
	function thuc_don() {
		var content = `
    <ul class="nav nav-tabs" id="myTab" role="tablist">
      <li class="nav-item" role="presentation">
        <button class="nav-link active tab-thuc-don" id="tab-1" data-bs-toggle="tab" data-bs-target="#tab-1-content" type="button" role="tab" aria-controls="tab-1-content" aria-selected="true">Suất</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link tab-thuc-don" id="tab-2" data-bs-toggle="tab" data-bs-target="#tab-2-content" type="button" role="tab" aria-controls="tab-2-content" aria-selected="false">Đơn</button>
      </li>      
      <li class="nav-item" role="presentation">
        <button class="nav-link tab-thuc-don" id="tab-3" data-bs-toggle="tab" data-bs-target="#tab-3-content" type="button" role="tab" aria-controls="tab-3-content" aria-selected="false">Setup</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link tab-thuc-don" id="tab-4" data-bs-toggle="tab" data-bs-target="#tab-4-content" type="button" role="tab" aria-controls="tab-4-content" aria-selected="false">Box</button>
      </li> 
    </ul>
    <div class="tab-content" id="myTabContent">
      <div class="tab-pane fade show active" id="tab-1-content" role="tabpanel" aria-labelledby="tab-1" tabindex="0">
        <p>Suất ăn được tạo bởi nhiều đơn nguyên (còn gọi là combo)</p>
        <div id="list-suat-an">Loading...</div>
      </div>
      <div class="tab-pane fade" id="tab-2-content" role="tabpanel" aria-labelledby="tab-2" tabindex="1">
        <p>Các đơn nguyên là các đơn vị nguyên liệu nhỏ nhất cấu tạo nên 1 suất ăn, có thể đưa vào đây cả mắm, muối, mì chính. Đơn nguyên này ko thể chia nhỏ hơn.</p>
        <div id="list-don-nguyen">Loading...</div>
      </div>
      <div class="tab-pane fade" id="tab-3-content" role="tabpanel" aria-labelledby="tab-3" tabindex="2">
        <p>Mỗi combo sẽ gồm các {đơn nguyên và số lượng}</p>
        <div id="list-combo">loading...</div>
      </div>
      <div class="tab-pane fade" id="tab-4-content" role="tabpanel" aria-labelledby="tab-4" tabindex="3">
        <p>Setup thùng (hộp) đựng: box nào đựng được bao nhiêu suất ăn nào</p>
        <div id="list-box">loading...</div>
      </div>
    </div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Danh sách các suất ăn',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'xl',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				tab1_them: {
					text: '<i class="fa fa-utensils"></i> Thêm suất',
					btnClass: 'btn-blue cmd-in-tab cmd-in-tab-1',
					action: function () {
						add_suat_an();
						return false;
					}
				},
				tab1_loai: {
					text: '<i class="fa fa-layer-group"></i> Loại',
					btnClass: 'btn-info cmd-in-tab cmd-in-tab-1',
					action: function () {
						quan_ly_loai();
						return false;
					}
				},
				tab2_them: {
					text: '<i class="fa fa-utensils"></i> Thêm đơn nguyên',
					btnClass: 'btn-blue cmd-in-tab cmd-in-tab-2',
					isHidden: true,
					action: function () {
						add_don_nguyen();
						return false;
					}
				},
				tab3_company: {
					text: '<i class="fa fa-building"></i> Company',
					btnClass: 'btn-info cmd-in-tab cmd-in-tab-3',
					isHidden: true,
					action: function () {
						admin_company();
						return false;
					}
				},

				tab4_them: {
					text: '<i class="fa fa-box-open"></i> Thêm hộp',
					btnClass: 'btn-info cmd-in-tab cmd-in-tab-4',
					isHidden: true,
					action: function () {
						add_box();
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					btnClass: 'btn-red',
					action: function () {
						monitor('monitor', draw_init);
					}
				}
			},
			onContentReady: function () {
				var dialog = this;
				list_suat_an();
				$.post(api, { action: 'list_don_nguyen' }, function (json) { if (json.ok) { json_don_nguyen = json; } });
				$('button.tab-thuc-don').click(function () {
					var id = $(this)[0].id;
					$('button.cmd-in-tab').hide();
					$('button.cmd-in-' + id).show();
					switch (id) {
						case 'tab-1':
							dialog.setTitle('Danh sách các suất ăn');
							list_suat_an();
							break;
						case 'tab-2':
							dialog.setTitle('Danh sách các đơn nguyên');
							list_don_nguyen();
							break;
						case 'tab-3':
							dialog.setTitle('Setup combo');
							list_setup_combo();
							break;
						case 'tab-4':
							dialog.setTitle('Thùng đựng thức ăn');
							list_box();
							break;
					}
				});
			}
		});
	}

	function list_box() {
		$.post(api,
			{
				action: 'list_box'
			},
			function (json) {
				if (json.ok) {
					var content = '<div class="table-responsive-sm"><table id="table-list-box" class="table table-hover table-striped">' +
						'<thead><tr class="table-info fw-bold">' +
						'<th width="20px">STT</th>' +
						'<th>Tên hộp</th>' +
						'<th width="20px">Sức&nbsp;chứa</th>' +
						'<th style="text-align:center">Đựng được các loại</th>' +
						'<th style="text-align:center" width="20px">Edit</th>' +
						'<th style="text-align:center" width="20px">Del</th>' +
						'</tr></thead><tbody>';
					var stt = 0;
					if (!json_suat_an.find) json_suat_an.find = {}
					for (var item of json_suat_an.data) {
						json_suat_an.find[item.id] = item;
					}
					for (var id in json.data) {
						var item = json.data[id];
						var edit_action = `<button class='btn btn-sm btn-warning btn-action-box' data-bid="${id}" data-action="edit">Sửa</button>`;
						var del_action = ` <button class='btn btn-sm btn-danger btn-action-box' data-bid="${id}" data-action="del">Xoá</button>`;
						var suats = '';
						for (var sid of item.items) {
							suats += json_suat_an.find[sid].sign + '; ';
						}
						content += `
					<tr>
						<td>${++stt}</td>
						<td>${item.name}</td>
						<td><span class="badge rounded-pill bg-primary">${item.size}</span></td>
						<td>${suats}</td>
						<td>${edit_action}</td>
						<td>${del_action}</td>
					</tr>`;
					}
					content += '</tbody></table></div>';
					$('#list-box').html(content);
					sort_table('#table-list-box', "List box", 20);
					$('#table-list-box tbody').on('click', '.btn-action-box', function () {
						var id = $(this).data('bid');
						var action = $(this).data('action');
						var item = json.data[id];
						if (action == 'edit')
							edit_box(item);
						else if (action == 'del')
							del_box(item);
					});
				} else {
					$('#list-box').html(json.msg);
				}
			}
		);
	}
	function add_box() {
		var ds_suat = '';
		for (var sitem of json_suat_an.data) {
			ds_suat += `<option value="${sitem.id}">${sitem.sign}</option>`;
		}
		var item = { id: '', name: '', size: 14 };
		var content = `<div class="table-responsive-sm"><table align="center" width="100%">
          <tr>
            <td>Name:</td>
            <td><input type="text" class="form-control" id="edit-name" value="`+ item.name + `" placeholder="Tên hộp"></td>
          </tr>
		  <tr>
            <td>Size:</td>
            <td><input type="number" class="form-control" id="edit-size" min="1" max="999999" value="`+ item.size + `" placeholder="Sứa chứa tối đa"></td>
          </tr>
		  <tr>
            <td>Items:</td>
            <td><select class="form-select" id="ds-suat-box" style="width:100%" multiple="multiple">${ds_suat}</select></td>
          </tr>
        </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Thêm Box`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'l',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				add: {
					text: '<i class="fa fa-plus"></i> Thêm',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						var includes = [];
						var selected = $('#ds-suat-box').find(':selected');
						for (var op of selected) {
							includes.push(op.value);
						}

						$.post(api,
							{
								action: 'add_box',
								name: $('#edit-name').val(),
								size: $('#edit-size').val(),
								includes: includes,
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_box();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#ds-suat-box').select2({
					placeholder: 'Chọn suất ăn đựng được vào box này',
					closeOnSelect: false,
					allowClear: true,
				});
				$('#edit-name').focus();
			}
		});
	}
	function edit_box(item) {
		var ds_suat = '';
		for (var sitem of json_suat_an.data) {
			if (item.items.includes(sitem.id))
				ds_suat += `<option value="${sitem.id}" selected>${sitem.sign}</option>`;
			else
				ds_suat += `<option value="${sitem.id}">${sitem.sign}</option>`;
		}
		var content = `<div class="table-responsive-sm"><table align="center" width="100%">
          <tr>
            <td>Name:</td>
            <td><input type="text" class="form-control" id="edit-name" value="`+ item.name + `" placeholder="Tên hộp"></td>
          </tr>
		  <tr>
            <td>Size:</td>
            <td><input type="number" class="form-control" id="edit-size" min="1" max="999999" value="`+ item.size + `" placeholder="Sứa chứa tối đa"></td>
          </tr>
		  <tr>
            <td>Includes:</td>
            <td><select class="form-select" id="ds-suat-box" style="width:100%" multiple="multiple">${ds_suat}</select></td>
          </tr>
        </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Thêm Box`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'l',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				edit: {
					text: '<i class="fa fa-pen-to-square"></i> Cập nhật',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						var items = [];
						var selected = $('#ds-suat-box').find(':selected');
						for (var op of selected) {
							items.push(parseInt(op.value));
						}

						$.post(api,
							{
								action: 'edit_box',
								id: item.id,
								name: $('#edit-name').val(),
								size: $('#edit-size').val(),
								items: JSON.stringify(items),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_box();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#ds-suat-box').select2({
					placeholder: 'Chọn suất ăn đựng được vào box này',
					closeOnSelect: false,
					allowClear: true,
				});
				$('#edit-name').focus();
			}
		});
	}
	function del_box(item) {
		thong_bao_ok({ ok: 1, msg: "del_box code here: id=" + item.id });
	}
	function manager_suat() {
		var content = `
        <p>Suất ăn được tạo bởi nhiều đơn nguyên (còn gọi là combo)</p>
        <div id="list-suat-an">Loading...</div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Danh sách các suất ăn',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'xl',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				them: {
					text: '<i class="fa fa-utensils"></i> Thêm suất',
					btnClass: 'btn-blue cmd-in-tab cmd-in-tab-1',
					action: function () {
						add_suat_an();
						return false;
					}
				},
				loai: {
					text: '<i class="fa fa-layer-group"></i> Loại',
					btnClass: 'btn-info cmd-in-tab cmd-in-tab-1',
					action: function () {
						quan_ly_loai();
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					btnClass: 'btn-red',
					action: function () {
						monitor('monitor', draw_init);
					}
				}
			},
			onContentReady: function () {
				list_suat_an();
			}
		});
	}
	//--end thuc_don--

	//--begin don nguyen
	function manager_don() {
		var content = `<p>Các đơn nguyên là các đơn vị nguyên liệu nhỏ nhất cấu tạo nên 1 suất ăn, có thể đưa vào đây cả mắm, muối, mì chính. Đơn nguyên này ko thể chia nhỏ hơn.</p>
        <div id="list-don-nguyen">Loading...</div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Danh sách các đơn nguyên',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'xl',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				them: {
					text: '<i class="fa fa-utensils"></i> Thêm đơn nguyên',
					btnClass: 'btn-blue cmd-in-tab cmd-in-tab-2',
					action: function () {
						add_don_nguyen();
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				list_don_nguyen();
			}
		});
	}
	//--end don nguyen

	//--begin combo
	function manager_combo() {
		var content = `<p>Mỗi combo sẽ gồm các {đơn nguyên và số lượng}</p>
        <div id="list-combo">loading...</div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Setup combo',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'xl',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				list_setup_combo();
			}
		});
	}
	//--end combo
	function manager_order() {
		thong_bao_ok({ ok: 1, msg: '<ol><li>Chọn ngày</li><li>Click vào cell tại cột SÁNG/TRƯA/TỐI/ĐÊM ứng với công ty cần thêm</li></ol>' }, { w: 1, t: 0 });
	}
	function manager_report() {
		thong_bao_ok({ ok: 1, msg: '<ol><li>Chọn ngày</li><li>Click vào cell tại cột TÊN CÔNG TY để xem thống kê</li></ol>' }, { w: 1, t: 0 });
	}
	function manager_talk() {
		var content = `<p>Nơi thiết lập lịch tự động nói ra loa trên mọi máy</p>
        <div id="list-talk">loading...</div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: 'Cấu hình hẹn giờ nói ra loa',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'xl',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				them: {
					text: '<i class="fa fa-clock"></i> Thêm hẹn',
					btnClass: 'btn-info cmd-in-tab cmd-in-tab-4',
					action: function () {
						add_talk();
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				list_talk();
			}
		});
	}
	function manager_log() {
		var content = `<div id="list-history-order"></div>`;

		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-clock',
			title: 'Tra cứu log',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'xl',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				all_day: {
					text: '<i class="fa fa-clock-rotate-left"></i> Reload',
					btnClass: 'btn-primary',
					action: function () {
						get_log({ action: 'list_all_history_order' });
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				get_log({ action: 'list_all_history_order' });
			}
		});
	}
	//--begin loai--
	function list_loai() {
		$.post(api,
			{
				action: 'list_loai'
			},
			function (json) {
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					json_loai = json;
					var content = '<div class="table-responsive-sm"><table id="table_list_loai" class="table table-hover table-striped">' +
						'<thead><tr class="table-info fw-bold">' +
						'<th>ID</th>' +
						'<th>Tên loại</th>' +
						'<th style="text-align:center">Đếm suất</th>' +
						'<th style="text-align:center">Action</th>' +
						'</tr></thead><tbody>';
					for (var item of json.data) {
						var sua = '<button class="btn btn-sm btn-warning btn-edit-loai" data-lid="' + item.id + '" data-action="edit_loai">Sửa</button> ';
						var xoa = '<button class="btn btn-sm btn-danger btn-edit-loai" data-lid="' + item.id + '" data-action="del_loai">Xóa</button>';
						content += '<tr>' +
							'<td>' + item.id + '</td>' +
							'<td>' + item.name + '</td>' +
							'<td align="center">' + item.sl + '</td>' +
							'<td align=center>' + sua + xoa + '</td>' +
							'</tr>'
					}
					content += '</tbody></table></div>';
					$('#list_loai').html(content);
					$('.btn-edit-loai').click(function () {
						var id = $(this).data('lid');
						var action = $(this).data('action');
						for (var item of json.data) {
							if (item.id == id) {
								if (action == 'edit_loai')
									edit_loai(item);
								else if (action == 'del_loai')
									del_loai(item);
								break;
							}
						}
					});
				}
				else {
					thong_bao_loi(json)
				}
			}
		);//end $.post
	}
	function add_loai() {
		var item = { id: '', name: '' };
		var content = `<div class="table-responsive-sm"><table align="center" width="100%">
          <tr>
            <td>ID:</td>
            <td><input type="text" class="form-control" id="edit-id" value="`+ item.id + `"></td>
          </tr>
          <tr>
            <td>Name:</td>
            <td><input type="text" class="form-control" id="edit-name" value="`+ item.name + `"></td>
          </tr>
        </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Thêm loại suất ăn`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				add: {
					text: '<i class="fa fa-utensils"></i> Add',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'add_loai',
								id: $('#edit-id').val(),
								name: $('#edit-name').val(),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_loai();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-id').focus();
			}
		});
	}
	function edit_loai(item) {
		var content = `<div class="table-responsive-sm"><table align="center" width="100%">
          <tr>
            <td>ID:</td>
            <td><input type="text" class="form-control" id="edit-id" value="`+ item.id + `"></td>
          </tr>
          <tr>
            <td>Name:</td>
            <td><input type="text" class="form-control" id="edit-name" value="`+ item.name + `"></td>
          </tr>
        </table></div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-utensils',
			title: `Cập nhật loại suất ăn`,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				add: {
					text: '<i class="fa fa-utensils"></i> Update',
					btnClass: 'btn-primary',
					action: function () {
						var self = this;
						$.post(api,
							{
								action: 'edit_loai',
								id_old: item.id,
								id: $('#edit-id').val(),
								name: $('#edit-name').val(),
							},
							function (json) {

								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									self.close();
									list_loai();
								} else {
									thong_bao_loi(json)
								}
							}
						);//end $.post
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#edit-id').focus();
			}
		});
	}
	function del_loai(item) {
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-circle-question',
			title: 'Xác nhận xóa?',
			content: 'Bạn có chắc muốn xóa Loại <b>' + item.name + '</b> ?',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'red',
			columnClass: 'm',
			escapeKey: 'cancel',
			autoClose: 'cancel|15000',
			buttons: {
				ok: {
					text: '<i class="fa fa-circle-check"></i> ok Xóa đi',
					btnClass: 'btn-red',
					keys: ['enter'],
					action: function () {
						//gửi đi api: y/c xóa
						$.post(api,
							{
								action: 'del_loai',
								id: item.id
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									list_loai();
								} else {
									thong_bao_loi(json); //báo lỗi khi delete_user
								}
							}
						);//end $.post
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-blue',
				}
			}
		});
	}
	function quan_ly_loai() {
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-layer-group',
			title: 'Danh sách loại suất ăn',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'm',
			type: 'blue',
			escapeKey: 'cancel',
			content: '<div id="list_loai"></div>',
			buttons: {
				ok: {
					text: '<i class="fa fa-plus"></i> Thêm loại',
					btnClass: 'btn-info',
					action: function () {
						add_loai();
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					btnClass: 'btn-red',
					action: function () {
						//
					}
				}
			},
			onContentReady: function () {
				list_loai();
			}
		});
	}
	//--end loai--

	//--report zone--

	//--end report zone--

	//--các hàng dùng chung
	function sort_table(id, fn, pageLength_) {
		$('.jconfirm-holder').width($('.jconfirm-open').width());
		let pageLength = 10;
		if (pageLength_) pageLength = pageLength_;
		if (!fn) fn = "Export";
		$(id).DataTable({
			dom: 'Bfrtip',
			"pageLength": pageLength,
			buttons: [
				{
					extend: 'copyHtml5',
					title: fn
				},
				{
					extend: 'excelHtml5',
					title: fn
				}
			],
			"order": [],
			"language": {
				"decimal": "",
				"emptyTable": "Không có dữ liệu",
				"info": "Show từ _START_ đến _END_ / tổng _TOTAL_",
				"infoEmpty": "Showing 0 to 0 of 0 entries",
				"infoFiltered": "(filtered from _MAX_ total entries)",
				"infoPostFix": "",
				"thousands": ",",
				"lengthMenu": "Show _MENU_ entries",
				"loadingRecords": "Loading...",
				"processing": "Processing...",
				"search": "Tìm kiếm:",
				"zeroRecords": "Không tìm thấy lớp nào phù hợp",
				"paginate": {
					"first": "Trang đầu",
					"last": "Trang cuối",
					"next": "Trang sau",
					"previous": "Trang trước"
				},
				"aria": {
					"sortAscending": ": Sắp xếp tăng dần",
					"sortDescending": ": Sắp xếp giảm dần"
				}
			}
		});
		$('.jconfirm-holder').width($('.jconfirm-open').width());
	}
	function thong_bao_ok(json, option) {
		if (json.ok)
			if (json.msg != null && json.msg != '') {
				if (!option) {
					option = { t: 1, w: 1 }
				}
				if (option.t)
					toastr["info"]("<b>Thông báo</b><br>" + json.msg)
				if (option.w)
					$.confirm({
						animateFromElement: false,
						typeAnimated: false,
						icon: 'fa fa-circle-check',
						title: 'Thông báo',
						closeIcon: true,
						closeIconClass: 'fa fa-close',
						content: json.msg,
						type: 'green',
						autoClose: "ok|5000",
						buttons: {
							ok: {
								text: '<i class="fa fa-circle-check"></i> OK',
								btnClass: 'btn-danger',
							}
						}
					});
			}
	}
	function thong_bao_loi(json, option, callback) {
		if (!json.ok)
			if (json.msg != null && json.msg != '') {
				if (!option) {
					option = { t: 1, w: 1 }
				}
				if (option.t)
					toastr["warning"]("<b>Thông báo lỗi</b><br>" + json.msg)
				if (option.w)
					$.confirm({
						animateFromElement: false,
						typeAnimated: false,
						icon: 'fa fa-warning',
						title: 'Thông báo lỗi',
						content: json.msg,
						closeIcon: true,
						closeIconClass: 'fa fa-close',
						type: 'red',
						autoClose: "ok|5000",
						buttons: {
							ok: {
								text: '<i class="fa fa-circle-check"></i> OK',
								btnClass: 'btn-danger',
							}
						},
						onClose: function () {
							if (callback) callback();
						}
					});
			}
	}
	function not_allow() {
		if (!(user_info.role == 100 || user_info.role == 3))//nếu ko đủ quyền
		{
			$.confirm({
				animateFromElement: false,
				typeAnimated: false,
				icon: 'fa fa-clipboard-check',
				title: 'Bạn không đủ quyền',
				content: 'Chức năng chỉ dành cho Admin',
				type: 'red',
				closeIcon: true,
				closeIconClass: 'fa fa-close',
				columnClass: 'm',
				escapeKey: 'cancel',
				buttons: {
					cancel: {
						text: '<i class="fa fa-circle-xmark"></i> Cancel',
						keys: ['esc'],
						btnClass: 'btn-red',
					}
				}
			});
			return true;
		}
		return false;
	}

	//--admin user manager--
	function add_new_user() {
		var all_option_roles = '';
		for (var item of all_quyen) {
			all_option_roles += '<option value="' + item.role + '">' + item.rolename + '</option>'
		}
		var html_4input = `
            <div class="mb-3 mt-3">
              <label for="nhap-uid" class="form-label">uid:</label>
              <input type="text" class="form-control" id="nhap-uid" placeholder="Nhập uid">
            </div>
            <div class="mb-3 mt-3">
              <label for="nhap-pwd" class="form-label">Password:</label>
              <input type="password" class="form-control" id="nhap-pwd" placeholder="Nhập Password">
            </div>
            <div class="mb-3 mt-3">
              <label for="nhap-fullname" class="form-label">Fullname:</label>
              <input type="text" class="form-control" id="nhap-fullname" placeholder="Nhập Fullname">
            </div>
            <div class="mb-3 mt-3">
              <label for="nhap-role" class="form-label">Role:</label>
              <select class="form-select" id="nhap-role">`+ all_option_roles + `</select>
            </div>
            `;
		var dialog_add = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-user-plus',
			title: 'Add new user',
			content: html_4input,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'blue',
			columnClass: 'm',
			escapeKey: 'cancel',
			buttons: {
				ok: {
					text: '<i class="fa fa-user-plus"></i> Add user',
					btnClass: 'btn-blue',
					action: function () {
						//lấy đc 4 thông tin trên form
						//gửi đi
						//tùy theo phản hồi: OK=1 => tải lại ds user
						var uid = $('#nhap-uid').val();
						var pwd = $('#nhap-pwd').val();
						var fullname = $('#nhap-fullname').val();
						var role = $('#nhap-role').val();
						$.post(api,
							{
								action: 'add_user',
								adduid: uid,
								pw: pwd,
								name: fullname,
								role: role
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									list_user();  //sau khi add_user thì tải lại
									dialog_add.close(); //đóng thằng dialog_add lại
								} else {
									thong_bao_loi(json); //báo lỗi khi add_user
								}
							}
						);//end $.post
						return false; // ko đóng
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			}
		});
	}
	function set_pw(uid) {
		//set pw: ko tự set pw mà phải change_pw
		let uid_logined = get_store('uid');
		if (uid_logined == uid) {
			do_change_pw();
			return;
		}
		//người khác thì set ok
		//cần 1 form nhập pw mới, (ko cần pw cũ)
		var html_input = `
            <div class="mb-3 mt-3">
              <label for="set-uid" class="form-label">uid:</label>
              <input type="text" class="form-control" id="set-uid" value="`+ uid + `" disabled>
            </div>
            <div class="mb-3 mt-3">
              <label for="set-pwd" class="form-label">Password mới:</label>
              <input type="password" class="form-control" id="set-pwd" placeholder="Nhập Password">
            </div>
            `;
		var dialog_set_pw = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-key',
			title: 'Set password mới cho user',
			content: html_input,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'red',
			columnClass: 'm',
			escapeKey: 'cancel',
			buttons: {
				ok: {
					text: '<i class="fa fa-key"></i> Set password',
					btnClass: 'btn-blue',
					action: function () {
						//lấy đc 1 thông tin trên form
						//gửi đi
						//tùy theo phản hồi: OK=1 => tải lại ds user
						var pwd = $('#set-pwd').val();
						$.post(api,
							{
								action: 'set_pw',
								edit_uid: uid,
								edit_pwd: pwd,
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json);
									dialog_set_pw.close(); //đóng thằng dialog_set_pw lại
								} else {
									thong_bao_loi(json); //báo lỗi khi set_pw
								}
							}
						);//end $.post
						return false; // ko đóng
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			}
		});
	}
	function delete_user(uid) {
		let uid_logined = get_store('uid');
		if (uid_logined == uid) {
			thong_bao_loi({ ok: 0, msg: "Không tự xóa mình được!" }); //báo lỗi khi tự xóa
			return;
		}
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-circle-question',
			title: 'Xác nhận xóa?',
			content: 'Bạn có chắc muốn xóa user <b>' + uid + '</b> ?',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'red',
			columnClass: 'm',
			escapeKey: 'cancel',
			autoClose: 'cancel|15000',
			buttons: {
				ok: {
					text: '<i class="fa fa-circle-check"></i> ok Xóa đi',
					btnClass: 'btn-red',
					keys: ['enter'],
					action: function () {
						//gửi đi api: y/c xóa
						$.post(api,
							{
								action: 'delete_user',
								deluid: uid
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									list_user(); //sau khi delete_user thì tải lại
								} else {
									thong_bao_loi(json); //báo lỗi khi delete_user
								}
							}
						);//end $.post
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-blue',
				}
			}
		});
	}
	function list_user() {
		$.post(api,
			{
				action: 'list_user'
			},
			function (json) {
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					json_user = json;
					all_quyen = json.quyen;
					var s = '<h4>Danh sách user</h4>' +
						'<div class="table-responsive-sm"><table class="table table-hover"><thead><tr class="table-info"><th>STT</th><th>Uid</th><th>Fullname</th><th>Role</th><th>Last login</th><th>Action</th></tr></thead><tbody>';
					var stt = 0;
					for (var item of json.data) {
						s += '<tr>';
						s += '<td align="center">' + (++stt) + '</td>';
						s += '<td nowarp>' + item.uid + '</td>';
						s += '<td nowarp>' + item.fullname.replace(' ', ' ') + '</td>';
						s += '<td nowarp>' + item.rolename + '</td>';
						s += '<td nowarp>' + item.last + '</td>';
						var action = '<button class="btn btn-sm btn-warning btn-action-user" data-action="set_pw" data-uid="' + item.uid + '" title="Set password"><i class="fa fa-key"></i></button>';
						action += ' <button class="btn btn-sm btn-danger btn-action-user" data-action="delete_user" data-uid="' + item.uid + '" title="Delete user"><i class="fa fa-user-xmark"></i></button>';
						s += '<td>' + action + '</td></tr>';
						s += '</tr>';
					}
					s += '</tbody></table></div>';
					$('#list-user').html(s);
					$('.btn-action-user').click(function () {
						var action = $(this).data('action');
						var uid = $(this).data('uid');
						if (action == 'delete_user') {
							delete_user(uid);
						} else if (action == 'set_pw') {
							set_pw(uid);
						}
					});
				} else {
					thong_bao_loi(json); //báo lỗi khi list_user
				}
			}
		);//end get list_user
	}
	function do_change_pw() {
		//show tên , uid : ko cần nhập
		//nhập lại pwd, và pwd mới (pwd2)
		//gửi đi: action='do_change_pw',  uid (cookie  tự gửi), pwd, pwd2
		let uid = get_store('uid');
		var content = `
            <div class="mb-3 mt-3">
              <label for="old-uid" class="form-label">uid:</label>
              <input type="text" class="form-control" id="old-uid" value="`+ uid + `" disabled>
            </div>
            <div class="mb-3 mt-3">
              <label for="old-pwd" class="form-label">Password cũ:</label>
              <input type="password" class="form-control" id="old-pwd" placeholder="Nhập Password cũ">
            </div>
            <div class="mb-3 mt-3">
              <label for="new-pwd" class="form-label">Password mới:</label>
              <input type="password" class="form-control" id="new-pwd" placeholder="Nhập Password mới">
            </div>
            `;
		var dialog_change_pw = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-key',
			title: 'Đổi mật khẩu',
			content: content,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'red',
			columnClass: 'm',
			escapeKey: 'cancel',
			buttons: {
				ok: {
					text: '<i class="fa fa-key"></i> Đổi mật khẩu',
					btnClass: 'btn-blue',
					action: function () {
						var pwd = $('#old-pwd').val();
						var pwd2 = $('#new-pwd').val();
						$.post(api,
							{
								action: 'do_change_pw',
								pwd: pwd,
								pwd2: pwd2,
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									//cần lưu cookie mới
									setLocal("ck", json.cookie)
									setCookie('ck', json.cookie, 30);
									dialog_change_pw.close();
								} else {
									thong_bao_loi(json) //báo lỗi khi do_change_pw
								}
							}
						);//end $.post
						return false;//ko đóng
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					btnClass: 'btn-red',
				}
			}
		});
	}
	function admin_control_panel() {
		if (alert_not_login()) return;// khi vào admin_panel
		var content = `<p>Các tính năng dành cho bạn</p>
    <div class="table-responsive-sm">
    <table width="100%" id="table-control-panel">
    <tr>
      <td width="25%" align="center" class="space-begin" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-change-pw">1.&nbsp;Đổi&nbsp;mật&nbsp;khẩu</button></div></td>
      <td width="25%" align="center" class="space" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-user">2.&nbsp;Quản&nbsp;lý&nbsp;User</button></div></td>
      <td width="25%" align="center" class="space" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-setting">3.&nbsp;Cấu&nbsp;hình</button></div></td>
      <td width="25%" align="center" class="space-end" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-company">4.&nbsp;Công&nbsp;ty</button></div></td>
    </tr>
    <tr>
      <td width="25%" align="center" class="space-begin" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-suat">5.&nbsp;Suất&nbsp;ăn</button></div></td>
      <td width="25%" align="center" class="space" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-loai">6.&nbsp;Loại&nbsp;suất&nbsp;ăn</button></div></td>
      <td width="25%" align="center" class="space" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-don">7.&nbsp;Đơn&nbsp;nguyên</button></div></td>
      <td width="25%" align="center" class="space-end" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-combo">8.&nbsp;Setup&nbsp;Combo</button></div></td>
    </tr>
     <tr>
      <td width="25%" align="center" class="space-begin" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-order">9.&nbsp;Đặt&nbsp;đồ&nbsp;ăn</button></div></td>
      <td width="25%" align="center" class="space" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-talk">10.&nbsp;Hẹn&nbsp;giờ&nbsp;nói</button></div></td>
      <td width="25%" align="center" class="space" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-log">11.&nbsp;Tra&nbsp;cứu&nbsp;log</button></div></td>
      <td width="25%" align="center" class="space-end" nowarp><div class="d-grid"><button type="button" class="btn btn-block btn-primary" id="btn-manager-report">12.&nbsp;Thống&nbsp;kê</button></div></td>
    </tr>
    </table>
    </div>`;
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-user',
			title: 'Control Panel: <b>' + user_info.fullname + '</b>',
			content: content,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'blue',
			columnClass: 'm',
			escapeKey: 'cancel',
			buttons: {
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
				{
					$('#btn-change-pw').click(function () { do_change_pw(); });
					$('#btn-manager-user').click(function () { manager_user(); });
					$('#btn-manager-setting').click(function () { admin_setting(); });
					$('#btn-manager-company').click(function () { admin_company(); });
					$('#btn-manager-loai').click(function () { quan_ly_loai(); });
					$('#btn-manager-suat').click(function () { manager_suat(); });
					$('#btn-manager-don').click(function () { manager_don(); });
					$('#btn-manager-combo').click(function () { manager_combo(); });
					$('#btn-manager-log').click(function () { manager_log(); });
					$('#btn-manager-talk').click(function () { manager_talk(); });
					$('#btn-manager-order').click(function () { manager_order(); });
					$('#btn-manager-report').click(function () { manager_report(); });
				}
			}
		});
	}
	function manager_user() {
		if (alert_not_login()) return;// khi vào admin_panel
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-user',
			title: 'Quản lý User</b>',
			content: '<div id="list-user"></div>',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'blue',
			columnClass: 'xl',
			escapeKey: 'cancel',
			buttons: {
				add_user: {
					text: '<i class="fa fa-user-plus"></i> Add user',
					btnClass: 'btn-primary',
					action: function () {
						add_new_user();
						return false; //ko đóng dialog
					}
				},
				change_pw: {
					text: '<i class="fa fa-key"></i> Change Pw',
					btnClass: 'btn-warning',
					action: function () {
						do_change_pw();
						return false; //ko đóng dialog
					}
				},

				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
				{
					list_user(); //khi admin_panel show lần đầu
				}
			}
		});
	}
	//--end admin user manager--

	//--admin admin_company--
	function show_add_company() {
		//giống edit
		var content = `
            <div class="table-responsive-sm"><table align="center" width="100%" class="table-company">
              <tr>
                <td>Name:</td>
                <td><input type="text" class="form-control" id="edit-name" placeholder="Nhập tên công ty"></td>
              </tr>
              <tr>
                <td>Tên Việt:</td>
                <td>
                  <div class="input-group">
                    <input type="text" class="form-control" id="edit-tenviet" placeholder="Nhập tên tiếng Việt" >
                    <button class="btn btn-success noi-tieng-viet" type="button">Nói thử</button>
                  </div>
                </td>
              </tr>
              <tr>
                <td>Address:</td>
                <td><input type="text" class="form-control" id="edit-address" placeholder="Nhập địa chỉ"></td>
              </tr>
              <tr>
                <td>GPS:</td>
                <td>
                  <div class="input-group">
                    <input type="search" class="form-control" id="edit-gps" value="" placeholder="vd: 21.5842342,105.7934998">
                      <button class="btn btn-outline-primary" type="button" id="cmd_get_gps" title="Lấy tọa độ GPS của vị trí hiện tại">Get</button>
                  </div>
                </td>
              </tr>
              <tr>
                <td>Phone:</td>
                <td><input type="text" class="form-control" id="edit-phone" placeholder="Nhập sđt"></td>
              </tr>
              <tr>
                <td>Zalo:</td>
                <td><input type="text" class="form-control" id="edit-zalo" placeholder="https://zalo.me/..."></td>
              </tr
    <tr>
                <td colspan=2>Chọn trước món cho cty này ở chức năng Sửa</td>
            </tr>
            </table></div>
          `;
		var dialog_company_edit = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-pen-to-square',
			title: 'Thêm công ty mới',
			columnClass: 'l',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			content: content,
			type: 'green',
			buttons: {
				ok: {
					text: '<i class="fa fa-circle-check"></i> Thêm công ty',
					btnClass: 'btn-primary',
					action: function () {
						//làm ý 3
						var data = {
							action: 'add_company',
							name: $('#edit-name').val(),
							tenviet: $('#edit-tenviet').val(),
							address: $('#edit-address').val(),
							gps: $('#edit-gps').val(),
							phone: $('#edit-phone').val(),
							zalo: $('#edit-zalo').val(),
						}
						$.post(api,
							data,
							function (json) {
								if (json.ok) {
									thong_bao_ok(json);
									list_company();
									dialog_company_edit.close();
								} else {
									thong_bao_loi(json);
								}
							}
						);//end $.post
						return false; //ko đóng
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#cmd_get_gps').click(function () {
					if (navigator.geolocation) {
						navigator.geolocation.getCurrentPosition(function (gps) {
							$('#edit-gps').val(gps.coords.latitude + ',' + gps.coords.longitude);
							toastr["info"]('Đã lấy được gps: ' + gps.coords.latitude + ',' + gps.coords.longitude);
						});
					} else {
						toastr["warning"]('Không lấy được gps');
					}
				});
				$('.noi-tieng-viet').click(function () {
					play_tts($('#edit-tenviet').val(), 0); //ko san bay
				});
			}
		});
	}
	function show_edit_company(item, json) {
		var item_cong_ty = item;
		//liệt kê các việc cần làm
		//1.show 1 dialog: có các trường thông tin để nhập liệu
		//2.điền sẵn giá trị hiện tại của các trường
		//3.chờ bấm submit -> thu thập trên form -> gửi api -> thông báo kq
		var default_order = '';
		function in_order(id) {
			for (var d of item_cong_ty.default) {
				if (d.id === id) return true; //chỗ này === rất quan trọng, == thì là bug
			}
			return false;
		}
		function goi_y() {
			$.post(api,
				{
					action: 'goi_y_order',
					id_company: item_cong_ty.id
				},
				function (json) {
					if (json.ok) {
						thong_bao_ok(json, { w: 0, t: 1 });
						var content = `Công ty ${item.name} đã đặt các suất ăn:
              <div class="table-responsive-sm">
                <table class="table table-hover"><thead>
                <tr class="table-info">
                <th>STT</th>
                <th>Sign</th>
                <th>Name</th>
                <th style="text-align:right">Price</th>
                <th style="text-align:right">Sum&nbsp;Order</th>
                <th style="text-align:center">Enable</th>
                </tr>
                </thead><tbody>`;
						var stt = 0;
						var arr_goiy = []
						for (var sitem of json.data) {
							arr_goiy.push(sitem.id);
							content += `<tr class="${sitem.enable ? '' : 'table-danger'}">
                  <td align=center>${++stt}</td>
                  <td>${sitem.sign}</td>
                  <td>${sitem.name}</td>
                  <td align=right>${format_price(sitem.price)}</td>
                  <td align=right>${sitem.sl}</td>
                  <td align=center>${sitem.enable ? '<span class="badge rounded-pill bg-primary">Yes</span>' : '<span class="badge rounded-pill bg-danger">NO</span>'}</td>
                  </tr>`;
						}
						content += '</tbody></table></div>';
						$.confirm({
							animateFromElement: false,
							typeAnimated: false,
							icon: 'fa fa-hand-point-right',
							title: 'Gợi ý các suất ăn cho công ty: ' + item.name,
							columnClass: 'm',
							content: content,
							type: 'green',
							buttons: {
								ok: {
									text: '<i class="fa fa-circle-check"></i> Chọn theo gợi ý',
									btnClass: 'btn-info',
									action: function () {
										$('#cbo_default_order').val(arr_goiy);
										$('#cbo_default_order').trigger('change');
										change_suat_an_select2();
									}
								},
								cancel: {
									text: '<i class="fa fa-circle-xmark"></i> Close',
									keys: ['esc'],
									btnClass: 'btn-red',
								}
							}
						});
					} else {
						thong_bao_loi(json);
					}
				}
			);
		}
		for (var suat_item of json.suat) {
			if (in_order(suat_item.id)) {
				default_order += `<option selected value="${suat_item.id}">${suat_item.name} (${format_price(suat_item.price)})</option>`;
			}
			else {
				default_order += `<option value="${suat_item.id}">${suat_item.name} (${format_price(suat_item.price)})</option>`;
			}
		}

		var content = `
          <div class="table-responsive-sm">
            <table align="center" width="100%" class="table-company" id="table-list-company">
              <tbody>
                <tr>
                  <td width="12%">Name:</td>
                  <td><input type="text" class="form-control" id="edit-name" value="${item.name}" placeholder="Nhập tên công ty"></td>
                </tr>
                <tr>
                  <td width="12%">Tên Việt:</td>
                  <td>
                  <div class="input-group">
                    <input type="text" class="form-control" id="edit-tenviet" value="${item.tenviet}" placeholder="Nhập tên tiếng Việt" >
                    <button class="btn btn-success noi-tieng-viet" type="button">Nói thử</button>
                  </div>
                  </td>
                </tr>
                <tr>
                  <td>Address:</td>
                  <td><input type="text" class="form-control" id="edit-address" value="${item.address}" placeholder="Nhập địa chỉ"></td>
                </tr>
                <tr>
                  <td>GPS:</td>
                  <td>
                    <div class="input-group">
                      <input type="search" class="form-control" id="edit-gps" value="${item.lat ? item.lat + ',' : ''}${item.lng ? item.lng : ''}" placeholder="vd: 21.5842342,105.7934998">
                        <button class="btn btn-outline-primary" type="button" id="cmd_get_gps" title="Lấy tọa độ GPS của vị trí hiện tại">Get</button>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>Phone:</td>
                  <td><input type="text" class="form-control" id="edit-phone" value="${item.phone}" placeholder="Nhập sđt"></td>
                </tr>
                <tr>
                  <td>Zalo:</td>
                  <td><input type="text" class="form-control" id="edit-zalo" value="${item.zalo}" placeholder="https://zalo.me/..."></td>
                </tr>
                <tr>
                  <td id="goi-y-hay-an" title="Click để xem công ty này từng ăn món nào" nowarp>Hay&nbsp;ăn&nbsp;<i class="fa fa-circle-question" style="color:red"></i>:</td>
                  <td><select class="form-select" id="cbo_default_order" name="order[]" multiple="multiple" style="width: 100%">${default_order}</select></td>
                </tr>
              </tbody>
              <!--
              <tfoot>
                <tr><td colspan=2>
                  <button class="btn btn-info btnsm add-row-suat-an">add</button>
                </td></tr>
            </tfoot>
              -->
          </table>
      </div>
    `;
		function add_row_suat_an(item) {
			var thu = [2, 3, 4, 5, 6, 7, 8]
			for (var df of item_cong_ty.default) {
				if (df.id == item.id) {
					thu = df.thu;
					break;
				}
			}
			var suat = '';
			for (var suat_item of json.suat) {
				if (suat_item.id == item.id) {
					suat = suat_item;
					break;
				}
			}
			function hasThu(i) {
				for (var v of thu) {
					if (v == i) return true;
				}
			}
			var s = `
      <div class= "input-group" id = "nhom-ngay-${item.id}">
      <input type="text" class="form-control pc-only" value="${suat.sign} (${format_price(suat.price)})" disabled>
        <div class="input-group-text pp-checkbox" title="Thứ 2">
          <input type="checkbox" value="2" ${hasThu(2) ? 'checked' : ''}>
            <label class="thu">
              <div>2</div></label>
        </div>
        <div class="input-group-text pp-checkbox" title="Thứ 3">
          <input type="checkbox" value="3" ${hasThu(3) ? 'checked' : ''}>
            <label class="thu">
              <div>3</div></label>
        </div>
        <div class="input-group-text pp-checkbox" title="Thứ 4">
          <input type="checkbox" value="4" ${hasThu(4) ? 'checked' : ''}>
            <div>4</div></label>
          <label class="thu">
        </div>
        <div class="input-group-text pp-checkbox" title="Thứ 5">
          <input type="checkbox" value="5" ${hasThu(5) ? 'checked' : ''}>
            <label class="thu">
              <div>5</div></label>
        </div>
        <div class="input-group-text pp-checkbox" title="Thứ 6">
          <input type="checkbox" value="6" ${hasThu(6) ? 'checked' : ''}>
            <label class="thu">
              <div>6</div></label>
        </div>
        <div class="input-group-text pp-checkbox" title="Thứ 7">
          <input type="checkbox" value="7" ${hasThu(7) ? 'checked' : ''}>
            <label class="thu">
              <div>7</div></label>
        </div>
        <div class="input-group-text pp-checkbox" title="Chủ nhật">
          <input type="checkbox" value="8" ${hasThu(8) ? 'checked' : ''}>
            <label class="thu">
              <div>CN</div></label>
        </div>
      </div>`;
			var row = `<tr class= "row-them-chon-ngay"><td>
      <span class="pc-only">Chọn ngày:</span>
      <span class="mobile-only">${suat.sign}:</span>
      </td><td>${s}</td></tr>`;
			$('#table-list-company > tbody').append(row);
		}
		function change_suat_an_select2() {
			var selected = $('#cbo_default_order').find(':selected');
			$('#table-list-company > tbody > tr.row-them-chon-ngay').remove()
			for (var op of selected) {
				for (var suat_item of json.suat) {
					if (suat_item.id == op.value) {
						add_row_suat_an(suat_item); //change_suat_an_select2
						break;
					}
				}
			}
			$('.pp-checkbox,.pp-checkbox input').unbind();
			$('.pp-checkbox').click(function () {
				var c = $(this).find('input');
				var t = c.prop('checked');
				c.prop('checked', !t);
			});
			$('.pp-checkbox input').click(function () {
				var c = $(this);
				var t = c.prop('checked');
				c.prop('checked', !t);
			});
		}

		var dialog_company_edit = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-pen-to-square',
			title: 'Sửa thông tin công ty',
			columnClass: 'l',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			content: content,
			type: 'green',
			buttons: {
				ok: {
					text: '<i class="fa fa-circle-check"></i> Cập nhật',
					btnClass: 'btn-primary',
					action: function () {
						//làm ý 3
						var selected = $('#cbo_default_order').find(':selected');
						var default_order = [];
						for (var op of selected) {
							default_order.push(op.value);
						}

						if (default_order.length == 0) {
							thong_bao_loi({ ok: 0, msg: 'Phải chọn suất ăn' });
							$('#cbo_default_order').focus();
							return false;
						}

						//var selected = $('#cbo_default_order').find(':selected');
						var data_order = []
						for (var op of selected) {
							var id = parseInt(op.value);
							var arr_thu = []
							var thus = $(`#nhom-ngay-${id}`).find('input:checked')
							for (var thu of thus) {
								arr_thu.push(parseInt(thu.value));
							}
							data_order.push({ id: id, thu: arr_thu });
						}

						var data = {
							action: 'edit_company',
							id: item.id,
							name: $('#edit-name').val(),
							tenviet: $('#edit-tenviet').val(),
							address: $('#edit-address').val(),
							gps: $('#edit-gps').val(),
							phone: $('#edit-phone').val(),
							zalo: $('#edit-zalo').val(),
							default_order: default_order,
							data_order: JSON.stringify(data_order)
						}
						$.post(api, data,
							function (json) {
								if (json.ok) {
									thong_bao_ok(json, { w: 0, t: 1 });
									list_company();
									monitor('monitor', draw_init);
									dialog_company_edit.close();
								} else {
									thong_bao_loi(json);
								}
							}
						);//end $.post
						return false; //ko đóng
					}
				},
				goi_y: {
					text: '<i class="fa fa-hand-point-right"></i> Gợi ý',
					btnClass: 'btn-info',
					action: function () {
						goi_y();
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('#cmd_get_gps').click(function () {
					if (navigator.geolocation) {
						navigator.geolocation.getCurrentPosition(function (gps) {
							$('#edit-gps').val(gps.coords.latitude + ',' + gps.coords.longitude);
							toastr["info"]('Đã lấy được gps: ' + gps.coords.latitude + ',' + gps.coords.longitude);
						});
					} else {
						toastr["warning"]('Không lấy được gps');
					}
				});
				$('#goi-y-hay-an').click(function () {
					goi_y();
				});
				$('#cbo_default_order').select2({
					placeholder: 'Chọn suất ăn cho công ty',
					closeOnSelect: false,
					allowClear: true,
				});

				$('#cbo_default_order').on('select2:select', function (e) {
					change_suat_an_select2();
				});

				$('.noi-tieng-viet').click(function () {
					play_tts($('#edit-tenviet').val(), 0); //ko san bay
				});
				change_suat_an_select2();
			}
		});
	}
	function show_delete_company(item) {
		//thông báo sẽ xóa, cần xác nhận
		//khi xác nhận -> gửi đi id cần xóa -> chờ ok để tải lại
		if (alert_not_login()) return;// khi vào admin_setting
		if (not_allow()) return; //admin_setting chi danh cho admin
		var dialog_del_company = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-building',
			title: 'Xác nhận xóa công ty?',
			content: 'Bạn có chắc muốn xóa công ty <b>' + item.name + "</b> ?",
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'blue',
			columnClass: 'm',
			escapeKey: 'cancel',
			buttons: {
				ok: {
					text: '<i class="fa fa-circle-question"></i> Xóa ngay',
					btnClass: 'btn-red',
					action: function () {
						//gửi api để xóa
						$.post(api,
							{
								action: 'delete_company',
								id: item.id
							},
							function (json) {
								if (json.ok) {
									thong_bao_ok(json);
									list_company();
									dialog_del_company.close();
								}
								else {
									thong_bao_loi(json);
								}
							}
						);//end $.post
						return false; //ko đóng dialog
					}
				},

				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-blue',
				}
			},

		});
	}
	function get_suat(default_arr, all_suat) {
		function get_item_suat(suat, all_suat) {
			for (var item of all_suat) {
				if (item.id == suat.id) return item;
			}
			return null;
		}
		var s = [];
		for (var item of default_arr) {
			var suat = get_item_suat(item, all_suat);
			if (suat != null) s.push(suat);
		}
		return s;
	}
	function list_company() {
		$.post(api,
			{
				action: 'list_company'
			},
			function (json) {
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					json_company = json;
					var content = '<div class="table-responsive-sm">' +
						'<table id="ds_company" class="table table-hover table-striped">' +
						'<thead><tr class="table-info fw-bold">' +
						'<th class="text-center">STT</th>' +
						'<th>Công ty</th>' +
						'<th>Tên Tiếng Việt</th>' +
						'<th>Hay ăn</th>' +
						'<th>Địa chỉ</th>' +
						'<th>Chỉ đường</th>' +
						'<th>Phone</th>' +
						'<th>Zalo</th>' +
						'<th class="text-center">Sửa/Xóa</th>' +
						'</tr></thead><tbody>';

					var stt = 0;
					for (var item of json.data) {
						var gps = '';
						if (item.lat == null || item.lng == null) {
							gps = '';
						} else {
							gps = item.lat + ',' + item.lng;
							gps = ' <a class="btn btn-sm btn-info btn-go-map" data-gps="' + gps + '" href="https://www.google.com/maps/dir/here/' + gps + '" target="_blank" title="Xem đường đi trên Google Map tới ' + item.name + '"><i class="fa fa-location-dot" style="color:red"></i> Chỉ đường</a>';
						}

						item.gps = gps;

						var phone = item.phone;
						if (phone == 'null' || phone == '')
							phone = '';
						else
							phone = '<a href="tel:' + phone + '"><i class="fa fa-tty"></i> ' + phone + '</a>';
						item.phone2 = phone;

						var zalo = item.zalo;
						if (zalo == 'null' || zalo == '')
							zalo = '';
						else
							zalo = '<a href="' + zalo + '" target="_blank"><img src="/images/icon-zalo.png" style="width:24px"></a>';


						var action = '';
						action += '<button class="btn btn-sm btn-warning btn-action-company" data-cid="' + item.id + '" data-action="edit-company">Sửa</button>';
						action += ' ';
						action += '<button class="btn btn-sm btn-danger btn-action-company" data-cid="' + item.id + '" data-action="delete-company">Xóa</button>';
						var suat = get_suat(item.default, json.suat)
						var hay_an = '';
						for (var s of suat) {
							hay_an += `<span class= "badge bg-primary"> ${s.name}</span> `;
						}
						content += '<tr>' +
							'<td align=center nowarp>' + (++stt) + '</td>' +
							'<td align=left nowarp>' + (item.name) + '</td>' +
							'<td align=left nowarp>' + (item.tenviet) + '</td>' +
							'<td align=left nowarp>' + (hay_an) + '</td>' +
							'<td align=left nowarp>' + (item.address) + '</td>' +
							'<td align=left nowarp>' + gps + '</td>' +
							'<td align=left nowarp>' + (phone) + '</td>' +
							'<td align=left nowarp>' + (zalo) + '</td>' +
							'<td align=center nowarp>' + (action) + '</td>' +
							'</tr>';
					}
					content += "</tbody></table></div>";
					$('#list_company').html(content);
					$('.btn-action-company').click(function () {
						var id = $(this).data('cid');
						for (var item of json_company.data) {
							if (item.id == id) {
								var action = $(this).data('action');
								if (action == 'edit-company') {
									show_edit_company(item, json_company);
								} else if (action == 'delete-company') {
									show_delete_company(item);
								}
								break;
							}
						}
					});
				} else {
					$('#list_company').html(json.msg);
				}
			}
		);//end $.post
	}
	function admin_company() {
		if (alert_not_login()) return;// khi vào admin_setting
		if (not_allow()) return; //admin_setting chi danh cho admin
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-building',
			title: 'Các công ty đặt suất ăn',
			content: '<div id="list_company"></div>',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'blue',
			columnClass: 'xl',
			escapeKey: 'cancel',
			buttons: {
				add: {
					text: '<i class="fa fa-address-card"></i> Add new',
					btnClass: 'btn-blue',
					isHidden: true,
					action: function () {
						show_add_company();
						return false;
					}
				},
				reload: {
					text: '<i class="fa fa-arrows-rotate"></i> Reload',
					btnClass: 'btn-info',
					isHidden: true,
					action: function () {
						if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
						{
							list_company();
							return false;
						}
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
				{
					this.buttons.add.show();
					this.buttons.reload.show();
					list_company();
				}
			}
		});
	}
	//--end admin admin_company--

	//--admin setting zone--
	function show_edit_setting(item) {
		if (alert_not_login()) return;// khi vào admin_setting    
		if (not_allow()) return; //admin_setting chi danh cho admin
		var loai = 'number';
		switch (item.key) {
			case 'time_tam':
			case 'huy_delay':
			case 'tts_delay':
			case 'monitor_interval':
				loai = 'number';
				break;
			default:
				loai = 'text';
				break;
		}
		var content = `
    <div class= "mb-3 mt-3">
        <label for="set-key" class="form-label">Key:</label>
        <input type="text" class="form-control" id="set-key" value="`+ item.key + `" disabled>
      </div>
      <div class="mb-3 mt-3">
        <label for="set-value" class="form-label">`+ item.note + `:</label>
        <input type="`+ loai + `" class="form-control" id="set-value" placeholder="giá trị cũ: ` + item.value + `" value="` + item.value + `">
      </div>
    `;

		var dialog_edit_setting = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-pen-to-square',
			title: 'Thay đổi: ' + item.key,
			content: content,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'blue',
			columnClass: 'm',
			escapeKey: 'cancel',
			buttons: {
				ok: {
					text: '<i class="fa fa-check"></i> Cập nhật',
					btnClass: 'btn-primary',
					keys: ['enter'],
					action: function () {
						var new_value = $('#set-value').val();
						if (item.value == new_value) {
							//giống thì ko cần cập nhật
							thong_bao_ok({
								ok: 1, msg: "<b>" + item.key + " = " + item.value + "</b><br>Vẫn thế, không đổi!"
							}, { w: 0, t: 1 });
							dialog_edit_setting.close();
						} else {
							//khác thì mới gửi
							$.post(api,
								{
									action: 'edit_setting',
									key: item.key,
									value: $('#set-value').val()
								},
								function (json) {
									if (json.ok) {
										thong_bao_ok(json);
										dialog_edit_setting.close();
										list_setting();
									} else {
										thong_bao_loi(json);
									}
								}
							);//end $.post
						}
						return false; //ko đóng dialog_edit_setting ngay
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {

			}
		});
	}
	function apply_setting(json) {
		if (json.ok) {
			for (var item of json.data) {
				json[item.key] = item.value;
				switch (item.key) {
					case 'tab_title':
						document.title = item.value;
						break;
					case 'app_title':
						$('#app-title').html(item.value);
						break;
					case 'app_sologan':
						$('#app-sologan').html(item.value);
						break;
				}
			}
			json_setting = json;
		}
	}
	function get_list_setting() {
		$.post(api,
			{
				action: 'list_setting'
			},
			function (json) {
				if (json.ok) {
					apply_setting(json);
				}
			}
		);//end $.post
	}
	function list_setting() {
		if (alert_not_login()) return; // list_setting phai login truoc
		if (not_allow()) return; //list_setting chi danh cho admin
		$.post(api,
			{
				action: 'list_setting'
			},
			function (json) {
				var content = '';
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					apply_setting(json);
					content = '<div class="table-responsive-sm">' +
						'<table id="thong-ke-chi-tiet" class="table table-hover table-striped">' +
						'<thead><tr class="table-info fw-bold">' +
						'<th align=center>stt</th>' +
						'<th align=left>Key</th>' +
						'<th align=left>Description</th>' +
						'<th>Value</th>' +
						'<th align=center>Last change</th>' +
						'<th align=center>Change</th>' +
						'</tr></thead><tbody>';
					var stt = 0;
					for (var item of json.data) if (item.active) {
						content += '<tr>' +
							'<td align=center>' + (++stt) + '</td>' +
							'<td align=left>' + item.key + '</span></td>' +
							'<td align=left>' + item.note + ':</span></td>' +
							'<td><span class="badge rounded-pill bg-primary btn-change-setting" data-key="' + item.key + '">' + item.value + '</span></span></td>' +
							'<td align=center>' + item.time + '</span></td>' +
							'<td align=center><button data-key="' + item.key + '" class="btn btn-sm btn-info btn-change-setting" title="Change ' + item.note + '"><i class="fa fa-pen-to-square"></i></button></span></td>' +
							'</tr>'
					}
					content += '</tbody></table></div>';
				} else {
					content = 'Không có dữ liệu';
				}
				$('#list_setting').html(content);
				$('.btn-change-setting').click(function () {
					var key = $(this).data('key');
					for (var item of json.data) {
						if (item.key == key) {
							show_edit_setting(item);
							break;
						}
					}
				});
			}
		);//end $.post
	}
	function admin_setting() {
		if (alert_not_login()) return;// khi vào admin_setting
		if (not_allow()) return; //admin_setting chi danh cho admin
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-gear',
			title: 'Cài đặt các thông số',
			content: '<div id="list_setting"></div>',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			type: 'blue',
			columnClass: 'xl',
			escapeKey: 'cancel',
			buttons: {
				reset_default: {
					text: '<i class="fa fa-circle-radiation"></i> Reset Default',
					btnClass: 'btn-warning',
					isHidden: true,
					action: function () {
						var wait = 0;
						for (var key in default_setting) {
							var value = default_setting[key];
							wait++;
							$.post(api,
								{
									action: 'edit_setting',
									key: key,
									value: value,
								},
								function (json) {
									if (json.ok) {
										thong_bao_ok(json, { w: 0, t: 1 });
									}
									wait--;
									if (wait == 0)
										list_setting(); //sau khi reset
								}
							);//end $.post
						}
						setTimeout(function () {
							thong_bao_ok({ ok: 1, msg: 'Đã khôi phục giá trị mặc định' }, { t: 0, w: 1 })
						}, 100);
						return false;
					}
				},
				reload: {
					text: '<i class="fa fa-arrows-rotate"></i> Reload',
					btnClass: 'btn-info',
					isHidden: true,
					action: function () {
						if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
						{
							list_setting();
							return false;
						}
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
				{
					this.buttons.reset_default.show();
					this.buttons.reload.show();
					list_setting(); //cài đặt các thông số
				}
			}
		});
	}
	//--end admin setting zone--

	//--login zone--
	function load_gui() {
		if (logined) {
			//$('.login_info').html("");
			$('#cmdLogin').hide();
			$('#cmdLogout,.login_info,.btn-thuc-don,.btn-order').removeClass('not-show');
			$('#cmdLogout,.login_info,.btn-thuc-don,.btn-order').show();
			$('.login_info').click(function () {
				admin_control_panel();
			});
		} else {
			//$('.login_info').html('');
			$('#cmdLogin').removeClass('not-show');
			$('#cmdLogin').show();
			$('#cmdLogout,.login_info,.btn-thuc-don,.btn-order').hide();
		}
	}
	function do_login() {
		$('#cmdLogin').addClass("active");
		let uidck = get_store('uid');
		if (!uidck) uidck = '';
		if (uidck === undefined) uidck = '';
		let dialogLogin = $.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-key',
			title: 'Login system',
			type: 'blue',
			lazyOpen: true,
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			content: '' +
				'<form action="" class="formName">' +
				'<div class="form-group">' +
				'<label>Username:</label>' +
				'<input type="text" placeholder="Enter Username" class="uid form-control" value="' + uidck + '" required />' +
				'</div>' +
				'<div class="form-group">' +
				'<label>Password:</label>' +
				'<input type="password" placeholder="Enter password" class="pwd form-control" required />' +
				'</div>' +
				'</form>',
			escapeKey: 'cancel',
			buttons: {
				formSubmit: {
					text: '<i class="fa fa-circle-check"></i> Login',
					btnClass: 'btn-blue cmd-submit',
					action: function () {
						let uid = this.$content.find('.uid').val();
						let pwd = this.$content.find('.pwd').val();
						if (uid == '') {
							this.$content.find('.uid').focus();
							return false;
						}
						if (pwd == '') {
							this.$content.find('.pwd').focus();
							return false;
						}
						$.post(api,
							{
								action: "do_login",
								uid: uid,
								pwd: pwd,
							},
							function (json) {
								logined = json.ok;
								if (logined) {
									user_info = json;
									load_gui();
									localStorage.logined = JSON.stringify(json);
									setLocal("uid", json.uid)
									setLocal("ck", json.cookie)
									setCookie('uid', json.uid, 30);
									setCookie('ck', json.cookie, 30);
									dialogLogin.close();
								} else {
									load_gui();
									$.confirm({
										animateFromElement: false,
										typeAnimated: false,
										icon: 'fa fa-warning',
										title: 'Warning',
										escapeKey: 'ok',
										type: 'red',
										content: json.msg,
										autoClose: 'OK|5000',
										escapeKey: 'OK',
										buttons: {
											OK: {
												text: '<i class="fa fa-circle-check"></i> Close',
												keys: ['enter'],
												btnClass: 'btn-red',
												action: function () {
												}
											},
										},
										onDestroy: function () {
											dialogLogin.$content.find('.pwd').focus();
										}
									})
								}
							}
						);//end $.post
						return false;
					}
				},
				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Close',
					btnClass: 'btn-red',
				},
			},
			onClose: function () {
				$('#cmdLogin').removeClass("active");
			},
			onContentReady: function () {
				let self = this;
				if (uidck == '')
					self.$content.find('.uid').focus();
				else
					self.$content.find('.pwd').focus();
				self.$content.find('.uid').keyup(function (event) {
					if (event.keyCode === 13) {
						if (self.$content.find('.uid').val() == '')
							this.$content.find('.uid').focus();
						else
							self.$content.find('.pwd').focus();
					}
				});
				self.$content.find('.pwd').keyup(function (event) {
					if (event.keyCode === 13) {
						if (self.$content.find('.uid').val() == '')
							this.$content.find('.uid').focus();
						else if (self.$content.find('.pwd').val() == '')
							this.$content.find('.pwd').focus();
						else {
							let x = $.find('.cmd-submit');
							x[0].click();
						}
					}
				});
			}
		});
		dialogLogin.open();
	}
	function do_logout() {
		$.post(api,
			{
				action: "do_logout",
			},
			function (json) {
				if (json.ok) {
					thong_bao_ok(json, { w: 0, t: 1 });
					logined = false;
					gui_first = 0;
					eraseCookie('ck');
					eraseCookie('ngay');
					delLocal('ck');
					localStorage.clear();
					load_gui();
					window.location.href = "/";
				}
			}
		);//end $.post
	}
	function check_login() {
		let ck = get_store('ck');
		let uid = get_store('uid');
		if (ck != null && uid != null) {
			$.post(api,
				{
					action: "check_logined",
				},
				function (json) {
					logined = json.ok;
					if (logined) {
						user_info = json;
						localStorage.logined = JSON.stringify(json);
						setLocal("uid", json.uid)
						setLocal("ck", json.cookie)
						setCookie('uid', json.uid, 30);
						setCookie('ck', json.cookie, 30);
					}
					load_gui();
				}
			);//end $.post
		} else {
			logined = false;
			load_gui();
		}
	}
	//--end login zone--

	function manager_oto(id_ca) {
		if (alert_not_login()) return;
		if (!(logined && (user_info.role == 3 || user_info.role == 100))) {
			thong_bao_loi({ ok: 0, msg: 'Bạn không có quyền' });
			return;
		}

		var dem_cty = 0;
		var list_chon_oto = `<div class="table-responsive-sm">
                  <table width="100%" class="table table-bordered table-hover table-striped" id="table-list-cty-xe">
                  <thead>
                  <tr class="table-info">
                  <th style="text-align:center">ID</th>
                  <th>Công ty</th>
                  <th style="text-align:center">Xe 1</th>
                  <th style="text-align:center">Xe 2</th>
                  <th style="text-align:center">Xe 3</th>
                  <th style="text-align:center">Xe 4</th>
                  <th style="text-align:center">Xe 5</th>
                  <th>Ca ${ca_name[id_ca]}</th>
                  </tr></thead><tbody>`;
		json_global.find_suat = {};
		for (var item of json_global.suat) {
			json_global.find_suat[item.id] = item;
		}
		//var car = getLocal('car');
		var car = json_setting['oto' + id_ca];
		if (car) car = JSON.parse(car);
		function chon_xe(id_xe, car, id) {
			if (car) {
				var data_car;
				switch (id_xe) {
					case 1: data_car = car.car1; break;
					case 2: data_car = car.car2; break;
					case 3: data_car = car.car3; break;
					case 4: data_car = car.car4; break;
					case 5: data_car = car.car5; break;
				}
				if (data_car) {
					for (var item of data_car) {
						if (item == id) return 'checked';
					}
				}
			}
			return '';
		}
		for (var item of json_global.data) if (item.id > 0) {
			var ca_items = '', data_ca = null;
			switch (id_ca) {
				case 1: data_ca = item.c1; break;
				case 2: data_ca = item.c2; break;
				case 3: data_ca = item.c3; break;
				case 4: data_ca = item.c4; break;
			}
			if (data_ca && data_ca.length > 0) {
				dem_cty++;
				for (var sitem of data_ca) {
					ca_items += `${json_global.find_suat[sitem.id].sign}<span class="badge rounded-pill bg-primary">${sitem.sl}</span> `;
				}
				var x1 = chon_xe(1, car, item.id);
				var x2 = chon_xe(2, car, item.id);
				var x3 = chon_xe(3, car, item.id);
				var x4 = chon_xe(4, car, item.id);
				var x5 = chon_xe(5, car, item.id);
				list_chon_oto += `<tr title="Công ty: ${item.name}" >
					<td align="center" class="xoa-chon-pp" data-cid="${item.id}">${item.id}</td>
					<td class="btn-company-order2" data-cid="${item.id}" align="right">${item.name}</td>
					<td class="chon-pp" align="center"><input class="oto oto1" type="radio" name="cty_${item.id}" value="${item.id}" ${x1}>1</td>
					<td class="chon-pp" align="center"><input class="oto oto2" type="radio" name="cty_${item.id}" value="${item.id}" ${x2}>2</td>
					<td class="chon-pp" align="center"><input class="oto oto3" type="radio" name="cty_${item.id}" value="${item.id}" ${x3}>3</td>
					<td class="chon-pp" align="center"><input class="oto oto4" type="radio" name="cty_${item.id}" value="${item.id}" ${x4}>4</td>
					<td class="chon-pp" align="center"><input class="oto oto5" type="radio" name="cty_${item.id}" value="${item.id}" ${x5}>5</td>
					<td class="btn-company-order2" data-cid="${item.id}">${ca_items}</td>
					</tr>`;
			}
		}
		list_chon_oto += '</table></div>';
		var content = '';
		if (dem_cty == 0) {
			//list_chon_oto = $``;
			list_chon_oto = `<div class="alert alert-danger">Ca ${ca_name[id_ca]} không có hàng &lt=&gt không cần phân xe!</div>`;

			content = list_chon_oto;
		}
		else {
			content = `
    <ul class="nav nav-tabs" id="myTab" role="tablist">
      <li class="nav-item" role="presentation">
        <button class="nav-link active tab-thuc-don" id="tab-1" data-bs-toggle="tab" data-bs-target="#tab-1-content" type="button" role="tab" aria-controls="tab-1-content" aria-selected="true">Phân xe</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link tab-thuc-don" id="tab-2" data-bs-toggle="tab" data-bs-target="#tab-2-content" type="button" role="tab" aria-controls="tab-2-content" aria-selected="false">Thống kê</button>
      </li>      
    </ul>
    <div class="tab-content" id="myTabContent">
      <div class="tab-pane fade show active" id="tab-1-content" role="tabpanel" aria-labelledby="tab-1" tabindex="0">
        <p>Setup Xe nào chở đồ tới công ty nào</p>
        <div id="list-oto">${list_chon_oto}</div>
      </div>
      <div class="tab-pane fade" id="tab-2-content" role="tabpanel" aria-labelledby="tab-2" tabindex="1">
	    <p>Chi tiết Xe nào chở đồ gì</p>
        <div id="list-tk-oto">Hãy bấm nút thống kê</div>
      </div>
    </div>
	<P>HÃY KIỂM TRA ĐẦY ĐỦ TRƯỚC KHI XUẤT PHÁT</P>
	`;
		}
		$.confirm({
			animateFromElement: false,
			typeAnimated: false,
			icon: 'fa fa-truck',
			title: 'Thống kê theo ô tô',
			closeIcon: true,
			closeIconClass: 'fa fa-close',
			columnClass: 'xl',
			type: 'blue',
			escapeKey: 'cancel',
			content: content,
			buttons: {
				report: {
					text: '<i class="fa fa-flag-checkered"></i> Thống kê',
					btnClass: 'btn-primary',
					isHidden: dem_cty == 0,
					action: function () {
						var all_cty = [];
						for (var item of json_global.data) if (item.id > 0) {
							var data_ca = null;
							switch (id_ca) {
								case 1: data_ca = item.c1; break;
								case 2: data_ca = item.c2; break;
								case 3: data_ca = item.c3; break;
								case 4: data_ca = item.c4; break;
							}
							if (data_ca && data_ca.length > 0)
								all_cty.push(item.id);
						}
						if (all_cty.length == 0) return false;
						function removeItemOnce(arr, value) {
							var index = arr.indexOf(value);
							if (index > -1) {
								arr.splice(index, 1);
							}
							return arr;
						}
						function timxe(xe) {
							var kq = [];
							$('.oto' + xe + ':checked').each(function (index, item) {
								var id = parseInt(item.value);
								kq.push(id);
								all_cty = removeItemOnce(all_cty, id);
							});
							return kq;
						}
						var car = {};
						car.car1 = timxe(1);
						car.car2 = timxe(2);
						car.car3 = timxe(3);
						car.car4 = timxe(4);
						car.car5 = timxe(5);
						if (all_cty.length == 0) {
							var str_car_ok = JSON.stringify(car);
							json_setting['oto' + id_ca] = str_car_ok;
							$.post(api,
								{
									action: 'report_oto',
									id_ca: id_ca,
									key: 'oto' + id_ca,
									value: str_car_ok
								},
								function (json) {
									if (json.ok) {
										$('#tab-2').click();
										show_report_oto(id_ca, json);
									} else {
										thong_bao_loi(json, { w: 0, t: 1 });
									}
								}
							);
						}
						else {
							var list_cty_chua_chon = '<ul>';
							for (var id of all_cty) {
								for (var cty of json_global.data) {
									if (cty.id == id) {
										list_cty_chua_chon += `<li>${cty.id}. ${cty.name}</li>`;
										break;
									}
								}
							}
							list_cty_chua_chon += '</ul>';
							thong_bao_loi({ ok: 0, msg: 'Còn công ty chưa chọn xe<br>' + list_cty_chua_chon })
						}
						return false;
					}
				},

				cancel: {
					text: '<i class="fa fa-circle-xmark"></i> Đóng',
					keys: ['esc'],
					btnClass: 'btn-red',
				}
			},
			onContentReady: function () {
				$('td.chon-pp').click(function () {
					$(this).children('input').prop('checked', true);
				});
				$('td.xoa-chon-pp').click(function () {
					var id = $(this).data('cid');
					$('input.oto[name=cty_' + id + ']').prop('checked', false);
				});

				$('.btn-company-order2').click(function () {
					var id = $(this).data('cid');
					if (id > 0) {
						for (var item of json_global.data) {
							if (item.id == id) {
								show_order_total_one_company(item);
								break;
							}
						}
					}
				});
			}
		});
	}
	function main_init() {
		var ck_del = ['xbc', '__pat', '__pvi', '__tbc', 'today'];
		for (var cki of ck_del) eraseCookie(cki);

		toastr.options = {
			"closeButton": true,
			"debug": false,
			"newestOnTop": true,
			"progressBar": false,
			"positionClass": "toast-top-right",
			"preventDuplicates": true,
			"onclick": null,
			"showDuration": "300",
			"hideDuration": "1000",
			"timeOut": "5000",
			"extendedTimeOut": "1000",
			"showEasing": "swing",
			"hideEasing": "linear",
			"showMethod": "fadeIn",
			"hideMethod": "fadeOut"
		}
		get_list_setting();

		ngay = getLocal('ngay');

		monitor('monitor', draw_init);
		setInterval(function () {
			$.post(api,
				{
					action: 'get_mp3',
					last_mp3_id: last_mp3_id,
					last_talk_id: last_talk_id
				},
				function (json) {
					if (json.ok) {
						if (json.mp3_short.ok) {
							monitor('monitor', draw_init);
							for (var item of json.mp3_short.data) {
								mp3_hangdoi(item.id, item.mp3, item.time); //khi có dữ liệu mới
							}
						}
						last_talk_id = json.mp3_talk.last_talk_id;
						if (json.mp3_talk.ok) {
							for (var item of json.mp3_talk.data) {
								mp3_talk(item.id, item.message, item.time_say); //khi có dữ liệu mới
							}
						}
					}
				}
			);
			auto_play_in_queue();
		}, 3000); //3s

		$('.btn-thuc-don').click(function () { thuc_don(); });
		$('#cmdLogin').click(function () { do_login() });
		$('#cmdLogout').click(function () { do_logout(); });
		check_login(); //auto login
	}
	main_init();
}); //end ready