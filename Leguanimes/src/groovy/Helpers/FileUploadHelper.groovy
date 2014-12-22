package Helpers

import org.springframework.web.multipart.MultipartFile
import org.codehaus.groovy.grails.web.context.ServletContextHolder

import grails.util.Environment;
import grails.util.GrailsUtil

class FileUploadHelper {

	def String uploadFile(MultipartFile file, String name, String destinationDirectory) {

		String storagePath = ""
		if (Environment.getCurrent() == "production") {
			storagePath = "/opt/assets"
		} else {
			def servletContext = ServletContextHolder.servletContext
			storagePath = servletContext.getRealPath('assets/' + destinationDirectory)
		}
		
		def extension = name.tokenize('.').last()
		name = name.bytes.encodeBase64().toString() + "." + extension

		// Create storage path directory if it does not exist
		def storagePathDirectory = new File(storagePath)
		if (!storagePathDirectory.exists()) {
			print "CREATING DIRECTORY ${storagePath}: "
			if (storagePathDirectory.mkdirs()) {
				println "SUCCESS"
			} else {
				println "FAILED"
			}
		}

		// Store file
		if (!file.isEmpty()) {
			file.transferTo(new File("${storagePath}/${name}"))
			println "Saved file: ${storagePath}/${name}"
			return "${name}"

		} else {
			println "File ${file.inspect()} was empty!"
			return null
		}
	}
}
