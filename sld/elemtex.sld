<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>elemtex_606dd0d2</sld:Name>
    <sld:UserStyle>
      <sld:Name>elemtex_606dd0d2</sld:Name>
      <sld:Title>Elementos textuales</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>name</sld:Name>
        <sld:Rule>
          <sld:Title>Número de policía parcela</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>189401</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MaxScaleDenominator>2500.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-opacity">0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>rotulo</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">11</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">bold</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#000000</sld:CssParameter>
            </sld:Fill>
          <sld:VendorOption name="followLine">false</sld:VendorOption>
            <VendorOption name="maxAngleDelta">90</VendorOption>
         <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Vías públicas</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>189301</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MaxScaleDenominator>5000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-opacity">0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>rotulo</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">11</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">bold</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#000000</sld:CssParameter>
            </sld:Fill>
            <sld:VendorOption name="followLine">false</sld:VendorOption>
            
            <VendorOption name="maxAngleDelta">90</VendorOption>
         <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Información Rústica / diseminado</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>189300</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MaxScaleDenominator>10000.0</sld:MaxScaleDenominator>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-opacity">0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>rotulo</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">11</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">bold</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
               <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Halo>
              <sld:Radius>
                <ogc:Literal>1.0</ogc:Literal>
              </sld:Radius>
              <sld:Fill>
                <sld:CssParameter name="fill">#F3E4A7</sld:CssParameter>
              </sld:Fill>
            </sld:Halo>
            <sld:Fill>
              <sld:CssParameter name="fill">#663300</sld:CssParameter>
            </sld:Fill>
            <sld:VendorOption name="followLine">false</sld:VendorOption>
            
            <VendorOption name="maxAngleDelta">90</VendorOption>
         <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Camino</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>189803</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-opacity">0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>rotulo</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">14</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">normal</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#663300</sld:CssParameter>
            </sld:Fill>
            <sld:VendorOption name="followLine">false</sld:VendorOption>
            
            <VendorOption name="maxAngleDelta">90</VendorOption>
         <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Carretera</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>189802</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-opacity">0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>rotulo</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">14</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">normal</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#F44936</sld:CssParameter>
            </sld:Fill>
            <sld:VendorOption name="followLine">false</sld:VendorOption>
            
            <VendorOption name="maxAngleDelta">90</VendorOption>
         <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Río / hidrografía</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:Or>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>ttggss</ogc:PropertyName>
                <ogc:Literal>189602</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>ttggss</ogc:PropertyName>
                <ogc:Literal>189600</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-opacity">0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>rotulo</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">14</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">normal</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#4A45F7</sld:CssParameter>
            </sld:Fill>
            <sld:VendorOption name="followLine">false</sld:VendorOption>
            <VendorOption name="maxAngleDelta">90</VendorOption>            

         <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Paraje</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>189203</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-opacity">0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>rotulo</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">14</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">normal</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#009933</sld:CssParameter>
            </sld:Fill>
            <sld:VendorOption name="followLine">false</sld:VendorOption>
            
            <VendorOption name="maxAngleDelta">90</VendorOption>
         <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Title>Urbanización</sld:Title>
          <sld:Abstract>A 1 pixel wide black line</sld:Abstract>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>ttggss</ogc:PropertyName>
              <ogc:Literal>189203</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke-opacity">0</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>rotulo</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">12</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">bold</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:LinePlacement />
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#171818</sld:CssParameter>
            </sld:Fill>
            <sld:VendorOption name="followLine">false</sld:VendorOption>
            
            <VendorOption name="maxAngleDelta">90</VendorOption>
         <VendorOption name="maxDisplacement">400</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>