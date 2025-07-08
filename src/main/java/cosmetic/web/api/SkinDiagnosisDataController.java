package cosmetic.web.api;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import springfox.documentation.annotations.ApiIgnore;
import cosmetic.domain.AuthDetails;
import cosmetic.domain.AramSkinData;
import cosmetic.domain.ServiceException;
import cosmetic.domain.SkinDiagnosisData;
import cosmetic.domain.form.AramSkinForm;
import cosmetic.service.SkinDiagnosisDataService;
import cosmetic.web.ApiPath;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;

@Slf4j
// @ApiIgnore
@RestController
@RequestMapping(value = ApiPath.Keys)
public class SkinDiagnosisDataController extends BaseApiController {

    @Autowired
    private SkinDiagnosisDataService service;

    private enum Provider {
        aram,
        chowis,
        lulu,
        lilly,
        linker,
        fnd,
        kctech,
        pie,
        helios;
    }

    @GetMapping("/skin-diagnosis-data/{provider}")
    public List<? extends SkinDiagnosisData> getSkinDiagnosisDataE1OMS(@PathVariable String provider)
            throws ServiceException {
        Provider p = null;
        try {
            p = Provider.valueOf(provider);
        } catch (Exception e) {
            throw new ServiceException("Invalid provider. - " + provider);
        }

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null) {
            throw new ServiceException("로그인을 먼저해 주세요.");
        }
        AuthDetails details = (AuthDetails) authentication.getPrincipal();
        if (details == null) {
            throw new ServiceException("로그인을 먼저해 주세요.");
        }

        String username = details.getUsername();
        // for testing
        // username="luvisra@gmail.com";

        switch (p) {
            case aram:
                return this.service.getSkinDiagnosisDataFromE1OMS(username);
            case chowis:
            case lulu:
            case lilly:
            case linker:
            case fnd:
            case kctech:
            case pie:
            case helios:
            default:
                throw new ServiceException("Not implemented provider. - " + p);
        }
    }

    /**
     * 
     * aram_c_a = sys.argv[2] # 볼 수분 측정값
     * aram_f_a = sys.argv[3] # 미간 수분 측정값
     * aram_e_w = sys.argv[4] # 눈가 주름 측정값(평균 거칠기 비교용)
     * aram_f_w = sys.argv[5] # 미간 주름 측정값(평균 거칠기 비교용)
     * aram_f_o = sys.argv[6] # 미간 유분 측정값
     * aram_m = sys.argv[7] # 색소 침착부위 측정값
     * aram_nm = sys.argv[8] # 비색소 침착부위 측정값
     */
    @PostMapping("/skin-diagnosis-data/aram")
    @ApiOperation(value = "일반소비자 대상자 측정값", notes = "일반 소비자 대상자의 측정값을 전달합니다.")
    public ResponseEntity<AramSkinData> postSkinData(@RequestBody AramSkinForm data) throws ServiceException {
        if (log.isInfoEnabled()) {
            log.info("-> " + data);
        }

        AramSkinData pdata = this.service.create(data);
        return ResponseEntity.ok(pdata);
    }

}
