package cosmetic.infrastructure.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.jdbc.DataSourceBuilder;

@Configuration
@MapperScan(value = "cosmetic.persistence", sqlSessionFactoryRef = "SqlSessionFactory")
public class DataSourceConfig {

    @Value("${spring.datasource.mapper-locations}")
    String mPath;

    // mybatis 설정 파일을 따로 작성해서 임포트할 예정 - snake_case -> camelCase 를 위함
    @Value("${mybatis.config-location}")
    String mybatisConfigPath;


    @Bean(name = "dataSource")
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource DataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean(name = "e1omsDataSource")
    @ConfigurationProperties(prefix = "spring.e1oms.datasource")
    public DataSource e1omsDataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean(name = "SqlSessionFactory")
    public SqlSessionFactory SqlSessionFactory(@Qualifier("dataSource") DataSource DataSource, ApplicationContext applicationContext) throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(DataSource);
        sqlSessionFactoryBean.setMapperLocations(applicationContext.getResources(mPath));
        sqlSessionFactoryBean.setConfigLocation(applicationContext.getResource(mybatisConfigPath));
        return sqlSessionFactoryBean.getObject();
    }

    @Bean(name = "SessionTemplate")
    public SqlSessionTemplate SqlSessionTemplate(@Qualifier("SqlSessionFactory") SqlSessionFactory firstSqlSessionFactory) {
        return new SqlSessionTemplate(firstSqlSessionFactory);
    }
    
    @Bean
    public CommonsMultipartResolver multipartResolver(){
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
        commonsMultipartResolver.setDefaultEncoding("UTF-8");
        commonsMultipartResolver.setMaxUploadSize(50 * 1024 * 1024);
        return commonsMultipartResolver;
    }

    @Bean
    public JdbcTemplate e1omsJdbcTemplate(@Qualifier("e1omsDataSource") DataSource dataSource) {
        return new JdbcTemplate(dataSource);
    }
}
