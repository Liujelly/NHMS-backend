package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.entity.HealthIndexStandard;
import xh.nursinghome.system.entity.PhysicalExam;
import xh.nursinghome.system.dao.HealthIndexMapper;
import xh.nursinghome.system.service.HealthIndexService;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author ljy
 * @create 2022-11-06 9:57
 */
@Service
public class HealthIndexServiceImpl implements HealthIndexService {

    @Autowired
    HealthIndexMapper healthIndexMapper;

    @Override
    public List<HealthIndex> showIndex(Integer pageNum,Integer pageSize,Integer orderId,String orderName) {
        return healthIndexMapper.showIndex(pageNum,pageSize,orderId,orderName);
    }


    @Override
    public Integer selectTotal() {
        return healthIndexMapper.selectTotal();
    }

    @Override
    public Integer addHealthIndex(HealthIndex healthIndex) {
        return healthIndexMapper.addHealthIndex(healthIndex);
    }

    //    public HealthIndex(Integer orderId, String orderName, Double bmi, Integer heartRateIndex, Integer bloodOxygenIndex, Integer bloodPressureIndex, Integer bloodGlucoseIndex, Integer bloodFatIndex, Double temperatureIndex, Integer healthIndex) {
    public HealthIndex getHealthIndex(PhysicalExam physicalExam, HealthIndexStandard standard) {

        //初始化健康指数
        HealthIndex healthIndex =new HealthIndex();
        //获得健康标准
        //健康心率最高    70
        Integer heartRateGoodHigh = standard.getHeartRateGoodHigh();
        //健康心率最低    55
        Integer heartRateGoodLow = standard.getHeartRateGoodLow();
        //中等心率最高    100
        Integer heartRateMidHigh = standard.getHeartRateMidHigh();
        //中等心率最低    60
        Integer heartRateMidLow = standard.getHeartRateMidLow();
        //差心率最高     160
        Integer heartRateBadHigh = standard.getHeartRateBadHigh();
        //差心率最低     40
        Integer heartRateBadLow = standard.getHeartRateBadLow();
        //血氧含量高     90
        Integer bloodOxygenGood = standard.getBloodOxygenGood();
        //血氧含量低     80
        Integer bloodOxygenMid = standard.getBloodOxygenMid();
        //高压最大      140
        Integer bloodPressureHighGood = standard.getBloodPressureHighGood();
        //高压最小/低压最大 90
        Integer bloodPressureMidGood = standard.getBloodPressureMidGood();
        //低压最小      60
        Integer bloodPressureLowGood = standard.getBloodPressureLowGood();
        //血糖高       6.1
        Double bloodGlucoseHigh = standard.getBloodGlucoseHigh();
        //血糖低       3.9
        Double bloodGlucoseLow = standard.getBloodGlucoseLow();
        //血脂高值      5.2
        Double bloodFatHigh = standard.getBloodFatHigh();
        //血脂低值      2.8
        Double bloodFatLow = standard.getBloodFatLow();
        //体温健康高值    37.3
        Double temperatureGoodHigh = standard.getTemperatureGoodHigh();
        //体温健康低值    36.3
        Double temperatureGoodLow = standard.getTemperatureGoodLow();
        //体温发烧      39
        Double temperatureBadHigh = standard.getTemperatureBadHigh();
        //体温发高烧     41
        Double temperatureBadHigher = standard.getTemperatureBadHigher();


        Integer orderId=physicalExam.getOrderId();
        String orderName=physicalExam.getPeName();
        //获取身高体重
        Double peHeight = physicalExam.getPeHeight();
        Double peWeight = physicalExam.getPeWeight();
        //获取心率
        Integer heartRate = physicalExam.getPeHeartRate();
        //获取血氧
        Integer bloodOxygen = physicalExam.getPeBloodOxygen();
        //获取高压
        Integer peBloodPressureHigh = physicalExam.getPeBloodPressureHigh();
        //获取低压
        Integer peBloodPressureLow = physicalExam.getPeBloodPressureLow();
        //获取血糖
        Double peBloodGlucose = physicalExam.getPeBloodGlucose();
        //获取血脂
        Double peBloodFat = physicalExam.getPeBloodFat();
        //获取体温
        Double peTemperature = physicalExam.getPeTemperature();

        //BMI初始化
        Double bmiIndex =0.0;
        Double bmi = 0.0;
        //心率指数初始化
        Integer heartRateIndex = 0;
        //血氧指数初始化
        Integer bloodOxygenIndex = 0;
        //血压指数初始化
        Integer bloodPressureIndex = 0;
        //血糖指数初始化
        Integer bloodGlucoseIndex = 0;
        //血脂指数初始化
        Integer bloodFatIndex = 0;
        //体温指数初始化
//        Double temperatureIndex = 0.0;
        //健康指数初始化
        Integer healthIndexNum  = 0;

        //初始化分析
        String analyse="";
        //初始化建议
        String suggest="";
        //初始化疾病
        String disease="";

        healthIndex.setOrderId(orderId);
        healthIndex.setOrderName(orderName);

        //BMI设置
        bmi = peWeight/(peHeight/100)/(peHeight/100);
        BigDecimal b = new BigDecimal(bmi);

        bmi = b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
        if(bmi>=20&&bmi<=25){
            analyse="BMI正常，";
            suggest="BMI正常，";
        }
        else if(bmi<20){
            analyse="BMI过低，";
            suggest="偏瘦，";
        }
        else if(bmi>25&&bmi<=30){
            analyse="BMI偏高，";
            suggest="偏胖，";
        }
        else if(bmi>30){
            analyse="BMI过高，";
            suggest="肥胖，";
            disease="肥胖症，";
        }
        healthIndex.setBmi(bmi);

        //设置心率指数
        if(heartRate>=heartRateGoodLow&&heartRate<=heartRateGoodHigh){
            heartRateIndex = 20;
            analyse+="心率理想，";
        }
        else if(heartRate>=heartRateMidLow&&heartRate<=heartRateMidHigh){
            heartRateIndex = 15;
            analyse+="心率正常，";
        }
        else if(heartRate<=heartRateBadLow||heartRate>=heartRateBadHigh){
            heartRateIndex = 5;
            analyse+="心脏存在问题，";
            suggest+="注意心脏疾病的预防，";
            disease+="心脏病，";
        }
        else {
            heartRateIndex = 10;
            analyse+="心率一般，";
        }
        healthIndex.setHeartRateIndex(heartRateIndex);
        //设置血氧指数
        if(bloodOxygen>bloodOxygenGood){
            bloodOxygenIndex = 20;
            analyse+="血氧饱和度优，";
        }
        else if(bloodOxygen>=bloodOxygenMid&&bloodOxygen<=bloodOxygenGood){
            bloodOxygenIndex = 15;
            analyse+="血氧饱和度良好，";
        }
        else{
            bloodOxygenIndex = 5;
            analyse+="血氧饱和度较低，";
            suggest+="注意呼吸系统疾病和慢性心血管疾病的预防，";
            disease+="心律不齐，";
        }
        healthIndex.setBloodOxygenIndex(bloodOxygenIndex);
        //设置血压指数
        if(peBloodPressureHigh>=bloodPressureMidGood&&peBloodPressureHigh<=bloodPressureHighGood
                &&peBloodPressureLow<=bloodPressureMidGood&&peBloodPressureLow>=bloodPressureLowGood)
        {
            bloodPressureIndex = 20;
            analyse+="血压正常，";
        }
        else if(peBloodPressureHigh>bloodPressureHighGood||peBloodPressureLow>bloodPressureMidGood){
            bloodPressureIndex = 10;
            analyse+="血压偏高，";
            suggest+="建议减少钠盐的摄入，按时服用降压药，";
            disease+="心力衰竭，脑出血，脑血栓，";
        }
        else if(peBloodPressureHigh<bloodPressureMidGood||peBloodPressureLow<bloodPressureLowGood){
            bloodPressureIndex = 10;
            analyse+="血压偏低，";
            suggest+="建议增强营养，加强锻炼，";
            disease+="脑供血不足，嗜睡，抑郁，";
        }
        else {
            bloodPressureIndex = 0;
            analyse+="血压异常，";
            suggest+="建议复检血压，";
            disease+="血压异常，";
        }
        healthIndex.setBloodPressureIndex(bloodPressureIndex);
        //设置血糖指数
        if(peBloodGlucose>=bloodGlucoseLow&&peBloodGlucose<=bloodGlucoseHigh){
            bloodGlucoseIndex = 20;
            analyse+="血糖正常，";

        }
        else if(peBloodGlucose>bloodGlucoseHigh){
            bloodGlucoseIndex = 10;
            analyse+="血糖偏高，";
            suggest+="建议清淡饮食为主，限制盐分摄入，多运动，";
            disease+="糖尿病，";
        }
        else {
            bloodGlucoseIndex = 10;
            analyse+="血糖偏低，";
            suggest+="建议少食多餐，备好低血糖急救食物，";
            disease+="肝脏疾病，甲减，";
        }
        healthIndex.setBloodGlucoseIndex(bloodGlucoseIndex);
        //设置血脂指数
        if(peBloodFat>=bloodFatLow&&peBloodFat<=bloodFatHigh){
            bloodFatIndex=20;
            analyse+="血脂正常，";
        }
        else if(peBloodFat>bloodFatHigh){
            bloodFatIndex=10;
            analyse+="血脂偏高，";
            suggest+="建议清淡饮食，建少不饱和脂肪酸的摄入，";
            disease+="脂肪肝，肝硬化，胆石症，胰腺炎，";
        }
        else {
            bloodFatIndex=10;
            analyse+="血脂偏低，";
            suggest+="多吃一些脂肪类和胆固醇类食物，多运动，";
            disease+="肝功能下降，内分泌失调，";
        }
        healthIndex.setBloodFatIndex(bloodFatIndex);
        //设置体温
        healthIndex.setTemperatureIndex(peTemperature);
        //设置健康指数
        healthIndexNum = heartRateIndex+bloodOxygenIndex+bloodPressureIndex+bloodGlucoseIndex+bloodFatIndex;
        healthIndex.setHealthIndexNum(healthIndexNum);

        //设置分析
        healthIndex.setAnalyse(analyse);
        //设置建议
        healthIndex.setSuggest(suggest);
        //设置疾病
        if(disease.equals(""))
        {disease="健康状态良好";}
        healthIndex.setDisease(disease);
        return healthIndex;
    }

    @Override
    public Integer selectIndexById(Integer orderId) {
        return healthIndexMapper.selectIndexById(orderId);
    }
}
