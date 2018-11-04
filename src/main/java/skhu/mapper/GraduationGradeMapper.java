package skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import skhu.dto.GraduationGrade;
import skhu.dto.Student;

@Mapper
public interface GraduationGradeMapper {
	List<GraduationGrade> findByCommon();
	List<GraduationGrade> findYear(@Param("departmentId")int departmentId);
	List<GraduationGrade> findByDepartment(@Param("departmentId") int departmentId, @Param("year") String year);
	List<GraduationGrade> findByOption(@Param("condition") GraduationGrade condition, @Param("searchText") String searchText);
	int countByOption(@Param("condition") GraduationGrade condition, @Param("searchText") String searchText);
	List<GraduationGrade> findByStudent(@Param("year") String year, @Param("student") Student student, @Param("mainGraduation") String mainGraduation, @Param("subGraduation") String subGraduationString);
	GraduationGrade findById(@Param("id") int id);
	void update(GraduationGrade graduationGrade);
}