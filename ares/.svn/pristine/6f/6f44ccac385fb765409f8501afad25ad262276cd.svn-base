package org.ares.exception;


import java.io.Writer;

import org.apache.log4j.Logger;

import freemarker.core.Environment;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;

public class FreemarkerExceptionHandler implements TemplateExceptionHandler {
    private static final Logger log = Logger
            .getLogger(FreemarkerExceptionHandler.class);

    public void handleTemplateException(TemplateException te, Environment env,
                                        Writer out) throws TemplateException {

            log.warn("[Freemarker Error: " + te.getMessage() + "]");
            throw new ViewException("freemarker error",te);
    }
}