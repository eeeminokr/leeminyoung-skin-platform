package cosmetic.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cosmetic.domain.SkinData_20191105;
import cosmetic.persistence.SkinDataMapper2019;
import cosmetic.web.ApiPath;
import springfox.documentation.annotations.ApiIgnore;

/**
 * 통합데이터 API 요청 처리 controller
 */
@ApiIgnore
@RestController
@RequestMapping(value = ApiPath.Keys)
public class SkinDataApiController extends BaseApiController {
    @Autowired
    private SkinDataMapper2019 _mapper;

    /**
     * 1_맞춤형화장품과제_통합데이터_KJO_3000명P0006712.xlsx 파일 기준 피부정밀측정데이터 대상자 연령대별 인원수 통계 제공
     * @return
     * @throws Exception
     */
    @GetMapping("/skin-data/measurment-data/2019")
	public List<SkinData_20191105> getMeasurmentData_2019() throws Exception{
        var list = this._mapper.getAgeBandSummaryOfSkinPrecisionMeasurementData();

        return list;
	}
    
    /**
     * 1_맞춤형화장품과제_통합데이터_KJO_3000명P0006712.xlsx 파일 기준 설문/문진 데이터 대상자 연령대별 인원수 통계 제공
     * @return
     * @throws Exception
     */
    @GetMapping("/skin-data/interview-data/2019")
	public List<SkinData_20191105> getInterviewData_2019() throws Exception{
        var list = this._mapper.getAgeBandSummaryOfInterviewData();

        return list;
	}

    /**
     * 1_맞춤형화장품과제_통합데이터_KJO_3000명P0006712.xlsx 파일 기준 유전자 데이터 대상자 연령대별 인원수 통계 제공
     * @return
     * @throws Exception
     */
    @GetMapping("/skin-data/gene-data/2019")
	public List<SkinData_20191105> getGeneData_2019() throws Exception{
        var list = this._mapper.getAgeBandSummaryOfGeneData();

        return list;
	}
}
