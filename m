Return-Path: <devicetree+bounces-896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6ED7A3D81
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 22:46:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F75E2813D6
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 20:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3923D6FC1;
	Sun, 17 Sep 2023 20:46:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153E63B8
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 20:46:16 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A74DCD;
	Sun, 17 Sep 2023 13:46:12 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4D45310FE;
	Sun, 17 Sep 2023 22:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1694983475;
	bh=dWuf8lm2O1gFJckMJJDkpBI5pn5MONzHVlFrEiQFxSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XFkYaIf2sn02fhiZntletTGb9IK3Jx4gclqmcJWUVMMtxV4dB3MiKGXy/2L63aIQE
	 XxQ11IB4Jdikp2FTX4ckUjFz2SnXz4cM1ooa+8FyCHZFQGNnB35vt2hNEsLQTYBdLl
	 LrSRuiRUjevd/XnJER9ZZIHVmt6eexrIclsXlPWk=
Date: Sun, 17 Sep 2023 23:46:23 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: guoniu.zhou@oss.nxp.com
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-imx@nxp.com, mchehab@kernel.org,
	alexander.stein@ew.tq-group.com, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, conor+dt@kernel.org,
	jacopo.mondi@ideasonboard.com
Subject: Re: [PATCH v2 1/2] media: dt-bindings: Add binding doc for i.MX93
 MIPI CSI-2
Message-ID: <20230917204623.GA16448@pendragon.ideasonboard.com>
References: <20230710060352.584286-1-guoniu.zhou@oss.nxp.com>
 <20230710060352.584286-2-guoniu.zhou@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230710060352.584286-2-guoniu.zhou@oss.nxp.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Guoniu,

Thank you for the patch.

On Mon, Jul 10, 2023 at 02:03:51PM +0800, guoniu.zhou@oss.nxp.com wrote:
> From: "Guoniu.zhou" <guoniu.zhou@nxp.com>
> 
> Add new binding documentation for DesignWare Core MIPI CSI-2 receiver
> and DPHY found on NXP i.MX93.
> 
> Signed-off-by: Guoniu.zhou <guoniu.zhou@nxp.com>
> ---
>  .../bindings/media/nxp,dwc-mipi-csi2.yaml     | 130 ++++++++++++++++++
>  1 file changed, 130 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,dwc-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/nxp,dwc-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..aa5d79ada9b9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/nxp,dwc-mipi-csi2.yaml
> @@ -0,0 +1,130 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/nxp,dwc-mipi-csi2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX93 MIPI CSI-2 Host Controller receiver
> +
> +maintainers:
> +  - G.N. Zhou <guoniu.zhou@nxp.com>
> +
> +description: |-
> +  The MIPI CSI-2 receiver found on i.MX93 originates from Synopsys
> +  DesignWare Core and it implements the CSI-2 protocol on the host
> +  side and a DPHY configured as a Slave acts as the physical layer.
> +  Two data lanes are supported on i.MX93 family devices and the data
> +  rate of each lane support up to 1.5Gbps.
> +
> +  While the CSI-2 receiver is separate from the MIPI D-PHY IP core,
> +  the PHY is completely wrapped by the CSI-2 controller and expose
> +  a control interface which only can communicate with CSI-2 controller
> +  This binding thus covers both IP cores.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx93-mipi-csi2

Given that this is a Synopsys IP, would it make sense to have a generic
compatible string ? Something along the lines of

  compatible:
    items:
      - enum:
          - fsl,imx93-mipi-csi2
      - const: snps,dw-mipi-csi2

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: The peripheral clock (a.k.a. APB clock)
> +      - description: The pixel clock
> +      - description: The MIPI D-PHY clock

I'm surprised that the D-PHY needs an input clock other than the one
provided by the CSI-2 clock lane. The nxp,imx-mipi-csi2.yaml binding
also requires a MIPI D-PHY clock, and I've been told some time ago that
this was actually a mistake, and that the clock was needed for the DSI
D-PHY only, not the CSI-2 D-PHY. Could you double-check this ?

> +
> +  clock-names:
> +    items:
> +      - const: per
> +      - const: pixel
> +      - const: phy_cfg
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port node, single endpoint describing the CSI-2 transmitter.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                minItems: 1
> +                items:
> +                  - const: 1
> +                  - const: 2
> +
> +            required:
> +              - data-lanes
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output port node
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx93-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/fsl,imx93-power.h>
> +
> +    mipi-csi@4ae00000 {
> +        compatible = "fsl,imx93-mipi-csi2";
> +        reg = <0x4ae00000 0x10000>;
> +        interrupts = <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clks IMX93_CLK_MIPI_CSI_GATE>,
> +                 <&clks IMX93_CLK_CAM_PIX>,
> +                 <&clks IMX93_CLK_MIPI_PHY_CFG>;
> +        clock-names = "per", "pixel", "phy_cfg";
> +        power-domains = <&media_blk_ctrl IMX93_MEDIABLK_PD_MIPI_CSI>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                mipi_from_sensor: endpoint {
> +                    remote-endpoint = <&ap1302_to_mipi>;
> +                    data-lanes = <1 2>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                mipi_to_isi: endpoint {
> +                    remote-endpoint = <&isi_in>;
> +                };
> +            };
> +        };
> +    };
> +...

-- 
Regards,

Laurent Pinchart

