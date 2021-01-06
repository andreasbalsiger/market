package com.microsoft.odata;

import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

import javax.ws.rs.core.Configuration;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;

import org.apache.commons.io.IOUtils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import ch.ivyteam.ivy.rest.client.mapper.IvyJsonProvider;

/**
 * JSON to POJO mapper designed to apply JSON structure changes before processing
 * as usual.
 *
 * @since 9.2.0
 */
public class JsonModifier extends IvyJsonProvider
{
  public JsonModifier(Configuration jaxRsConfig)
  {
    super(jaxRsConfig);
  }

  private static final ObjectMapper ROOT_MAPPER = new ObjectMapper();

  @Override
  public Object readFrom(Class<Object> type, Type genericType,
          Annotation[] annotations, MediaType mediaType,
          MultivaluedMap<String, String> httpHeaders,
          InputStream entityStream) throws IOException
  {
    InputStream inputStream = unwrapValueRoot(entityStream);
    return super.readFrom(type, genericType, annotations, mediaType, httpHeaders, inputStream);
  }

  protected InputStream unwrapValueRoot(InputStream entityStream)
          throws IOException, JsonProcessingException
  {
    JsonNode node = ROOT_MAPPER.readTree(entityStream);
    node = manipulateJson(node);
    String json = ROOT_MAPPER.writeValueAsString(node);
    InputStream inputStream = IOUtils.toInputStream(json, Charset.defaultCharset());
    return inputStream;
  }

  protected JsonNode manipulateJson(JsonNode node)
  {
    return node;
  }
}
