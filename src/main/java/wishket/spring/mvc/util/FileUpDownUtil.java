package wishket.spring.mvc.util;

import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

@Log4j
@Component("fud")
public class FileUpDownUtil {

    // 파일 업로드시 저장된 경로 지정
    private String uploadPath = "/Users/Taehwa/Desktop/fileUpload/"; // 윈도우용
    private String tempPath = "/Users/Taehwa/Desktop/fileTemp/"; // 윈도우용 임시폴더
//    private String uploadPath = "/home/centos/fileupload/"; // 리눅스용
//    private String tempPath = "/home/centos/filetemp/"; // 리눅스용 임시폴더


    // 임시폴더에 저장
    public String procUpload1(MultipartFile mf, String uuid) {
        String ofname = mf.getOriginalFilename(); // 원 파일명 가져옴

        // abc.abc.txt 일 경우를 위해 length -1 위치의 값을 추출
        int pos = ofname.lastIndexOf(".");
        String ftype = ofname.substring( pos + 1 );
        String fname = ofname.substring(0, pos);

        String nfname = fname + uuid + "." + ftype;

        try{
            // 지정한 위치로 파일 저장
            mf.transferTo(new File(tempPath + nfname));

            // 업로드한 파일의 퍼미션을 설정
            // 즉, 업로드한 파일의 권한을 755 (rwxr-xr-x)로 설정 read: 4 , write: 2, excute: 1
//            String perms = "rwxr-xr-x";
//            Path img = Paths.get(uploadPath + nfname);
//            Set<PosixFilePermission> pfp = PosixFilePermissions.fromString(perms);
//            Files.setPosixFilePermissions(img, pfp); // 리눅스용 퍼미션 처리 코드

        }catch(Exception ex){
            ex.printStackTrace();
        }

        return ofname + "/" + (mf.getSize()/1024) + "/" + ftype;
    }

    // MultipartFile로 구현한 새로운 업로드 처리 소스
    public String procUpload2(MultipartFile mf, String uuid) {
        String ofname = mf.getOriginalFilename(); // 원 파일명 가져옴

        // abc.abc.txt 일 경우를 위해 length -1 위치의 값을 추출
        int pos = ofname.lastIndexOf(".");
        String ftype = ofname.substring( pos + 1 );
        String fname = ofname.substring(0, pos);

        String nfname = fname + uuid + "." + ftype;

        try{
            // 지정한 위치로 파일 저장
            mf.transferTo(new File(uploadPath + nfname));

            // 업로드한 파일의 퍼미션을 설정
            // 즉, 업로드한 파일의 권한을 755 (rwxr-xr-x)로 설정 read: 4 , write: 2, excute: 1
            String perms = "rwxr-xr-x";
            Path img = Paths.get(uploadPath + nfname);
            Set<PosixFilePermission> pfp = PosixFilePermissions.fromString(perms);
            Files.setPosixFilePermissions(img, pfp); // 리눅스용 퍼미션 처리 코드

        }catch(Exception ex){
            ex.printStackTrace();
        }

        return ofname + "/" + (mf.getSize()/1024) + "/" + ftype;
    }

    // 다운로드 처리 메서드
    public void procDownload(
            HttpServletRequest req,
            HttpServletResponse res) throws IOException {

        // 파일명이 한글인 경우를 대비해서 작성해 둠
        req.setCharacterEncoding("utf-8");

        // 다운로드할 파일명을 알아냄
        String fName = req.getParameter("f");

        // HTTP 응답을 위해 stream 관련 변수 선언
        InputStream is = null;
        OutputStream os = null;
        File f = null;

        try {
            boolean skip = false;

            // 다운로드할 파일의 실제 위치 파악하고
            // 파일의 내용을 stream으로 미리 읽어둠
            try {
                f = new File(uploadPath, fName);
                is = new FileInputStream(f);
            } catch (Exception ex) {
                skip = true;
            }

            // HTTP 응답을 위한 준비작업
            res.reset();
            res.setContentType("application/octet-stream");
            // 응답 스트림의 내용은 이진형태로 구성되었음
            res.setHeader("Content-Description", "FileDownload");
            // 다운로드를 위해 임의로 작성

            if (!skip) {  // 다운로드할 파일이 존재한다면

                // 파일명이 한글인 경우 제대로 표시할 수 있도록
                // utf-8로 변환함
                fName = new String(
                        fName.getBytes("utf-8"),
                        "iso-8859-1");

                // 클릭시 다운로드 대화상자에 표시할 내용 정의
                res.setHeader("Content-Disposition",
                        "attachment; filename=\"" + fName + "\"");
                res.setHeader("Content-Type",
                        "application/octet-stream; charset=utf-8");
                res.setHeader("Content-Length", f.length() + "");

                // Http 응답으로 파일의 내용을 스트림으로 전송함
                os = res.getOutputStream();
                // 파일의 내용을 byte 배열에 저장함
                byte b[] = new byte[(int) f.length()];
                int cnt = 0;

                // 1byte씩 http 응답 스트림으로 쏨
                while ((cnt = is.read(b)) > 0) {
                    os.write(b, 0, cnt);
                }

            } else {  // 다운로드할 파일이 없다면
                res.setContentType(
                        "text/html; charset=utf-8");
                PrintWriter out = res.getWriter();
                out.print("<h1>다운로드할 파일이 없어요!!</h1>");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (os != null) os.close();
            if (is != null) is.close();
        } // try

    } // method

    // 다운로드 처리 메서드 v2
    public void procDownloadV2(
            String fname, String uuid,
            HttpServletResponse res) throws IOException {
        
        // 다운로드할 파일이름 조합
        int pos = fname.lastIndexOf(".");
        String fName = fname.substring(0, pos) + uuid + "." + fname.substring(pos + 1);

        // HTTP 응답을 위해 stream 관련 변수 선언
        InputStream is = null;
        OutputStream os = null;
        File f = null;

        try {
            boolean skip = false;

            // 다운로드할 파일의 실제 위치 파악하고
            // 파일의 내용을 stream으로 미리 읽어둠
            try {
                f = new File(uploadPath, fName);
                is = new FileInputStream(f);
            } catch (Exception ex) {
                skip = true;
            }

            // HTTP 응답을 위한 준비작업
            res.reset();
            res.setContentType("application/octet-stream");
            // 응답 스트림의 내용은 이진형태로 구성되었음
            res.setHeader("Content-Description", "FileDownload");
            // 다운로드를 위해 임의로 작성

            if (!skip) {  // 다운로드할 파일이 존재한다면

                // 파일명이 한글인 경우 제대로 표시할 수 있도록
                // utf-8로 변환함
                fname = new String(
                        fname.getBytes("utf-8"),
                        "iso-8859-1");

                // uuid 포함된 파일명으로 다운받기 위해 변환.
                // 아래 content-Disposition에 fName 설정하는데 이 변환작업이 없으면 파일명이 down으로 받아짐
                fName = new String(
                        fName.getBytes("utf-8"),
                        "iso-8859-1");

                // 클릭시 다운로드 대화상자에 표시할 내용 정의
                res.setHeader("Content-Disposition",
                        "attachment; filename=\"" + fName + "\""); // fname인경우 uuid없는 파일명, fName일경우 있는 파일명
                res.setHeader("Content-Type",
                        "application/octet-stream; charset=utf-8");
                res.setHeader("Content-Length", f.length() + "");

                // Http 응답으로 파일의 내용을 스트림으로 전송함
                os = res.getOutputStream();
                // 파일의 내용을 byte 배열에 저장함
                byte b[] = new byte[(int) f.length()];
                int cnt = 0;

                // 1byte씩 http 응답 스트림으로 쏨
                while ((cnt = is.read(b)) > 0) {
                    os.write(b, 0, cnt);
                }

            } else {  // 다운로드할 파일이 없다면
                res.setContentType(
                        "text/html; charset=utf-8");
                PrintWriter out = res.getWriter();
                out.print("<h1>다운로드할 파일이 없어요!!</h1>");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (os != null) os.close();
            if (is != null) is.close();
        } // try

    } // method

    // 겹치치 않는 파일명을 위해 유니크한 임의의 값 생성
    public String makeUUID() {
        String fmt = "yyyyMMddHHmmss";
        SimpleDateFormat sdf = new SimpleDateFormat(fmt);

        return sdf.format(new Date());
    }

    public String moveFile(String oname, String uuid){
        FileInputStream fis = null;
        FileOutputStream fos = null;

        int pos = oname.lastIndexOf(".");
        String ftype = oname.substring( pos + 1 );
        String fname = oname.substring(0, pos);

        String nfname = fname + uuid + "." + ftype;

        File file = new File(tempPath, nfname);
        File newFile = new File(uploadPath, nfname);

        // 리눅스용 퍼미션 설정
//        String perms = "rwxr-xr-x";
//        Path img = Paths.get(tempPath + nfname);
//        Set<PosixFilePermission> pfp = PosixFilePermissions.fromString(perms);

        int n = 0;
        byte[] buf = new byte[1024];

        try {
//            Files.setPosixFilePermissions(img, pfp); // 리눅스용 퍼미션 처리 코드
            fis = new FileInputStream(file);
            fos = new FileOutputStream(newFile);
            while( ( n = fis.read(buf)) != -1){
                fos.write(buf, 0, n);
                fos.flush();
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                fis.close();
                fos.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return null;
    }
}
