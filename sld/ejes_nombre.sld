<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>ejes_nombre_36d76a26</sld:Name>
    <sld:UserStyle>
      <sld:Name>ejes_nombre_36d76a26</sld:Name>
      <sld:Title>Nombre Calles</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>name</sld:Name>
        <sld:Rule>
          <sld:Title>Eje genérico</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#323232</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>nombre</ogc:PropertyName>
            </sld:Label>
            <sld:LabelPlacement>
              <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Halo>
              <sld:Radius>
                <ogc:Literal>1</ogc:Literal>
              </sld:Radius>
              <sld:Fill>
                <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
              </sld:Fill>
            </sld:Halo>
              <VendorOption name="followLine">true</VendorOption>
              <VendorOption name="maxAngleDelta">90</VendorOption>
              <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Red viaria</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>161101</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#DDDDDD</sld:CssParameter>
              <sld:CssParameter name="stroke-width">9</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Camino, vía pecuaria</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>060404</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#B37F5A</sld:CssParameter>
              <sld:CssParameter name="stroke-width">9</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Carretera</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>060204</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#F00000</sld:CssParameter>
              <sld:CssParameter name="stroke-width">9</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>