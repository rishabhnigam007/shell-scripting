import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ZipFolder {
    public static void main(String[] args) {

	// Specify the path to the folder you want to zip
    	String folderPath = "C:/Users/Rishabh/Desktop/reports";
        
	// Specify the path for the output zip file
	String zipFilePath = "C:/Users/Rishabh/Desktop/reports.zip";

        try {
            zipFolder(folderPath, zipFilePath);
            System.out.println("Folder zipped successfully!");
        } catch (IOException e) {
            System.out.println("An error occurred while zipping the folder: " + e.getMessage());
        }
    }

    private static void zipFolder(String folderPath, String zipFilePath) throws IOException {
        File folder = new File(folderPath);
        File zipFile = new File(zipFilePath);

        FileOutputStream fos = new FileOutputStream(zipFile);
        ZipOutputStream zos = new ZipOutputStream(fos);

        zipFolder(folder, folder.getName(), zos);

        zos.close();
        fos.close();
    }

    private static void zipFolder(File folder, String parentFolder, ZipOutputStream zos) throws IOException {
        byte[] buffer = new byte[1024];
        File[] files = folder.listFiles();

        if (files != null) {
            for (File file : files) {
                if (file.isDirectory()) {
                    zipFolder(file, parentFolder + "/" + file.getName(), zos);
                } else {
                    FileInputStream fis = new FileInputStream(file);
                    zos.putNextEntry(new ZipEntry(parentFolder + "/" + file.getName()));

                    int length;
                    while ((length = fis.read(buffer)) > 0) {
                        zos.write(buffer, 0, length);
                    }

                    zos.closeEntry();
                    fis.close();
                }
            }
        }
    }
}