package cosmetic.infrastructure.config;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;

import cosmetic.domain.ErrorResponse;
import cosmetic.exception.ForbiddenException;
import cosmetic.infrastructure.security.JwtSecurityException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import cosmetic.domain.FailureResponse;
import cosmetic.domain.ServiceException;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestControllerAdvice  //(annotations = {RestController.class })
public class ExceptionHandler extends ResponseEntityExceptionHandler {

    @org.springframework.web.bind.annotation.ExceptionHandler(ServiceException.class)
	public ResponseEntity<Object> handleServiceException(ServiceException e, HttpServletRequest request) {
		if(log.isErrorEnabled()) {
			log.error("-> ExceptionHandler handleServiceException : "+e.getMessage() + "..." + request.getRequestURI());
		}
		
		return this.handleException(e, request.getRequestURI(), HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@org.springframework.web.bind.annotation.ExceptionHandler(Exception.class)
	public ResponseEntity<Object> handleException(Exception e, HttpServletRequest request) {
		if(log.isErrorEnabled()) {
			log.error("-> ExceptionHandler handleException : "+e.getStackTrace() + "..." + request.getRequestURI());
		}
		e.getMessage();
		return this.handleException(e, request.getRequestURI(), HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@org.springframework.web.bind.annotation.ExceptionHandler(JwtSecurityException.class)
	public ResponseEntity<Object> handleJwtSecurityException(JwtSecurityException e, HttpServletRequest request) {
		if(log.isErrorEnabled()) {
			log.error("-> ExceptionHandler handleJwtSecurityException : "+e.getStackTrace() + "..." + request.getRequestURI());
		}
		e.getMessage();
		return this.handleException(e, request.getRequestURI(), HttpStatus.UNAUTHORIZED);
	}	
	
	protected ResponseEntity<Object> handleException(Exception e, String path, HttpStatus status) {
		FailureResponse failure = new FailureResponse();
		failure.setMessage(e.getMessage());
		failure.setException(e.getClass().getName());
		Throwable cause = e.getCause();
		if(cause!=null) {
			failure.setCauseMessage(cause.getMessage());
			failure.setCauseException(cause.getClass().getName());
		}
		failure.setPath(path);
		failure.setTimestamp(LocalDateTime.now());
		
		return new ResponseEntity<>(failure, status);
	}


    // @org.springframework.web.bind.annotation.ExceptionHandler
    // public ResponseEntity<Object> validation(ConstraintViolationException e, WebRequest request) {
    //     return handleExceptionInternal(e, Code.VALIDATION_ERROR, request);
    // }

    // @org.springframework.web.bind.annotation.ExceptionHandler
    // public ResponseEntity<Object> general(GeneralException e, WebRequest request) {
    //     return handleExceptionInternal(e, e.getErrorCode(), request);
    // }

    // @org.springframework.web.bind.annotation.ExceptionHandler
    // public ResponseEntity<Object> exception(Exception e, WebRequest request) {
    //     return handleExceptionInternal(e, Code.INTERNAL_ERROR, request);
    // }

    // @Override
    // protected ResponseEntity<Object> handleExceptionInternal(Exception ex, Object body,
    //     HttpHeaders headers, HttpStatus status, WebRequest request) {
    //     return handleExceptionInternal(ex, Code.valueOf(status), headers, status, request);
    // }


    // private ResponseEntity<Object> handleExceptionInternal(Exception e, Code errorCode,
    //     WebRequest request) {
    //     return handleExceptionInternal(e, errorCode, HttpHeaders.EMPTY, errorCode.getHttpStatus(),
    //         request);
    // }

    // private ResponseEntity<Object> handleExceptionInternal(Exception e, Code errorCode,
    //     HttpHeaders headers, HttpStatus status, WebRequest request) {
    //     return super.handleExceptionInternal(
    //         e,
    //         ErrorResponse.of(errorCode, errorCode.getMessage(e)),
    //         headers,
    //         status,
    //         request
    //     );
    // }

	@org.springframework.web.bind.annotation.ExceptionHandler(ForbiddenException.class)
	public ResponseEntity<Object> handleExceptionForbiddenException(Exception e, HttpServletRequest request) {
		if(log.isErrorEnabled()) {
			log.error("-> ExceptionHandler handleException : "+e.getStackTrace() + "..." + request.getRequestURI());
		}
		e.getMessage();
		return this.handleException(e, request.getRequestURI(), HttpStatus.FORBIDDEN);
	}

}
