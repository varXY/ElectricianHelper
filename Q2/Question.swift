//
//  Question.swift
//  Questions
//
//  Created by 文川术 on 15/9/3.
//  Copyright (c) 2015年 xiaoyao. All rights reserved.
//

import Foundation

class Question {

	var question: String = ""
	var rightAnswer: String = ""
	var wrongAnswer: String = ""

	func getQestions(numberOfQuestions: Int, type: Int) -> [Question] {
		var questionMarks = [Int]()
		var questions = [Question]()

		switch type {
		case 0:
			questionMarks = getRandomNumbers(numberOfQuestions, uiform: 301)
			for i in questionMarks { questions.append(getBeginnerQuestion(i)!) }
		case 1:
			questionMarks = getRandomNumbers(numberOfQuestions, uiform: 233)
			for i in questionMarks { questions.append(getIntermediateQuestions(i)!) }
		default:
			break
		}

		return questions
	}

	func getRandomNumbers(amount: Int, uiform: UInt32) -> [Int] {
		var result = [Int]()

		repeat {
			let number = Int(arc4random_uniform(uiform))
			if let sameAtIndex = result.indexOf(number) {
				result.removeAtIndex(sameAtIndex)
			}
			result.append(number)
		} while result.count < amount

		return result
	}

	func getBeginnerQuestion(number: Int) -> Question? {
		let question = Question()

		switch number {
		case 0:
			question.question = "电气隔离变压器二次侧的导线长度多少合适？"
			question.rightAnswer = "不宜太长"
			question.wrongAnswer = "越长越好"
			return question
		case 1:
			question.question = "电工至少多长时间对漏电保护器用试验按钮试验一次？"
			question.rightAnswer = "每月"
			question.wrongAnswer = "每季度"
			return question
		case 2:
			question.question = "独立避雷针的接地体与其他邻近接地体之间的最小距离为："
			question.rightAnswer = "3m"
			question.wrongAnswer = "1.5m"
			return question
		case 3:
			question.question = "成套开关柜使用的漏电保护器，其动作电流应取："
			question.rightAnswer = "100mA"
			question.wrongAnswer = "150mA"
			return question
		case 4:
			question.question = "漏电保护装置的额定不动作电流不得低于额定动作电流的多少倍？"
			question.rightAnswer = "0.5倍"
			question.wrongAnswer = "0.35倍"
			return question
		case 5:
			question.question = "家用电器回路使用的漏电保护器，其动作电流应取："
			question.rightAnswer = "30mA"
			question.wrongAnswer = "50mA"
			return question
		case 5:
			question.question = "高灵敏度电流型漏电保护装置是指额定漏电动作电流多大及以下的漏电保护装置？"
			question.rightAnswer = "30mA"
			question.wrongAnswer = "60mA"
			return question
		case 6:
			question.question = "为防止电气火灾使用的漏电保护器，其动作电流应取："
			question.rightAnswer = "300mA"
			question.wrongAnswer = "500mA"
			return question
		case 7:
			question.question = "用于防止漏电火灾的漏电报警装置的动作电流约为："
			question.rightAnswer = "200-300mA"
			question.wrongAnswer = "300-400mA"
			return question
		case 8:
			question.question = "装设在烟囱顶端的用圆钢制作的避雷针，圆钢直径不得小于："
			question.rightAnswer = "20mm"
			question.wrongAnswer = "15mm"
			return question
		case 9:
			question.question = "电气隔离安全的实质是："
			question.rightAnswer = "将接地电网转换成不接地电网"
			question.wrongAnswer = "将不接地电网转换成接地电网"
			return question
		case 10:
			question.question = "单相安全隔离变压器的额定容量不应超过："
			question.rightAnswer = "10kVA"
			question.wrongAnswer = "15kVA"
			return question
		case 11:
			question.question = "FS 系列阀型避雷器主要由什么组成？"
			question.rightAnswer = "瓷套、火花间隙、非线性电阻"
			question.wrongAnswer = "瓷套、火花间隙、线性电阻"
			return question
		case 12:
			question.question = "上级漏电保护器的额定漏电流应比下级漏电保护器的额定漏电流大还是小？"
			question.rightAnswer = "大"
			question.wrongAnswer = "小"
			return question
		case 13:
			question.question = "《安全生产法》规定，生产经营单位应当在较大危险因素的生产经营场所和有关设施、设备上，设置明显的："
			question.rightAnswer = "安全警示标志"
			question.wrongAnswer = "正在施工标志"
			return question
		case 14:
			question.question = "安全隔离变压器输入回路与输出回路之间的绝缘电阻不应低于："
			question.rightAnswer = "5MΩ"
			question.wrongAnswer = "3MΩ"
			return question
		case 15:
			question.question = "标准上规定防雷装置的接地电阻一般指什么电阻？"
			question.rightAnswer = "冲击接地电阻"
			question.wrongAnswer = "工频接地电阻"
			return question
		case 16:
			question.question = "电流型漏电保护装置采用什么作为检测元件？"
			question.rightAnswer = "零序电流互感器"
			question.wrongAnswer = "零序电压互感器"
			return question
		case 17:
			question.question = "验电前，宜先在有电设备上进行试验，确认验电器良好；无法在有电设备上进行试验时，可用高压发生器等确证验电器良好。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 18:
			question.question = "电工作业人员包括从事电气装置运行、检修和试验工作的人员，不包括电气安装和装修人员。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 19:
			question.question = "送电操作前应除去或拆除为检修装设的临时安全措施和临时接地线。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 20:
			question.question = "接地体离建筑物墙基之间的地下距离不得小于1.5m。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 21:
			question.question = " PE线不得穿过漏电保护器，但PEN线可以穿过漏电保护器。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 22:
			question.question = "雷雨天气户外巡视应远离接地装置，并应穿绝缘靴。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 23:
			question.question = "宾馆客房内的插座应装设漏电保护装置。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 24:
			question.question = "爆炸危险场所的工作零线应当与保护零线合用。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 25:
			question.question = "在发生人身触电事故时，可以不经许可，即行断开有关设备的电源，但事后应立即报告调度(或设备运行管理单位)和上级部门。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 26:
			question.question = "送电操作应当先合上负荷侧隔离开关，后合上电源侧隔离开关，最后合上断路器。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 27:
			question.question = "工作零线必须经过漏电保护器，保护零线不得经过漏电保护器。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 28:
			question.question = "电气设备的重复接地装置可以与独立避雷针的接地装置连接起来。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 29:
			question.question = "送电操作后应检查电压、负荷是否正常。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 30:
			question.question = "照明及其他单相用电负载要均匀分布在三相电源线上。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 31:
			question.question = "油料火灾可用水灭火。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 32:
			question.question = "扑灭电器设备火灾时，首先要切断电源，在切断电源后，可以使用水进行灭火。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 33:
			question.question = "蓄电池可能有氢气排出，应有良好的通风。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 34:
			question.question = "泡沫灭火机不能用于带电灭火。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 35:
			question.question = "停电操作应当先断开断路器，后断开负荷侧隔离开关，最后断开电源侧隔离开关。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 36:
			question.question = "下面用来保护电力设备的是："
			question.rightAnswer = "避雷器"
			question.wrongAnswer = "避雷线"
			return question
		case 37:
			question.question = "运行状态是断路器和隔离开关都处在合闸位置的状态。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 38:
			question.question = "工作零线和保护零线都应当穿过漏电保护器。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 39:
			question.question = "接地体上端离地面深度不应小于："
			question.rightAnswer = "0.6m"
			question.wrongAnswer = "0.5m"
			return question
		case 40:
			question.question = "阀型避雷器是由火花间隙和什么组成？"
			question.rightAnswer = "阀电阻片"
			question.wrongAnswer = "绝缘电阻"
			return question
		case 41:
			question.question = "多少米以上的高楼要有防雷设施？"
			question.rightAnswer = "45m"
			question.wrongAnswer = "60m"
			return question
		case 42:
			question.question = "三相电A、B、C的颜色表示分别是："
			question.rightAnswer = "黄、绿、红"
			question.wrongAnswer = "红、绿、黄"
			return question
		case 43:
			question.question = "火线、零线、接地线的符号表示分别为："
			question.rightAnswer = "L、N、PE"
			question.wrongAnswer = "PE、N、L"
			return question
		case 44:
			question.question = "中国使用的正弦交流电的频率是多少？"
			question.rightAnswer = "50Hz"
			question.wrongAnswer = "60Hz"
			return question
		case 45:
			question.question = "钳形电流表上读出的交流电流值是电流的："
			question.rightAnswer = "有效值"
			question.wrongAnswer = "平均值"
			return question
		case 46:
			question.question = "低压配电柜背面通道宽度不应低于："
			question.rightAnswer = "1.0m"
			question.wrongAnswer = "0.8m"
			return question
		case 47:
			question.question = "高压设备在不带电的情况下，是否允许电气工作人员单独移开或越过遮拦进行工作？"
			question.rightAnswer = "不允许"
			question.wrongAnswer = "允许"
			return question
		case 48:
			question.question = "“220V、40W”的电灯L1接到220V电路上，“36V、40W”的电灯接到36V电路上，则："
			question.rightAnswer = "一样亮"
			question.wrongAnswer = "L1较亮"
			return question
		case 49:
			question.question = "测量绝缘电阻的仪表是："
			question.rightAnswer = "摇表"
			question.wrongAnswer = "万用表"
			return question
		case 50:
			question.question = "导线的允许载流量应该大于导线的最大工作电流。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 51:
			question.question = "低压设备停电检修时，将检修设备各方面电源断开后，应立即："
			question.rightAnswer = "取下熔断器"
			question.wrongAnswer = "装设接地线"
			return question
		case 52:
			question.question = "测量低压电缆及二次电缆的绝缘电阻时应使用多大的摇表？"
			question.rightAnswer = "500V"
			question.wrongAnswer = "1000V"
			return question
		case 53:
			question.question = "母线的颜色有统一规定，其中W相线的颜色规定为？"
			question.rightAnswer = "红色 "
			question.wrongAnswer = "黄色"
			return question
		case 54:
			question.question = "在不接地的电压电网的绝缘监视中，当3只电压表读数均为相电压时，则表示电网："
			question.rightAnswer = "对地绝缘正常"
			question.wrongAnswer = "某相绝缘恶化"
			return question
		case 55:
			question.question = "在什么线上严禁通过工作电流，且严禁断线？"
			question.rightAnswer = "PE线"
			question.wrongAnswer = "N线"
			return question
		case 56:
			question.question = "当负荷电流达到熔断器熔体的额定电流时，熔体将："
			question.rightAnswer = "不会熔断"
			question.wrongAnswer = "立即熔断"
			return question
		case 57:
			question.question = "三相对称负载采用三角形接法接到线电压为380V的三相电源上，已知负载电流为10A，则火线中的电流为多少？"
			question.rightAnswer = "17.32A"
			question.wrongAnswer = "10A"
			return question
		case 58:
			question.question = "用三只电压表来监视中性点不接地电网的绝缘，当发生单相接地时，接地相电压表读数将会？"
			question.rightAnswer = "急剧降低"
			question.wrongAnswer = "显著升高"
			return question
		case 59:
			question.question = "安装单相三孔插座，零线孔在："
			question.rightAnswer = "左"
			question.wrongAnswer = "右"
			return question
		case 60:
			question.question = "电容器组不允许装设："
			question.rightAnswer = "自动复合闸装置"
			question.wrongAnswer = "熔断器"
			return question
		case 61:
			question.question = "母线的着色有统一规定，其中不接地中性线的颜色规定为："
			question.rightAnswer = "紫色"
			question.wrongAnswer = "蓝色"
			return question
		case 62:
			question.question = "在有爆炸性危险场所，配线方式应采用什么配线？"
			question.rightAnswer = "钢管"
			question.wrongAnswer = "塑料管"
			return question
		case 63:
			question.question = "碘钨灯等高热灯具与易燃物距离不宜小于："
			question.rightAnswer = "1000mm"
			question.wrongAnswer = "800mm"
			return question
		case 64:
			question.question = "电流互感器的二次侧回路采用铜芯绝缘导线，其截面应不小于多少平方毫米？"
			question.rightAnswer = "2.5"
			question.wrongAnswer = "1.5"
			return question
		case 65:
			question.question = "在施工地点，临近戴电设备的遮栏上应悬挂什么标示牌？"
			question.rightAnswer = "止步，高压危险"
			question.wrongAnswer = "请勿合闸"
			return question
		case 66:
			question.question = "当线路或设备的负荷超过允许范围时，经延时后切断电源的保护方式是什么？"
			question.rightAnswer = "过载保护"
			question.wrongAnswer = "缺相保护"
			return question
		case 67:
			question.question = "装拆接地线应由几人进行？"
			question.rightAnswer = "2人"
			question.wrongAnswer = "1人"
			return question
		case 68:
			question.question = "按规程规定220V线路允许的电压损失是："
			question.rightAnswer = "11V"
			question.wrongAnswer = "22V"
			return question
		case 69:
			question.question = "三相四线制电路中采用漏电保护时，应穿过零序电流互感器的是："
			question.rightAnswer = "相线和零线"
			question.wrongAnswer = "相线"
			return question
		case 70:
			question.question = "低压脱扣器的瞬动脱扣器在线路上是作为什么保护使用？"
			question.rightAnswer = "短路保护"
			question.wrongAnswer = "过载保护"
			return question
		case 71:
			question.question = "照明线路常见的故障是："
			question.rightAnswer = "漏电"
			question.wrongAnswer = "电压过高"
			return question
		case 72:
			question.question = "属于安全电压等级的是："
			question.rightAnswer = "36V"
			question.wrongAnswer = "50V"
			return question
		case 73:
			question.question = "与金属导体的电阻有关的因素是："
			question.rightAnswer = "导体长度"
			question.wrongAnswer = "所加电压大小"
			return question
		case 74:
			question.question = "电气线路从安全角度考虑对它的要求有："
			question.rightAnswer = "导电能力"
			question.wrongAnswer = "横截面大小"
			return question
		case 75:
			question.question = "电容器运行时发生什么情况必须立刻停止使用？"
			question.rightAnswer = "外壳膨胀"
			question.wrongAnswer = "三相电流出现不平衡"
			return question
		case 76:
			question.question = "在纯电阻正弦交流电路中："
			question.rightAnswer = "消耗有功功率"
			question.wrongAnswer = "消耗无功功率"
			return question
		case 77:
			question.question = "室内配线导线截面的选择主要依据是："
			question.rightAnswer = "导线的安全电流值"
			question.wrongAnswer = "导线的绝缘程度"
			return question
		case 78:
			question.question = "重复接地的主要作用是减轻零线断线时造成的触电危险？"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 79:
			question.question = "避雷器可以预防高大建筑物免遭雷击。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 80:
			question.question = "供电企业低压供电的额定电压：单相为220V三相为380V？"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 81:
			question.question = "由三个频率相同、电势振幅相等、相位差互差 120°角的交流电路组成的电力系统，叫三相交流电。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 82:
			question.question = "两只额定电压相同的电阻，串联接在电路中，则阻值较大的电阻会："
			question.rightAnswer = "发热量较大"
			question.wrongAnswer = "发热量较小"
			return question
		case 83:
			question.question = "万用表的开关是用来："
			question.rightAnswer = "转换测量种类及量程"
			question.wrongAnswer = "接通电流"
			return question
		case 84:
			question.question = "绝缘手套测验周期为："
			question.rightAnswer = "六个月一次"
			question.wrongAnswer = "每年一次"
			return question
		case 85:
			question.question = "绝缘靴的试验周期是："
			question.rightAnswer = "六个月一次"
			question.wrongAnswer = "每年一次"
			return question
		case 86:
			question.question = "在值班期间需要移开或越过遮栏时："
			question.rightAnswer = "必须有监护人在场"
			question.wrongAnswer = "必须有领导在场"
			return question
		case 87:
			question.question = "接地中线相色漆规定涂为："
			question.rightAnswer = "黑"
			question.wrongAnswer = "紫"
			return question
		case 88:
			question.question = "变电站（所）设备接头和线夹的最高允许温度为："
			question.rightAnswer = "85 ℃"
			question.wrongAnswer = "95 ℃"
			return question
		case 89:
			question.question = "电力变压器的油起什么作用？"
			question.rightAnswer = "绝缘和灭弧 "
			question.wrongAnswer = "绝缘和散热"
			return question
		case 90:
			question.question = "带电设备着火时不得使用："
			question.rightAnswer = "泡沫灭火器"
			question.wrongAnswer = "二氧化碳灭火器"
			return question
		case 91:
			question.question = "倒闸操作票至少要保存多长时间？"
			question.rightAnswer = "3个月"
			question.wrongAnswer = "1个月"
			return question
		case 92:
			question.question = "各断路器的配合中，电路上一级的熔断时间应为下一级熔断器的几倍以上？"
			question.rightAnswer = "3倍"
			question.wrongAnswer = "2倍"
			return question
		case 93:
			question.question = "凡接到任何违反电器安全工作规程制度的命令时应："
			question.rightAnswer = "拒绝执行"
			question.wrongAnswer = "部分执行"
			return question
		case 94:
			question.question = "指针万用表的优劣，主要看？"
			question.rightAnswer = "灵敏度高低"
			question.wrongAnswer = "量程大小"
			return question
		case 95:
			question.question = "交流电机在空载运行时，功率因素很"
			question.rightAnswer = "低"
			question.wrongAnswer = "高"
			return question
		case 96:
			question.question = "变压器铁心应接地，但只允许有一点接地。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 97:
			question.question = "通过人体的安全直流电流在多少以下？"
			question.rightAnswer = "50mA"
			question.wrongAnswer = "60mA"
			return question
		case 98:
			question.question = "将一根导线均匀拉长为原长度的3倍，则阻值为原来的几倍？"
			question.rightAnswer = "9倍"
			question.wrongAnswer = "3倍"
			return question
		case 99:
			question.question = "阻值不随外加电压或电流的大小而改变的电阻叫："
			question.rightAnswer = "线性电阻 "
			question.wrongAnswer = "固定电阻"
			return question
		case 100:
			question.question = "阻值随外加电压或电流的大小而改变的电阻叫："
			question.rightAnswer = "非线性电阻"
			question.wrongAnswer = "可变电阻"
			return question
		case 101:
			question.question = "额定电压为220V的灯泡接在110V电源上，灯泡的功率是原来的："
			question.rightAnswer = "1/4"
			question.wrongAnswer = "1/2"
			return question
		case 102:
			question.question = "电路主要由负载、线路、电源和什么组成？"
			question.rightAnswer = "开关"
			question.wrongAnswer = "仪表"
			return question
		case 103:
			question.question = "交流电的三要素是指最大值、频率和什么？"
			question.rightAnswer = "初相角"
			question.wrongAnswer = "相位"
			return question
		case 104:
			question.question = "两根平行导线通过同向电流时，导体之间相互："
			question.rightAnswer = "吸引"
			question.wrongAnswer = "排斥"
			return question
		case 105:
			question.question = "集肤效应指：在导体中的电流，越接近于导体表面，其什么越大？"
			question.rightAnswer = "电流"
			question.wrongAnswer = "电压"
			return question
		case 106:
			question.question = "在三相四线制中，当三相负载不平衡时，三相电压会相等，中性线电流："
			question.rightAnswer = "不等于零"
			question.wrongAnswer = "等于零"
			return question
		case 107:
			question.question = "串联电路中，电压的分配与电阻成："
			question.rightAnswer = "正比"
			question.wrongAnswer = "反比"
			return question
		case 108:
			question.question = "并联电路中，电流的分配与电阻成："
			question.rightAnswer = "反比"
			question.wrongAnswer = "正比"
			return question
		case 109:
			question.question = "在纯电感电路中，没有能量消耗，只有能量："
			question.rightAnswer = "交换"
			question.wrongAnswer = "增强"
			return question
		case 110:
			question.question = "电压互感器的一次绕组的匝数远大于二次绕组的匝数。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 111:
			question.question = "二极管的主要特性是？"
			question.rightAnswer = "单向导通"
			question.wrongAnswer = "整流"
			return question
		case 112:
			question.question = "建筑电气图上的总平面图要精确到："
			question.rightAnswer = "厘米"
			question.wrongAnswer = "分米"
			return question
		case 113:
			question.question = "建筑电气安装图一般用什么表示？"
			question.rightAnswer = "平面图"
			question.wrongAnswer = "立体图"
			return question
		case 114:
			question.question = "并列运行的变压器其容量之比一般不超过："
			question.rightAnswer = "3:1"
			question.wrongAnswer = "4:1"
			return question
		case 115:
			question.question = "为防止分接开关故障，应测量分接开关接头阻值，其相差不超过："
			question.rightAnswer = "2%"
			question.wrongAnswer = "1.5%"
			return question
		case 116:
			question.question = "油浸变压器在正常情况下为使绝缘油不致过速氧化，上层油温不宜超过多少度？"
			question.rightAnswer = "85"
			question.wrongAnswer = "95"
			return question
		case 117:
			question.question = "变压器绝缘自投入运行后，在允许条件下运行，其寿命可达多少年？"
			question.rightAnswer = "20 ~ 25"
			question.wrongAnswer = "15 ~ 20"
			return question
		case 118:
			question.question = "变压器在同等负荷及同等冷却条件下，油温比平时高多少度，应判断变压器发生内部故障。"
			question.rightAnswer = "10"
			question.wrongAnswer = "15"
			return question
		case 119:
			question.question = "电力变压器中短路电压一般为额定电压的："
			question.rightAnswer = "5% ~ 10%"
			question.wrongAnswer = "15% ~ 20%"
			return question
		case 120:
			question.question = "电力系统中以“kWh”作为什么的计量单位？"
			question.rightAnswer = "电能"
			question.wrongAnswer = "电功率"
			return question
		case 121:
			question.question = "一个实际电源的电压随着负载电流的减小将："
			question.rightAnswer = "升高"
			question.wrongAnswer = "降低"
			return question
		case 122:
			question.question = "我国交流电的频率为50Hz，其周期为多少秒？"
			question.rightAnswer = "0.02"
			question.wrongAnswer = "0.01"
			return question
		case 123:
			question.question = "参考点也叫零点位点它是由："
			question.rightAnswer = "人为规定"
			question.wrongAnswer = "参考方向决定"
			return question
		case 124:
			question.question = "线圈磁场方向的判断方法用："
			question.rightAnswer = "螺旋管右手定则"
			question.wrongAnswer = "直导线右手定则"
			return question
		case 125:
			question.question = "一电感线圈接到f=50Hz的交流电路中，感抗XL=50Ω，若改接到f=150Hz的电源时，则感抗XL为："
			question.rightAnswer = "150Ω"
			question.wrongAnswer = "250Ω"
			return question
		case 126:
			question.question = "三相电动势的相序为U-V-W称为："
			question.rightAnswer = "正序"
			question.wrongAnswer = "零序"
			return question
		case 127:
			question.question = "为示正相序，在变电所三相母线应分别涂以："
			question.rightAnswer = "黄、绿、红"
			question.wrongAnswer = "绿、黄 、红"
			return question
		case 128:
			question.question = "正序的顺序是："
			question.rightAnswer = "U、V、W"
			question.wrongAnswer = "W、V、U"
			return question
		case 129:
			question.question = "纯电阻单相正弦交流电路中的电压与电流，其瞬间时值遵循欧姆定律。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 130:
			question.question = "线圈右手螺旋定则是：四指表示电流方向，大拇指表示磁力线方向。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 131:
			question.question = "电位高低的含义，是指该点对参考点间的电流大小。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 132:
			question.question = "电动势的实际方向规定为从正极指向负极。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 133:
			question.question = "没有电压就没有电流，没有电流就没有电压。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 134:
			question.question = "视在功率就是有功功率加上无功功率。 "
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 135:
			question.question = "相线间的电压就是线电压。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 136:
			question.question = "纯电感线圈对直流电来说，相当于短路。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 137:
			question.question = "每相负载的端电压叫负载的相电压。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 138:
			question.question = "线电压额定是380V，相电压额定是220V。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 139:
			question.question = "三相电动势达到最大值的先后次序叫相序。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 140:
			question.question = "从中性点引出的导线叫中性线，当中性线直接接地时称为零线，又叫地线。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 141:
			question.question = "从各相首端引出的导线叫相线，俗称火线。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 142:
			question.question = "有中性线的三相供电方式叫三相四线制，它常用于低压配电系统。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 143:
			question.question = "不引出中性线的三相供电方式叫三相三线制，一般用于高压输电系统。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 144:
			question.question = "一个线圈电流变化而在另一个线圈产生电磁感应的现象叫："
			question.rightAnswer = "互感现象"
			question.wrongAnswer = "自感现象"
			return question
		case 145:
			question.question = "铁芯内部环流称为涡流，涡流所消耗的电功率，称为涡流损耗。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 146:
			question.question = "三相交流电的相位互差为多少度？"
			question.rightAnswer = "120"
			question.wrongAnswer = "90"
			return question
		case 147:
			question.question = "高压断路器具有相当完善的灭弧结构和足够的断流能力。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 148:
			question.question = "电流互感器，又称仪用变流器，作用是将大电流变成："
			question.rightAnswer = "小电流"
			question.wrongAnswer = "更大电流"
			return question
		case 149:
			question.question = "绝缘棒，又称令克棒、绝缘拉杆、操作杆等。绝缘棒由工作头、绝缘杆和握柄三部分构成。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 150:
			question.question = "发现有人触电时，应当先打120请医生，等医生到达后立即开始人工急救。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 151:
			question.question = "电工作业人员必须年满多少岁？"
			question.rightAnswer = "18"
			question.wrongAnswer = "17"
			return question
		case 152:
			question.question = "我国标准规定工频安全电压有效值的限值为："
			question.rightAnswer = "50V"
			question.wrongAnswer = "36V"
			return question
		case 153:
			question.question = "装设接地线的顺序为："
			question.rightAnswer = "先接地端后导体端 "
			question.wrongAnswer = "先导体端后接地端"
			return question
		case 154:
			question.question = " 一般居民住宅、办公场所，若以防止触电为主要目的时，应选用漏电动作电流为多大的漏电保护开关？"
			question.rightAnswer = "30mA"
			question.wrongAnswer = "15mA"
			return question
		case 155:
			question.question = "《劳动法》特别强调从业人员的权利包括在集体合同、劳动合同中，都要载明劳动安全、防止职业危害和工伤社会保险等事项。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 156:
			question.question = "安全生产法规的出发点是以人为本，为了保护从业人员的安全和健康。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 157:
			question.question = "新参加电气工作的人员、实习人员和临时参加劳动的人员，工作能力强的，可以单独从事危险工作。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 158:
			question.question = "万用表的红表笔插在﹙＋﹚的插孔，黑笔插在﹙－﹚的插孔。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 159:
			question.question = "接地体上端离地面深度不应小于多少米？"
			question.rightAnswer = "0.6m"
			question.wrongAnswer = "0.5m"
			return question
		case 160:
			question.question = "《特种作业人员安全操作证》有效期为多少年？"
			question.rightAnswer = "六年"
			question.wrongAnswer = "三年"
			return question
		case 161:
			question.question = "《安全生产法》规定的安全生产方针："
			question.rightAnswer = "安全第一，预防为主"
			question.wrongAnswer = "防消结合，预防为主"
			return question
		case 162:
			question.question = "能清除皮肤上的油、尘、毒等沾污，使皮肤免受损害的皮肤防护用品称作："
			question.rightAnswer = "洁肤型护肤剂"
			question.wrongAnswer = "防油型护肤剂"
			return question
		case 163:
			question.question = "关于电气装置，不属于电工作业的工作是："
			question.rightAnswer = "购买"
			question.wrongAnswer = "安装"
			return question
		case 164:
			question.question = "1kΩ与2kΩ的电阻串联后接到6V的电压上，流过电的电流为："
			question.rightAnswer = "2mA"
			question.wrongAnswer = "2A"
			return question
		case 165:
			question.question = "就对被测电路的影响而言，电压表的内阻："
			question.rightAnswer = "越大越好"
			question.wrongAnswer = "适中为好"
			return question
		case 166:
			question.question = "下列最危险的电流途径是："
			question.rightAnswer = "左手至胸部"
			question.wrongAnswer = "左手至脚"
			return question
		case 167:
			question.question = "发生心室纤维性颤动时，血液循环实际上："
			question.rightAnswer = "终止"
			question.wrongAnswer = "加快"
			return question
		case 168:
			question.question = "漏电保护装置的试验按钮要多长时间按一次？"
			question.rightAnswer = "一个月"
			question.wrongAnswer = "三个月"
			return question
		case 169:
			question.question = "工艺过程中产生静电的主要危险是："
			question.rightAnswer = "引起爆炸和火灾"
			question.wrongAnswer = "妨碍生产"
			return question
		case 170:
			question.question = "避雷针的接地装置与道路出入口之间的距离不应小于："
			question.rightAnswer = "3m"
			question.wrongAnswer = "2m"
			return question
		case 171:
			question.question = "采用扁钢作防雷装置的引下线时，其截面积应不小于多少平方毫米？"
			question.rightAnswer = "100"
			question.wrongAnswer = "75"
			return question
		case 172:
			question.question = "低压电力电缆直埋时的最小深度为多少米？"
			question.rightAnswer = "0.7m"
			question.wrongAnswer = "0.6m"
			return question
		case 173:
			question.question = "水泥电杆横向裂纹长度不超过电杆周长的："
			question.rightAnswer = "1/3"
			question.wrongAnswer = "1/2"
			return question
		case 174:
			question.question = "电工是特殊工种。其特殊性表现之一为与他人安全相关。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 175:
			question.question = "兆欧表的电压等级有："
			question.rightAnswer = "500V"
			question.wrongAnswer = "220V"
			return question
		case 176:
			question.question = "工艺过程中产生的静电具有什么特征？"
			question.rightAnswer = "电压高"
			question.wrongAnswer = "电流大"
			return question
		case 177:
			question.question = "防止雷电冲击波侵入室内的方法是："
			question.rightAnswer = "架空线入户处安装避雷器"
			question.wrongAnswer = "建筑物上方安装避雷针"
			return question
		case 178:
			question.question = "特种作业人员进行作业前禁止喝含有酒精的饮料。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 179:
			question.question = "从业人员在生产过程中，发现有危及人身安全的紧急情况时，有权停止作业，但对事故隐患及不安全因素没有报告的义务。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 180:
			question.question = "口对口呼吸法的吹气次数大约在每分钟12～16次。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 181:
			question.question = "在生产过程中产生的粉尘称为生产性粉尘，对作业人员身体健康有害。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 182:
			question.question = "发现有人触电，应赶紧徒手拉其脱离电源。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 183:
			question.question = "值班人员应熟悉电气设备配置、性能和电气结线。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 184:
			question.question = "为了防止因导线短路而引起重大安全事故，不同回路、不同电压、交流与直流的导线不得穿在同一根管内。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 185:
			question.question = "架空地线的接地电阻愈小，屏蔽效果愈好。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 186:
			question.question = "从功能上讲，高压断路器可以用高压隔离开关、高压负荷开关代替。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 187:
			question.question = "能防御焊接作业的火花、熔融金属、高温金属、高温辐射等伤害足部，并能使足部与带电物体绝缘的鞋是："
			question.rightAnswer = "焊接防护鞋"
			question.wrongAnswer = "绝缘鞋 "
			return question
		case 188:
			question.question = "人体体内电阻大约为："
			question.rightAnswer = "数百欧"
			question.wrongAnswer = "数千欧"
			return question
		case 189:
			question.question = "触电致人死亡的决定因素是："
			question.rightAnswer = "电流"
			question.wrongAnswer = "电压"
			return question
		case 190:
			question.question = "漏电保护装置的额定不动作电流不得低于额定动作电流的："
			question.rightAnswer = "0.5"
			question.wrongAnswer = "0.75"
			return question
		case 191:
			question.question = "电弧温度最高可达多少度？"
			question.rightAnswer = "8000℃"
			question.wrongAnswer = "4000℃"
			return question
		case 192:
			question.question = "土壤电阻的季节系数："
			question.rightAnswer = "大于或等于1"
			question.wrongAnswer = "小于或等于1"
			return question
		case 193:
			question.question = "运行中的橡皮导线一般温度不得超过："
			question.rightAnswer = "65℃"
			question.wrongAnswer = "70℃"
			return question
		case 194:
			question.question = "当把通信电缆埋设在地面以下时，通信电缆不受强电线电干扰的影响。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 195:
			question.question = "用于高处作业的主要用具有："
			question.rightAnswer = "脚手架、梯子"
			question.wrongAnswer = "安全带、安全网"
			return question
		case 196:
			question.question = "走出可能产生跨步电压的区域应采用的正确方法是："
			question.rightAnswer = "单脚跳出"
			question.wrongAnswer = "大步跨出"
			return question
		case 197:
			question.question = "什么操作不需办理操作票？"
			question.rightAnswer = "事故处理"
			question.wrongAnswer = "全站停电"
			return question
		case 198:
			question.question = "当电力线与通信线交越时："
			question.rightAnswer = "必须停电后作业"
			question.wrongAnswer = "不必停电后作业"
			return question
		case 199:
			question.question = "从业人员只要了解其作业场所和工作岗位上的安全生产规章制度和操作规程即可上岗作业。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 200:
			question.question = "对摔伤者的救护应特别防止在搬动中可能对伤者脊柱的损害。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 201:
			question.question = "万用表的红表笔插在﹙＋﹚的插孔，黑笔插在﹙－﹚的插孔。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 202:
			question.question = "摆脱电流是人能自主摆脱带电体的最大电流，人的工频摆脱电流约为10A。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 203:
			question.question = "在直流电路中电流和电压的大小和方向都不随时间变化。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 204:
			question.question = "在正弦交流电压的波形图坐标系中，横坐标表示时间，纵坐标表示："
			question.rightAnswer = "电压瞬时值"
			question.wrongAnswer = "电压平均值"
			return question
		case 205:
			question.question = "铁心是变压器的磁通道，铁心多用彼此绝缘的硅钢片叠成目的是为了减小涡流和磁带。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 206:
			question.question = "在电磁感应现象中，感应电流的磁场的方向总是："
			question.rightAnswer = "与原磁场的方向相反"
			question.wrongAnswer = "阻碍原磁场的变化"
			return question
		case 207:
			question.question = "如果通电直导体在匀强磁场中受到的磁场力最大，则说明该导体与磁力线夹角为多少度？"
			question.rightAnswer = "90"
			question.wrongAnswer = "60"
			return question
		case 208:
			question.question = "三相对称的额定工作电压为380V，由我国供电系统供电，该三相负载应接成："
			question.rightAnswer = "Y形接法"
			question.wrongAnswer = "三角形接法"
			return question
		case 209:
			question.question = "旋转磁场的转速与："
			question.rightAnswer = "频率成正比"
			question.wrongAnswer = "电压电源成正比"
			return question
		case 210:
			question.question = "我国发电厂发出交流电的频率都是50Hz习惯上称为："
			question.rightAnswer = "工频"
			question.wrongAnswer = "频率"
			return question
		case 211:
			question.question = "角频率的单位是："
			question.rightAnswer = "radls"
			question.wrongAnswer = "Hz"
			return question
		case 212:
			question.question = "正弦交流电的三要素分别是振幅、频率和："
			question.rightAnswer = "初相"
			question.wrongAnswer = "电流"
			return question
		case 213:
			question.question = "变压器主要由铁心和什么组成？"
			question.rightAnswer = "绕组"
			question.wrongAnswer = "绝缘漆"
			return question
		case 214:
			question.question = "电感是储能元件，不消耗电能，其有功功率为："
			question.rightAnswer = "零"
			question.wrongAnswer = "不知"
			return question
		case 215:
			question.question = "周期和频率之间有什么关系？"
			question.rightAnswer = "倒数"
			question.wrongAnswer = "乘数"
			return question
		case 216:
			question.question = "视在功率用什么表示？"
			question.rightAnswer = "S"
			question.wrongAnswer = "P"
			return question
		case 217:
			question.question = "串联电路中，电压的分配与电阻成："
			question.rightAnswer = "正比"
			question.wrongAnswer = "反比"
			return question
		case 218:
			question.question = "并联电路中，电流的分配与电阻成："
			question.rightAnswer = "反比"
			question.wrongAnswer = "正比"
			return question
		case 219:
			question.question = "变压器运行中的电压不应超过额定电压的："
			question.rightAnswer = "±5% "
			question.wrongAnswer = "±10%"
			return question
		case 220:
			question.question = "电位高低的含义，是指该点对参考点间的电流大小。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 221:
			question.question = "没有电压就没有电流，没有电流就没有电压。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 222:
			question.question = "将一根条形磁铁截去一段仍为条形磁铁，它仍然具有两个磁极。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 223:
			question.question = "相线与零线间的电压就叫相电压。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 224:
			question.question = "从各相首端引出的导线叫相线，俗称火线。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 225:
			question.question = "有中性线的三相供电方式叫三相四线制，它常用于低压配电系统。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 226:
			question.question = "不引出中性线的三相供电方式叫三相三线制，一般用于高压输电系统。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 227:
			question.question = "各断路器的配合中，电路上一级的熔断时间应为下一级熔断器的多少倍以上？"
			question.rightAnswer = "三倍"
			question.wrongAnswer = "两倍"
			return question
		case 228:
			question.question = "在额定负载恒转矩负载下运行的三相异步电动机，若电源电压下降，则电机的温度将会："
			question.rightAnswer = "升高"
			question.wrongAnswer = "降低"
			return question
		case 229:
			question.question = "真空断路器的触点常采取："
			question.rightAnswer = "对接式触头"
			question.wrongAnswer = "桥式触头"
			return question
		case 230:
			question.question = "1安培等于多少微安？"
			question.rightAnswer = "106"
			question.wrongAnswer = "109"
			return question
		case 231:
			question.question = "半导体的电阻随温度的升高而："
			question.rightAnswer = "减小"
			question.wrongAnswer = "增大"
			return question
		case 232:
			question.question = "电场力做功与所经过的路径无关，参考点确定后，电场中各点的电位之值便唯一确定，这是电位的什么原理？"
			question.rightAnswer = "唯一性"
			question.wrongAnswer = "稳定性"
			return question
		case 233:
			question.question = "磁通的单位是："
			question.rightAnswer = "WB"
			question.wrongAnswer = "MB"
			return question
		case 234:
			question.question = "对称三相电势在任一瞬间的什么等于零？"
			question.rightAnswer = "代数和"
			question.wrongAnswer = "频率"
			return question
		case 235:
			question.question = "电场力在单位时间内所做的功称为："
			question.rightAnswer = "电功率"
			question.wrongAnswer = "功耗"
			return question
		case 236:
			question.question = "电流互感器的准确度D级是用于接："
			question.rightAnswer = "差动保护"
			question.wrongAnswer = "微机保护"
			return question
		case 237:
			question.question = "电压互感器的一次绕组的匝数远大于二次绕组的匝数。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 238:
			question.question = "在加有滤波电容的整流电路中，二极管的导通总是："
			question.rightAnswer = "小于1800"
			question.wrongAnswer = "大于1800"
			return question
		case 239:
			question.question = "双极型晶体管的控制信号为："
			question.rightAnswer = "电压"
			question.wrongAnswer = "电流"
			return question
		case 240:
			question.question = "场效应晶体管的控制信号为："
			question.rightAnswer = "电流"
			question.wrongAnswer = "电压"
			return question
		case 241:
			question.question = "三相半波可控整流电路带阻性负载时，当控制角大于多少时，输出电流开始断续？"
			question.rightAnswer = "900"
			question.wrongAnswer = "600"
			return question
		case 242:
			question.question = "三极管基极的作用是什么？"
			question.rightAnswer = "输送控制载流子"
			question.wrongAnswer = "放大载流子"
			return question
		case 243:
			question.question = "解决放大器截止失真的方法是："
			question.rightAnswer = "减小偏置电阻"
			question.wrongAnswer = "增大下偏电阻"
			return question
		case 244:
			question.question = "二极管的主要特性就是："
			question.rightAnswer = "单向通导"
			question.wrongAnswer = "整流"
			return question
		case 245:
			question.question = "在整流电路的输出端并一个电容，主要是利用电容的什么特性，使脉动电压变得较平稳？"
			question.rightAnswer = "充放电"
			question.wrongAnswer = "升压"
			return question
		case 246:
			question.question = "为防止分接开关故障，应测量分接开关接头阻值，其相差不超过："
			question.rightAnswer = "2%"
			question.wrongAnswer = "1.5%"
			return question
		case 247:
			question.question = "电力变压器中短路电压一般为额定电压的："
			question.rightAnswer = "5%～10%"
			question.wrongAnswer = "11%～15%"
			return question
		case 248:
			question.question = "运动导体切割磁力线而产生最大电动势时，导体与磁力线间的夹角应为："
			question.rightAnswer = "90°"
			question.wrongAnswer = "45°"
			return question
		case 249:
			question.question = "如果把一个24V的电源正极接地，则负极的电位是-24V。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 250:
			question.question = "正弦交流电的周期与角频率的关系是互为倒数。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 251:
			question.question = "下面那种电路工作状态是必须禁止的？"
			question.rightAnswer = "短路"
			question.wrongAnswer = "开路"
			return question
		case 252:
			question.question = " 晶体三极管的三种工作状态是饱和状态、截止状态和："
			question.rightAnswer = "放大状态"
			question.wrongAnswer = "缩小状态"
			return question
		case 253:
			question.question = "瓦数越大的白炽灯其电阻："
			question.rightAnswer = "越小"
			question.wrongAnswer = "越大"
			return question
		case 254:
			question.question = "电路在同一节点处，各支路的电流之和为："
			question.rightAnswer = "零"
			question.wrongAnswer = "大于零"
			return question
		case 255:
			question.question = "磁场中磁力线的方向总是："
			question.rightAnswer = "N极指向S极"
			question.wrongAnswer = "S极指向N极"
			return question
		case 256:
			question.question = "一个正弦交流电压，其有效值为100V，则其最大值为："
			question.rightAnswer = "141.4V"
			question.wrongAnswer = "120.5V"
			return question
		case 257:
			question.question = "回路中，电感电容都是储能元件而电阻是耗能元件。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 258:
			question.question = "线路的绝缘电阻的大小和测试电压："
			question.rightAnswer = "无关"
			question.wrongAnswer = "有关"
			return question
		case 259:
			question.question = "市电220伏是指交流电的："
			question.rightAnswer = "有效值"
			question.wrongAnswer = "平均值"
			return question
		case 260:
			question.question = "串联负反馈使输入电阻："
			question.rightAnswer = "增大"
			question.wrongAnswer = "减小"
			return question
		case 261:
			question.question = "描绘磁场的磁力线在磁体内由："
			question.rightAnswer = "S -> N"
			question.wrongAnswer = "N -> S"
			return question
		case 262:
			question.question = "某直流稳压电源，输出电压为6V，将它接到匝比为1∶10的变压器次级，则其初级的电压为："
			question.rightAnswer = "60V"
			question.wrongAnswer = "600V"
			return question
		case 263:
			question.question = "万用表测量三极管时万用表应放在哪一档上？"
			question.rightAnswer = "R×1000Ω"
			question.wrongAnswer = "R×1Ω"
			return question
		case 264:
			question.question = "并联电容个数愈多，其等效电容越大。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 265:
			question.question = "导电体全是金属材料。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 266:
			question.question = " 用电压表测量电路中的电压时，应并联在电路中。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 267:
			question.question = "两瓦数不同的灯泡串联起来接到电源上，瓦数大的暗。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 268:
			question.question = "放大器中为什么要加负反馈？"
			question.rightAnswer = "提高放大器的稳定性"
			question.wrongAnswer = "降低功耗"
			return question
		case 269:
			question.question = "用叠加原理计算复杂电路，就是把一个复杂电路化为什么电路进行计算的？"
			question.rightAnswer = "单电源"
			question.wrongAnswer = "较小"
			return question
		case 270:
			question.question = "电荷的基本单位不是："
			question.rightAnswer = "安培"
			question.wrongAnswer = "库仑"
			return question
		case 271:
			question.question = "正弦交流电的有效值等于最大值的："
			question.rightAnswer = "0.7"
			question.wrongAnswer = "0.5"
			return question
		case 272:
			question.question = "实际电压源在供电时，它的端电压低于它的电动势。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 273:
			question.question = "已知交流电路中，某元件的阻抗与频率成反比，则元件是："
			question.rightAnswer = "电容"
			question.wrongAnswer = "电感"
			return question
		case 274:
			question.question = "减小涡流损耗可以采用："
			question.rightAnswer = "增大铁芯的电阻率"
			question.wrongAnswer = "增大铁芯的磁导率"
			return question
		case 275:
			question.question = "三相四线制系统中，相电压是指火线和零线之间的电压，线电压是指火线和火线之间的电压。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 276:
			question.question = "在几级及以上的大风以及暴雷电、冰雹、大雾、沙尘暴等恶劣天气下，应停止露天高处作业？"
			question.rightAnswer = "6级"
			question.wrongAnswer = "7级"
			return question
		case 277:
			question.question = "在带电的导线、设备、变压器、油开关附近，不应使用钢卷尺和带金属丝的线尺。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 278:
			question.question = "行灯或移动式电灯的电压，应不高于36V。在金属容器和潮湿地点作业，安全电压应不超过12V。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 279:
			question.question = "人站在干燥的木梯上带电安装灯具，为了站稳，可以一手安装，另一手："
			question.rightAnswer = "可戴绝缘手套扶墙"
			question.wrongAnswer = "可扶墙"
			return question
		case 280:
			question.question = "高压设备接地，室内不得在接地点几米以内？"
			question.rightAnswer = "4米"
			question.wrongAnswer = "6米"
			return question
		case 281:
			question.question = "变压器试运行应进行几次全电压冲击试验？"
			question.rightAnswer = "5次"
			question.wrongAnswer = "3次"
			return question
		case 282:
			question.question = "真空断路器大修周期是："
			question.rightAnswer = "两年"
			question.wrongAnswer = "200次操作"
			return question
		case 283:
			question.question = "变压器大修的周期是投入运行后5年内一次，以后每间隔十年吊芯检查一次。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 284:
			question.question = "运行中的电流互感器的二次回路开路，则电流互感器会："
			question.rightAnswer = "烧毁"
			question.wrongAnswer = "空载运行"
			return question
		case 285:
			question.question = "运行中的电压互感器工作在："
			question.rightAnswer = "近似空载状态"
			question.wrongAnswer = "近似短路状态"
			return question
		case 286:
			question.question = "2006年新国标将S9系列中的损耗值规定为："
			question.rightAnswer = "能效限定值"
			question.wrongAnswer = "节能评价值"
			return question
		case 287:
			question.question = "接地线为多股软铜线，其截面积不少于多少平方毫米？"
			question.rightAnswer = "25"
			question.wrongAnswer = "16"
			return question
		case 288:
			question.question = "三相二元件电能表不能用于什么系统中，否则少计电能。"
			question.rightAnswer = "三相四线制系统"
			question.wrongAnswer = "三相三线制系统"
			return question
		case 289:
			question.question = "好的变压器油是："
			question.rightAnswer = "浅黄色"
			question.wrongAnswer = "浅红色"
			return question
		case 290:
			question.question = "好的变压器油无味或略带一点："
			question.rightAnswer = "煤油味"
			question.wrongAnswer = "酸味"
			return question
		case 291:
			question.question = "值班巡检时，人体与10KV带电设备间的安全距离为多少米？"
			question.rightAnswer = "0.7"
			question.wrongAnswer = "1.0"
			return question
		case 292:
			question.question = "变压器绕组为A级绝缘，其最高允许温度为："
			question.rightAnswer = "105℃"
			question.wrongAnswer = "130℃"
			return question
		case 293:
			question.question = "触电急救的第一步是："
			question.rightAnswer = "迅速脱离电源"
			question.wrongAnswer = "心肺复苏"
			return question
		case 294:
			question.question = "用利器切断低压电源线时应："
			question.rightAnswer = "逐相切断"
			question.wrongAnswer = "一次切断"
			return question
		case 295:
			question.question = "窃电时间无法查明，窃电日数至少按多少天计算？"
			question.rightAnswer = "180天"
			question.wrongAnswer = "90天"
			return question
		case 296:
			question.question = "变压器小修周期为："
			question.rightAnswer = "一年"
			question.wrongAnswer = "二年"
			return question
		case 297:
			question.question = "在母线倒闸操作程中，母联断路器的操作电源应："
			question.rightAnswer = "拉开"
			question.wrongAnswer = "合上"
			return question
		case 298:
			question.question = "铝合金制的设备接头过热后，其颜色会："
			question.rightAnswer = "呈灰白色"
			question.wrongAnswer = "呈黑色"
			return question
		case 299:
			question.question = "有功功率最优分配的准则是："
			question.rightAnswer = "按等耗量微增率分配"
			question.wrongAnswer = "按消耗量"
			return question
		case 300:
			question.question = "在系统的初始运行条件、故障持续时间均完全相同的情况下，导致系统的暂态稳定性最差的故障应为："
			question.rightAnswer = "三相短路"
			question.wrongAnswer = "断相故障"
			return question

		default:
			break
		}
		return nil
	}

	func getIntermediateQuestions(number: Int) -> Question? {
		let question = Question()

		switch number {
		case 0:
			question.question = "在电力系统中，使用ZnO避雷器的主要原因是："
			question.rightAnswer = "保护性能好"
			question.wrongAnswer = "不用维护"
			return question
		case 1:
			question.question = "在正常运行情况下，中性点不接地系统中性点位移电压不得超过："
			question.rightAnswer = "15%"
			question.wrongAnswer = "20%"
			return question
		case 2:
			question.question = "500kV变压器过励磁保护本保护反映的是："
			question.rightAnswer = "励磁电压"
			question.wrongAnswer = "励磁电抗"
			return question
		case 3:
			question.question = "过流保护加装负荷电压闭锁可以："
			question.rightAnswer = "提高保护的灵敏性"
			question.wrongAnswer = "增加保护的可靠性"
			return question
		case 4:
			question.question = "在发生非全相运行时，应闭锁什么保护？"
			question.rightAnswer = "距离一段"
			question.wrongAnswer = "零序二段"
			return question
		case 5:
			question.question = "电压表的内阻为3kΩ最大量程为3V，先将它串联一个电阻改装成一个15V的电压表，则串联电阻的阻值为："
			question.rightAnswer = "12kΩ"
			question.wrongAnswer = "9kΩ"
			return question
		case 6:
			question.question = "有一块内阻为0.15Ω，最大量程为1A的电流表，先将它并联一个0.05Ω的电阻则这块电流表的量程将扩大为："
			question.rightAnswer = "4A"
			question.wrongAnswer = "2A"
			return question
		case 7:
			question.question = "零序电流的分布，主要取决于："
			question.rightAnswer = "变压器中性点接地数目"
			question.wrongAnswer = "发电机是否接地"
			return question
		case 8:
			question.question = "零序电压的特性是："
			question.rightAnswer = "接地故障点最高"
			question.wrongAnswer = "接地故障点最低"
			return question
		case 9:
			question.question = "测量1000kVA以下变压器绕组的直流电阻标准是：各相绕组电阻互相间的差别应不大于三相平均值的："
			question.rightAnswer = "2%"
			question.wrongAnswer = "4%"
			return question
		case 10:
			question.question = "变电站的母线电量不平衡率，一般要求不超过："
			question.rightAnswer = "±(1%-2%)"
			question.wrongAnswer = "±(1%-5%)"
			return question
		case 11:
			question.question = "电容器的无功输出功率与电容器的电容："
			question.rightAnswer = "成正比"
			question.wrongAnswer = "成反比"
			return question
		case 12:
			question.question = "当电力系统无功容量严重不足时，会使系统："
			question.rightAnswer = "瓦解"
			question.wrongAnswer = "电压质量下降"
			return question
		case 13:
			question.question = "系统向客户提供的无功功率最小，用户电压就："
			question.rightAnswer = "越低"
			question.wrongAnswer = "越高"
			return question
		case 14:
			question.question = "发生那些情况可以联系调度处理："
			question.rightAnswer = "套管油漏油"
			question.wrongAnswer = "电容器爆炸"
			return question
		case 15:
			question.question = "三相电容器之间的差值，不应超过单向总容量的："
			question.rightAnswer = "5%"
			question.wrongAnswer = "10%"
			return question
		case 16:
			question.question = "对于同一电容器，两次连续投切中间应断开多长时间以上？"
			question.rightAnswer = "5min"
			question.wrongAnswer = "10min"
			return question
		case 17:
			question.question = "当电容器额定电压等于线路额定相电压时，则应接成什么形并入电网？"
			question.rightAnswer = "星形"
			question.wrongAnswer = "三角形"
			return question
		case 18:
			question.question = "电容器不允许在多少额定电压下长期运行？"
			question.rightAnswer = "130%"
			question.wrongAnswer = "100%"
			return question
		case 19:
			question.question = "电容器的电容允许值最大变动范围为："
			question.rightAnswer = "+10%"
			question.wrongAnswer = "+5%"
			return question
		case 20:
			question.question = "接入重合闸不灵敏一段的保护定值是按躲开非全相运行时的不平衡电流值整定的。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 21:
			question.question = "母差保护的毫安表中出现的微小电流是电流互感器的："
			question.rightAnswer = "误差电流"
			question.wrongAnswer = "开路电流"
			return question
		case 22:
			question.question = "接入距离保护的阻抗继电器的测量阻抗与保护安装处至故障点的距离成正比。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 23:
			question.question = "距离保护第一段动作时间是保护装置与断路器固有的动作时间。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 24:
			question.question = "距离保护一段的保护范围是被保护线路的："
			question.rightAnswer = "80%-85%"
			question.wrongAnswer = "全长"
			return question
		case 25:
			question.question = "距离保护二段的时间是比相邻线路的一段加一个延时Δt。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 26:
			question.question = "距离保护二段保护范围是："
			question.rightAnswer = "线路全长延伸至下一段"
			question.wrongAnswer = "不足线路全长"
			return question
		case 27:
			question.question = "单电源线路速断保护范围是："
			question.rightAnswer = "线路的20%-50%"
			question.wrongAnswer = "线路的70%"
			return question
		case 28:
			question.question = "三绕组变压器的零序保护是保护区外单相接地故障的后备保护和："
			question.rightAnswer = "高压侧绕组"
			question.wrongAnswer = "中压侧绕组"
			return question
		case 29:
			question.question = "如果二次回路故障导致重瓦斯保护误动作变压器跳闸，恢复运行应将重瓦斯保护："
			question.rightAnswer = "退出变压器"
			question.wrongAnswer = "继续运行变压器"
			return question
		case 30:
			question.question = "线路带电作业时重合闸："
			question.rightAnswer = "退出"
			question.wrongAnswer = "投入"
			return question
		case 31:
			question.question = "当一条母线停电时相位比较式母差保护应改："
			question.rightAnswer = "非选"
			question.wrongAnswer = "有选"
			return question
		case 32:
			question.question = "当瓦斯保护本身故障，为了防止保护误动作，值班人员应："
			question.rightAnswer = "打开跳闸连接片"
			question.wrongAnswer = "取下保护直流"
			return question
		case 33:
			question.question = "中央信号装置按其复归方法分为："
			question.rightAnswer = "就地复归和中央复归"
			question.wrongAnswer = "仅中央复归"
			return question
		case 34:
			question.question = "预告信号装置分为："
			question.rightAnswer = "延时和瞬时"
			question.wrongAnswer = "仅瞬时"
			return question
		case 35:
			question.question = "发预告信号时光字牌内两只灯是："
			question.rightAnswer = "并联"
			question.wrongAnswer = "串联"
			return question
		case 36:
			question.question = "检查光字牌时两只灯是："
			question.rightAnswer = "串联"
			question.wrongAnswer = "并联"
			return question
		case 37:
			question.question = "测量电流互感器极性的目的是："
			question.rightAnswer = "保护外部接线正确"
			question.wrongAnswer = "满足负载要求"
			return question
		case 38:
			question.question = "变压器差动保护范围为变压器两侧电流互感器之间的设备。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 39:
			question.question = "中性点接地开关合上后其什么投入？"
			question.rightAnswer = "中性点零序过流"
			question.wrongAnswer = "间隙过流"
			return question
		case 40:
			question.question = "变压器差动保护投入前测相量、差电压要："
			question.rightAnswer = "带负荷"
			question.wrongAnswer = "不带负荷"
			return question
		case 41:
			question.question = "电力系统发生短路时，通常还发生电压："
			question.rightAnswer = "下降"
			question.wrongAnswer = "上升"
			return question
		case 42:
			question.question = "变压器瓦斯保护动作原因是由于变压器："
			question.rightAnswer = "内部故障"
			question.wrongAnswer = "套管故障"
			return question
		case 43:
			question.question = "距离二段定值整定按照："
			question.rightAnswer = "线路末端有一定灵敏度考虑"
			question.wrongAnswer = "按线路全长80%"
			return question
		case 44:
			question.question = "IOJSCK意思是："
			question.rightAnswer = "零序加速出口"
			question.wrongAnswer = "距离保护出口"
			return question
		case 45:
			question.question = "操作票应根据值班调度员或谁下达的操作计划和操作综合令？"
			question.rightAnswer = "值班长"
			question.wrongAnswer = "监护人"
			return question
		case 46:
			question.question = "操作票由谁填写？"
			question.rightAnswer = "操作人"
			question.wrongAnswer = "值班长"
			return question
		case 47:
			question.question = "操作票上的操作项目包括检查项目必须填写双重名称，即设备："
			question.rightAnswer = "名称和编号"
			question.wrongAnswer = "名称和位置"
			return question
		case 48:
			question.question = "操作转换开关用术语是："
			question.rightAnswer = "切至"
			question.wrongAnswer = "拉开、合上"
			return question
		case 49:
			question.question = "并、解列检查负荷分配，并在该项的末尾记上什么实际数值？"
			question.rightAnswer = "电流"
			question.wrongAnswer = "有功"
			return question
		case 50:
			question.question = "操作票中的“下令时间”是指调度下达操作的："
			question.rightAnswer = "动令时间"
			question.wrongAnswer = "预令时间"
			return question
		case 51:
			question.question = "操作票中的“下令时间”，对于自行掌握的操作，是指调度批准的时间。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 52:
			question.question = "操作票哪一栏应填写调度下达的操作计划顺序号？"
			question.rightAnswer = "指令项"
			question.wrongAnswer = "操作"
			return question
		case 53:
			question.question = "需要得到调度命令才能执行的操作项目，要在哪一栏内盖“联系调度章”？"
			question.rightAnswer = "指令项"
			question.wrongAnswer = "顺序项"
			return question
		case 54:
			question.question = "操作票填写完后，在空余部分哪一栏第一格左侧盖“以下空白”章以示终结？"
			question.rightAnswer = "操作项目"
			question.wrongAnswer = "指令项"
			return question
		case 55:
			question.question = "关键字严禁修改，如下列："
			question.rightAnswer = "拉、合、投、退、装、拆"
			question.wrongAnswer = "拉、合、投、退、取、装"
			return question
		case 56:
			question.question = "“四对照”即对照设备的名称、编号、位置和拉合方向。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 57:
			question.question = "进行倒闸操作时，监护人宣读操作项目，操作人复诵，监护人确认无误，发出什么执行命令后，操作人方可操作？"
			question.rightAnswer = "对！可以操作"
			question.wrongAnswer = "对！看着点"
			return question
		case 58:
			question.question = "拉熔丝时，正确操作为："
			question.rightAnswer = "先拉正极，后拉负极"
			question.wrongAnswer = "先拉负极，后拉正极"
			return question
		case 59:
			question.question = "合熔丝时，正确操作为："
			question.rightAnswer = "先拉负极，后拉正极"
			question.wrongAnswer = "先拉正极，后拉负极"
			return question
		case 60:
			question.question = "操作票要由什么单位统一编号，按顺序使用？"
			question.rightAnswer = "供电局（工区）"
			question.wrongAnswer = "变电站"
			return question
		case 61:
			question.question = "操作票要妥善保管留存，保存期不少于："
			question.rightAnswer = "一年"
			question.wrongAnswer = "半年"
			return question
		case 62:
			question.question = "防误装置万能解锁钥匙使用时必须经变电站专责工程师、所长或者谁批准？"
			question.rightAnswer = "当值值班长"
			question.wrongAnswer = "监护人"
			return question
		case 63:
			question.question = "值班运行人员与调度员进行倒闸操作联系时，要首先互报："
			question.rightAnswer = "单位、姓名、时间"
			question.wrongAnswer = "单位、值别、姓名"
			return question
		case 64:
			question.question = "线路停电时，必须按照断路器 -> 负荷侧隔离开关 -> 母线侧隔离开关的顺序操作。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 65:
			question.question = "线路停电和送电时的操作顺序相反。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 66:
			question.question = "拉合负荷电流和接地故障电流时不许用："
			question.rightAnswer = "隔离开关"
			question.wrongAnswer = "断路器"
			return question
		case 67:
			question.question = "倒母线应检查重合闸继电器的动作或返回情况。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 68:
			question.question = "变压器顶盖应沿气体继电器方向的升高坡度为："
			question.rightAnswer = "1%~1.5%"
			question.wrongAnswer = "2%~4%"
			return question
		case 69:
			question.question = "变压器中性线电流不应超过电压绕组额定电流的："
			question.rightAnswer = "25%"
			question.wrongAnswer = "35%"
			return question
		case 70:
			question.question = "铅酸蓄电池正常时，正极板为："
			question.rightAnswer = "深褐色"
			question.wrongAnswer = "浅褐色"
			return question
		case 71:
			question.question = "蓄电池负极板，正常时为："
			question.rightAnswer = "灰色"
			question.wrongAnswer = "深褐色"
			return question
		case 72:
			question.question = "电磁操动机构，合闸线圈动作电压不低于额定电压的："
			question.rightAnswer = "80%"
			question.wrongAnswer = "75%"
			return question
		case 73:
			question.question = "断路器液压机构应使用："
			question.rightAnswer = "10号航空油"
			question.wrongAnswer = "15号航空油"
			return question
		case 74:
			question.question = "电动机的轴承润滑脂，应添满其内部空间的："
			question.rightAnswer = "2/3"
			question.wrongAnswer = "3/4"
			return question
		case 75:
			question.question = "由雷电引起的过电压称为："
			question.rightAnswer = "大气过电压"
			question.wrongAnswer = "感应过电压"
			return question
		case 76:
			question.question = "变压器中性点接地属于："
			question.rightAnswer = "工作接地"
			question.wrongAnswer = "保护接地"
			return question
		case 77:
			question.question = "电压互感器与电力变压器的区别在于：电压互感器主要用于测量和保护，变压器用于连接两电压等级的电网。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 78:
			question.question = "电压互感器二次负载变大时，二次电压："
			question.rightAnswer = "基本不变"
			question.wrongAnswer = "变小"
			return question
		case 79:
			question.question = "电压互感器二次回路有工作而互感器不停用时应防止二次："
			question.rightAnswer = "短路"
			question.wrongAnswer = "断路"
			return question
		case 80:
			question.question = "运行中电压互感器高压侧熔断器熔断应立即："
			question.rightAnswer = "停止运行"
			question.wrongAnswer = "取下二次熔丝"
			return question
		case 81:
			question.question = "运行中电压互感器引线端子过热应："
			question.rightAnswer = "停止运行"
			question.wrongAnswer = "加装跨引"
			return question
		case 82:
			question.question = "恢复熔断器时应："
			question.rightAnswer = "戴护目眼镜"
			question.wrongAnswer = "戴不戴都可以"
			return question
		case 83:
			question.question = "隔离开关可以进行："
			question.rightAnswer = "恢复所用变压器"
			question.wrongAnswer = "切断接地电流"
			return question
		case 84:
			question.question = "母线隔离开关操作可以通过回接触点进行："
			question.rightAnswer = "电压回路切换"
			question.wrongAnswer = "电流回路切换"
			return question
		case 85:
			question.question = "隔离开关拉不开时应："
			question.rightAnswer = "不强拉，进行检查"
			question.wrongAnswer = "用加力杆拉"
			return question
		case 86:
			question.question = "因隔离开关传动机构本身故障而不能操作应："
			question.rightAnswer = "停电"
			question.wrongAnswer = "带电处理"
			return question
		case 87:
			question.question = "隔离开关误合时不许再拉开，误拉时在弧光未断开前再合上。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 88:
			question.question = "事故处理可不用操作票，但应记入操作记录簿和："
			question.rightAnswer = "运行记录簿"
			question.wrongAnswer = "检修记录簿"
			return question
		case 89:
			question.question = "倒闸操作中不得使停电的什么器件由二次返回高压？"
			question.rightAnswer = "电压互感器"
			question.wrongAnswer = "电抗器"
			return question
		case 90:
			question.question = "检查并、解列负荷分配，应在该操作相的末位记上："
			question.rightAnswer = "电流数值"
			question.wrongAnswer = "有功数值"
			return question
		case 91:
			question.question = "停用保护连接片使用术语为："
			question.rightAnswer = "退出"
			question.wrongAnswer = "切开"
			return question
		case 92:
			question.question = "事故发生后，如需紧急抢修超过多少小时以上者，应转为事故检修工作？"
			question.rightAnswer = "4h"
			question.wrongAnswer = "3h"
			return question
		case 93:
			question.question = "变压器带什么负荷时电压最高？"
			question.rightAnswer = "容性"
			question.wrongAnswer = "感性"
			return question
		case 94:
			question.question = "变压器短路电压的百分数与短路阻抗的百分数："
			question.rightAnswer = "相等"
			question.wrongAnswer = "前者大于后者"
			return question
		case 95:
			question.question = "油浸风冷变压器当风扇故障时变压器允许带负荷为额定容量的："
			question.rightAnswer = "70%"
			question.wrongAnswer = "80%"
			return question
		case 96:
			question.question = "油浸式变压器装有气体继电器时顶盖应沿气体继电器的方向升高坡度为："
			question.rightAnswer = "1%~1.5%"
			question.wrongAnswer = "2%~4%"
			return question
		case 97:
			question.question = "电压互感器的一、二、三次侧中："
			question.rightAnswer = "二、三次侧需要接地"
			question.wrongAnswer = "一次侧需要接地"
			return question
		case 98:
			question.question = "发生什么情况，电压互感器必须立即停止运行？"
			question.rightAnswer = "喷油"
			question.wrongAnswer = "油压低"
			return question
		case 99:
			question.question = "电流互感器损坏需要更换时，电压等级高于电网额定电压是必要的。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 100:
			question.question = "在运行中的电流互感器二次回路上工作时，正确的是："
			question.rightAnswer = "用短路片将二次短接"
			question.wrongAnswer = "用导线缠绕短接二次"
			return question
		case 101:
			question.question = "运行中的电流互感器二次侧，清扫时的注意事项，错误的是："
			question.rightAnswer = "单人进行"
			question.wrongAnswer = "使用干燥的清扫工具"
			return question
		case 102:
			question.question = "运行中的电流互感器一次侧最大负荷电流不得超过额定电流的："
			question.rightAnswer = "2倍"
			question.wrongAnswer = "3倍"
			return question
		case 103:
			question.question = "“F”级绝缘体允许的最高工作温度为："
			question.rightAnswer = "155℃"
			question.wrongAnswer = "130℃"
			return question
		case 104:
			question.question = "线路的设备停电检修时，临时性接地线应使用截面不小于25平方毫米多股裸软铜线。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 105:
			question.question = "在低压电气维修中，搭接导线的顺序为："
			question.rightAnswer = "先接地线，后接火线"
			question.wrongAnswer = "先接火线，后接地线"
			return question
		case 106:
			question.question = "高低压杆装设时应先检查与高压线的距离是否符号规定，若不符号，要采取什么措施？"
			question.rightAnswer = "防止误碰高压线"
			question.wrongAnswer = "保护接零"
			return question
		case 107:
			question.question = "PE线的颜色标记为："
			question.rightAnswer = "绿/黄双色"
			question.wrongAnswer = "淡蓝"
			return question
		case 108:
			question.question = "低压架空线路的相序排列自上而下次序为："
			question.rightAnswer = "W.V.U.N"
			question.wrongAnswer = "N.U.V.W"
			return question
		case 109:
			question.question = "照明线路应避开暖气管道，其间距不应小于："
			question.rightAnswer = "30cm"
			question.wrongAnswer = "20cm"
			return question
		case 110:
			question.question = "国家规定，五芯电缆必须包含淡蓝、绿/黄二种颜色绝缘芯线，其中淡蓝色芯线必须用做："
			question.rightAnswer = "N线"
			question.wrongAnswer = "火线"
			return question
		case 111:
			question.question = "TNCS系统中的工作零线、包含零线是："
			question.rightAnswer = "部分合用部分分开"
			question.wrongAnswer = "合用的"
			return question
		case 112:
			question.question = "当指示电压表指示为零时，表明电源已断开，可以不验电。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 113:
			question.question = "属于低压控制电器的是："
			question.rightAnswer = "接触器"
			question.wrongAnswer = "低压断路器"
			return question
		case 114:
			question.question = "干线保险容易应等于或稍大于各分支线保险丝容量之和。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 115:
			question.question = "各分支保险丝容量应等于或稍大于各灯工作电流之和。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 116:
			question.question = "为什么将变压器绕组的温升规定为？"
			question.rightAnswer = "65 ℃"
			question.wrongAnswer = "85 ℃"
			return question
		case 117:
			question.question = "气体（瓦斯）继电器能反应变压器的一切故障而作出相应的动作。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 118:
			question.question = "一般来说，继电器的质量越好，接线越简单，所包含的接点数目越少，则保护装置的作越可靠。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 119:
			question.question = "防爆电器出厂时涂的黄油是防止生锈的，使用时不应抹去。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 120:
			question.question = "在易燃、易爆场所带电作业时，只要注意安全、防止触电，一般不会发生危险。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 121:
			question.question = "电磁式交流接触器和直流接触器都装有短路环，以消除铁心的振动和噪音。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 122:
			question.question = "装设电抗器的目的是：增大短路阻抗，限制短路电流，减小电压波动。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 123:
			question.question = "低压空气断路器同时装有分励脱扣器和失压脱扣器时，称为复式脱扣装置。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 124:
			question.question = "大容量高压隔离开关的每极上都装有两片刀片，其目的是增大导电截面积，从而增大容量。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 125:
			question.question = "高压断路器的“跳跃”是指断路器合上又跳开，跳开又合上的现象。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 126:
			question.question = "配电装置包括测量电器，故便携式电压表和电流表属于配电装置。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 127:
			question.question = "单相异步电动机的体积虽然较同容量的三相异步电动机大，但功率因数、效率和过载能力都比同容量的三相异步电动机低。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 128:
			question.question = "油浸式变压器防爆管上的薄膜若因被外力损坏而被裂，则必须使变压器停电修理。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 129:
			question.question = "带有额定负载转矩的三相异步电动机，若使电源电压低于额定电压，则其电流就会低于额定电流。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 130:
			question.question = "变压器在空载时，其电流的有功分量较小，而无功分量较大，因此空载运行的变压器，其功率因数很低。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 131:
			question.question = "从空载到满载，随着负载电流的增加，变压器的铜耗和温度都随之增加，一、二次绕组在铁心中的合成磁通也随之增加。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 132:
			question.question = "纯电阻电路的功率因数一定等于1，如果某电路的功率因数为1，则该电路一定是只含电阻的电路。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 133:
			question.question = "电子示波器只能显被测信号的波形，而不能用来测量被测信号的大小。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 134:
			question.question = "电子管电压表对直流、交流，正弦和非正弦信号均能进行正确测量。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 135:
			question.question = "对感性电路，若保持电源电压不变而增大电源频率，则此时电路中的总电流减小。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 136:
			question.question = "自感电动势的大小正比于线圈中电流的变化率，与线圈中电流的大小无关。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 137:
			question.question = "当电路中的参数点改变时，某两点间的电压也将随之改变。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 138:
			question.question = "交流接触器铁心上的短路环断裂后会使动静铁心不能释放。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 139:
			question.question = "并联磁吹灭弧方式，磁吹力方向与电流方向无关。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 140:
			question.question = "串联磁吹灭弧方式，磁吹力的方向与电流方向无关。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 141:
			question.question = "金属导体的电阻值随着温度的升高而："
			question.rightAnswer = "增大"
			question.wrongAnswer = "减少"
			return question
		case 142:
			question.question = "纯电感电路的感抗为："
			question.rightAnswer = "ωL"
			question.wrongAnswer = "1/ωL"
			return question
		case 143:
			question.question = "在正弦交流电阻电路中，正确反映电流电压的关系式为："
			question.rightAnswer = "I=U/R"
			question.wrongAnswer = "I=Um/R"
			return question
		case 144:
			question.question = "在有些情况下为了缩短晶闸管的导通时间，加大触发电流（两倍以上）这个电流称为："
			question.rightAnswer = "强触发电流"
			question.wrongAnswer = "掣位电流"
			return question
		case 145:
			question.question = "单相正弦交流电路中有功功率的表达式是："
			question.rightAnswer = "UIcosφ"
			question.wrongAnswer = "UIsinφ"
			return question
		case 146:
			question.question = "纯电容交流电路中电流与电压的相位关系为电流："
			question.rightAnswer = "超前90°"
			question.wrongAnswer = "滞后90°"
			return question
		case 147:
			question.question = "两个正弦量为u1=36sin(314t+120°)V, u2=36sin(628t+30°)V，则有："
			question.rightAnswer = "不能判断相位差"
			question.wrongAnswer = "u2比u1超前90°"
			return question
		case 148:
			question.question = "射极输出器的输出阻抗："
			question.rightAnswer = "低"
			question.wrongAnswer = "较高"
			return question
		case 149:
			question.question = "二极管半波整流时负载两端的直流电压等于："
			question.rightAnswer = "0.45U2"
			question.wrongAnswer = "0.9U2"
			return question
		case 150:
			question.question = "三相变压器的连接组别是表示："
			question.rightAnswer = "原付边线电压的相位关系"
			question.wrongAnswer = "原付边的同名端关系"
			return question
		case 151:
			question.question = "射极输出器的电压放大倍数约等于："
			question.rightAnswer = "1"
			question.wrongAnswer = "80--100"
			return question
		case 152:
			question.question = "晶闸管的控制角越大，则输出电压："
			question.rightAnswer = "越低"
			question.wrongAnswer = "越高"
			return question
		case 153:
			question.question = "某正弦交流电压的初相角中，φU=π/6，在t=0时，其瞬时值将："
			question.rightAnswer = "大于零"
			question.wrongAnswer = "小于零"
			return question
		case 154:
			question.question = "已知msinwt第一次达到最大值的时刻是0.005s，则第二次达到最大值时刻在："
			question.rightAnswer = "0.025s"
			question.wrongAnswer = "0.075s"
			return question
		case 155:
			question.question = "U=311sin（314t-15°）伏，则U为："
			question.rightAnswer = "220∠-15°"
			question.wrongAnswer = "311∠-15°"
			return question
		case 156:
			question.question = "实际电压源与实际电流源的等效互换，对内电路而言是："
			question.rightAnswer = "不等效"
			question.wrongAnswer = "可以等效"
			return question
		case 157:
			question.question = "任一条件具备都可以得到肯定的结论，这是什么逻辑？"
			question.rightAnswer = "或"
			question.wrongAnswer = "或非"
			return question
		case 158:
			question.question = "在放大电路中，为了稳定输出电流，应引入："
			question.rightAnswer = "电流负反馈"
			question.wrongAnswer = "电流正反馈"
			return question
		case 159:
			question.question = "Z=A+B是什么逻辑？"
			question.rightAnswer = "或非"
			question.wrongAnswer = "与或非"
			return question
		case 160:
			question.question = "在三极管放大电路中，为了增强带负载的能力应怎样放大电路？"
			question.rightAnswer = "共集电极"
			question.wrongAnswer = "共发射极"
			return question
		case 161:
			question.question = "结论和给定条件相反的逻辑是："
			question.rightAnswer = "非"
			question.wrongAnswer = "与非"
			return question
		case 162:
			question.question = "已知放大电路中三个管脚对地的电位是（1）0V；（2）0.7V；（3）6V，则该三极管是："
			question.rightAnswer = "NPN型"
			question.wrongAnswer = "PNP型"
			return question
		case 163:
			question.question = "放大器采用射极偏置改善工作点偏离的是："
			question.rightAnswer = "电流负反馈"
			question.wrongAnswer = "电压正反馈"
			return question
		case 164:
			question.question = "一三相对称负载，三角形连接，已知：相电流IBC=10∠-10°安，则线电流为："
			question.rightAnswer = "17.3∠80°"
			question.wrongAnswer = "17.3∠-40°"
			return question
		case 165:
			question.question = "所有条件都具备，才有肯定的结论，这是什么逻辑？"
			question.rightAnswer = "与"
			question.wrongAnswer = "非"
			return question
		case 166:
			question.question = "单相桥式半控整流电路，通过改变控制角，负载电压可在多少之间连续可调？"
			question.rightAnswer = "0~0.9U2"
			question.wrongAnswer = "0~2.34U2"
			return question
		case 167:
			question.question = "已知：I=-14.1sin100πtA，其电流相量I为？"
			question.rightAnswer = "10∠-180°"
			question.wrongAnswer = "14.1∠0°"
			return question
		case 168:
			question.question = "可控硅导通条件是：阳极与阴极加正向电压，控制极与阴极加正向电压。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 169:
			question.question = "晶体三极管发射结反偏置、集电结处于偏置，晶体三极管处于什么工作状态？"
			question.rightAnswer = "截止"
			question.wrongAnswer = "饱和"
			return question
		case 170:
			question.question = "晶体三极管发射结处于正偏，集电结处反偏，则三极管的工作状态为："
			question.rightAnswer = "放大"
			question.wrongAnswer = "截止"
			return question
		case 171:
			question.question = "已知e=311sin (314t+5°)V，其相量E为？"
			question.rightAnswer = "220∠+175°"
			question.wrongAnswer = "220∠+185°"
			return question
		case 172:
			question.question = "戴维南定理只适用于："
			question.rightAnswer = "内部为线性含源电路"
			question.wrongAnswer = "外部为线性电路"
			return question
		case 173:
			question.question = "可控硅由多少PN结组成？"
			question.rightAnswer = "3个"
			question.wrongAnswer = "2个"
			return question
		case 174:
			question.question = "电容器的电流I=CΔUC/Δt，当UC增大时，电容器为充电过程并："
			question.rightAnswer = "吸取电能转换为电场能"
			question.wrongAnswer = "吸取电场能转换为电能"
			return question
		case 175:
			question.question = "晶体三极管处于放大工作状态，测得集电极电位为6V，基极电位0.7V，发射极接地，则该三极管为："
			question.rightAnswer = "NPN型"
			question.wrongAnswer = "PNP型"
			return question
		case 176:
			question.question = "已知：电流I=6+j8，电源频率为50Hz，其瞬时值表达式为I="
			question.rightAnswer = "10 sin (314t+53.1°)"
			question.wrongAnswer = "10 sin (314t+36.9°)"
			return question
		case 177:
			question.question = "共发射极放大器，集电极电阻RC的作用是：晶体管电流放大转变速器成电压放大。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 178:
			question.question = "三相电源Y连接，已知UB=220∠-10°伏，其UAB为？"
			question.rightAnswer = "380∠140°"
			question.wrongAnswer = "380∠20°"
			return question
		case 179:
			question.question = "某正弦交流电压的初相角φ=-π/6，在t=0时，其瞬时值将："
			question.rightAnswer = "小于零"
			question.wrongAnswer = "等于零"
			return question
		case 180:
			question.question = "若电路中某元件两端电压u=100 sin (100πt+50°)V，电流I=10 sin (100πt+140°)A，则该元件是："
			question.rightAnswer = "电容"
			question.wrongAnswer = "电阻"
			return question
		case 181:
			question.question = "阻容交流电路中电流与电压的相位关系是："
			question.rightAnswer = "电流超前0~90°电压"
			question.wrongAnswer = "电流滞后90°电压"
			return question
		case 182:
			question.question = "在正弦交流电路中，公式正确的是："
			question.rightAnswer = "Ic=jwcU"
			question.wrongAnswer = "UC=-jwct"
			return question
		case 183:
			question.question = "基本逻辑运算电路有三种，即为："
			question.rightAnswer = "与门、非门、或门"
			question.wrongAnswer = "与门、非门、与非门"
			return question
		case 184:
			question.question = "对于三相对称交流电路，不论星形或三角形接法，下列结论正确的是："
			question.rightAnswer = "P=3UmImcosφ"
			question.wrongAnswer = "S=3UI"
			return question
		case 185:
			question.question = "多级放大器极间耦合形式是："
			question.rightAnswer = "阻容、变压器、直接"
			question.wrongAnswer = "二极管、电阻、阻容"
			return question
		case 186:
			question.question = "基尔霍夫定律有："
			question.rightAnswer = "节点电流定律"
			question.wrongAnswer = "节点电压定律"
			return question
		case 187:
			question.question = "正弦交流电的三要素是："
			question.rightAnswer = "最大值、初相角、角频率"
			question.wrongAnswer = "最大值、串联、并联"
			return question
		case 188:
			question.question = "我国规定三相电力变压器的联结组别是："
			question.rightAnswer = "Y/Δ-11"
			question.wrongAnswer = "Y/Δ-7"
			return question
		case 189:
			question.question = "人为提高功率因数的方法："
			question.rightAnswer = "并联适当电容器"
			question.wrongAnswer = "并联大电抗器"
			return question
		case 190:
			question.question = "三相负载对称是："
			question.rightAnswer = "各相阻抗值相等"
			question.wrongAnswer = "各相阻抗值差"
			return question
		case 191:
			question.question = "人为提高功率因数的方法是："
			question.rightAnswer = "电路串联适当电容器"
			question.wrongAnswer = "串联大电容器"
			return question
		case 192:
			question.question = "三相负载对称是："
			question.rightAnswer = "各相阻抗值复角相等"
			question.wrongAnswer = "各相阻抗复角相差120°"
			return question
		case 193:
			question.question = "晶闸管导通条件是："
			question.rightAnswer = "阳极与阴极间加正向电压"
			question.wrongAnswer = "阳极与控制极间加正向电压"
			return question
		case 194:
			question.question = "正弦交流电路，下列方程哪个是正确的？"
			question.rightAnswer = "IL=U/XL"
			question.wrongAnswer = "赫C=Xcic"
			return question
		case 195:
			question.question = "交流电用相量表示称符号法有：代数式、三角式、几何式、指数式、极坐标式。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 196:
			question.question = "提高功率因数的好处有："
			question.rightAnswer = "可以减少线路功率损耗"
			question.wrongAnswer = "可以提高电动机的出力"
			return question
		case 197:
			question.question = "电桥外接电源时过高过低会产生什么现象？"
			question.rightAnswer = "损坏电阻"
			question.wrongAnswer = "读数不准"
			return question
		case 198:
			question.question = "关断晶闸管的方法是："
			question.rightAnswer = "断开阳极电源"
			question.wrongAnswer = "切断控制极电压"
			return question
		case 199:
			question.question = "一三相对称感性负载，分别采用三角形和Y形接到同一电源上，则："
			question.rightAnswer = "线电流：IΔ相=3IY"
			question.wrongAnswer = "负载相电压：UΔ相=3UY相"
			return question
		case 200:
			question.question = "在电力系统中，采用并联补偿电容器进行无功补偿主要作用有："
			question.rightAnswer = "提高功率因数"
			question.wrongAnswer = "改善架空线路的防雷性能"
			return question
		case 201:
			question.question = "RLC串联的正弦交流电路中，当XL=XC时，电路发生谐振，谐振特性是："
			question.rightAnswer = "电路中电流最大"
			question.wrongAnswer = "电路中无功功率不为0"
			return question
		case 202:
			question.question = "单相变压器连接组的测定方法有："
			question.rightAnswer = "直流法和交流法"
			question.wrongAnswer = "电阻法和功率测量法"
			return question
		case 203:
			question.question = "戴维南定理适用外部电路为："
			question.rightAnswer = "线性、非线性电路"
			question.wrongAnswer = "整流、饱和电路"
			return question
		case 204:
			question.question = "已知放大电路中三极管三个管脚对地电位是（1）0V，（2）0.7V，（3）6V。该三极各管脚对应的电场正确的是？"
			question.rightAnswer = "（2）是基极"
			question.wrongAnswer = "（1）是基极"
			return question
		case 205:
			question.question = "下列是三极管的极限参数的是："
			question.rightAnswer = "集电极最大允许电流ICM"
			question.wrongAnswer = "穿透电流ICEO"
			return question
		case 206:
			question.question = "不属于放大电路的三种组态是："
			question.rightAnswer = "饱和"
			question.wrongAnswer = "共集电极放大"
			return question
		case 207:
			question.question = "设三相正弦交流电的ia=Imsinωt，则ib为："
			question.rightAnswer = "ib=Imsin (ωt -120°)"
			question.wrongAnswer = "ib=Imsin (ωt -240°)"
			return question
		case 208:
			question.question = "设三相正弦交流电的ia=Imsinωt，则ib为："
			question.rightAnswer = "ib=Imsin (ωt +240°)"
			question.wrongAnswer = "ib=Imsin (ωt +120°)"
			return question
		case 209:
			question.question = "三极管的三种工作状态是："
			question.rightAnswer = "放大、截止、饱和"
			question.wrongAnswer = "开路、短路、截止"
			return question
		case 210:
			question.question = "晶闸管的阻断作用有："
			question.rightAnswer = "正向阻断、反向阻断"
			question.wrongAnswer = "正向偏置、反向偏置"
			return question
		case 211:
			question.question = "提高功率因数的意义有："
			question.rightAnswer = "充分利用设备容量"
			question.wrongAnswer = "节省线路投资"
			return question
		case 212:
			question.question = "提高功率因数的意义有："
			question.rightAnswer = "线路功率和电压损耗减小"
			question.wrongAnswer = "节约经济开支"
			return question
		case 213:
			question.question = "放大电路的三种组态是：共集极放大器、共基极放大器、共发射极放大器。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 214:
			question.question = "TTL集成电路的全称是晶体管—晶体管逻辑集成电路。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 215:
			question.question = "当三极管的发射结和集电结都处于正偏状态时，三极管一定工作在饱和区。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 216:
			question.question = "晶体三极管放大器，为了消除湿度变化的影响，一般采用固定偏置电路。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 217:
			question.question = "可控硅整流电路中，对触发脉冲有一定的能量要求，如果脉搏冲电流太小，可控硅也无法导通。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 218:
			question.question = "两个不同频率的正弦量在相位上的差叫相位差。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 219:
			question.question = "并联电容器可以提高感性负载本身的功率因数。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 220:
			question.question = "叠加原理只能用严寒计算电压电流，不能用来计算电路的功率。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 221:
			question.question = "晶闸管控制角越大电压则越高。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 222:
			question.question = "某电气元件两端交流电压的相位超前于流过它上面的电流，则该元件为容性负载。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 223:
			question.question = "晶闸管的导通条件是晶闸管加正向电压门极加反向电压。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 224:
			question.question = "晶闸管具有正反向阻断能力。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 225:
			question.question = "电感元件在电路中不消耗能量，它是无功负荷。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 226:
			question.question = "所谓部分电路欧姆定律，其部分电路是指不含电源的电路。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 227:
			question.question = "线圈中磁通产生的感应电势与磁通成正比。"
			question.rightAnswer = "正确"
			question.wrongAnswer = "错误"
			return question
		case 228:
			question.question = "射极输出器不仅能作电压放大器，主要是为了增加输入阻抗，减低输出阻抗。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 229:
			question.question = "晶闸管触发电路的脉冲前沿要陡，前沿上升时间不超过100μs。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 230:
			question.question = "单结晶体管具有一个发射极、一个基极、一个集电极。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 231:
			question.question = "单结晶体管的发射极电压高于谷点电压时，晶体管就导通。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		case 232:
			question.question = "纯电感负载功率因数为零，纯电容负载功率因数为1。"
			question.rightAnswer = "错误"
			question.wrongAnswer = "正确"
			return question
		default:
			break
		}

		return nil
	}
}





