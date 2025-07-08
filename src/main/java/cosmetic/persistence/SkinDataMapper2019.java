package cosmetic.persistence;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cosmetic.domain.SkinData_20191105;

/**
 * 스킨데이터 (1_맞춤형화장품과제_통합데이터_KJO_3000명P0006712.xlsx 파일) 관리 맵퍼
 */
@Mapper
public interface SkinDataMapper2019 {
    /**
     * 피부정밀측정데이터의 대상자 연령대별 인원수 통계 조회 (1_맞춤형화장품과제_통합데이터_KJO_3000명P0006712.xlsx 파일)
     * @return
     */
    List<SkinData_20191105> getAgeBandSummaryOfSkinPrecisionMeasurementData();

    /**
     * 설문‧문진데이터의 대상자 연령대별 인원수 통계 조회 (1_맞춤형화장품과제_통합데이터_KJO_3000명P0006712.xlsx 파일)
     * @return
     */
    List<SkinData_20191105> getAgeBandSummaryOfInterviewData();

    /**
     * 유전자데이터의 대상자 연령대별 인원수 통계 조회 (1_맞춤형화장품과제_통합데이터_KJO_3000명P0006712.xlsx 파일)
     * @return
     */
    List<SkinData_20191105> getAgeBandSummaryOfGeneData();
}
