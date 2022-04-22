Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA9C750BFC3
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 20:28:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230025AbiDVS2x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 14:28:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234390AbiDVS2g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 14:28:36 -0400
Received: from mailrelay4-1.pub.mailoutpod1-cph3.one.com (mailrelay4-1.pub.mailoutpod1-cph3.one.com [46.30.210.185])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3064427B05
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 11:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=b+ZHKdcwQaS5B0cIyyHCJQ/iG8M95qaEPvoQiuH6VqE=;
        b=kMd2rYOf+uckkbUqznCR0jcdE/ejwcu1MJxl9By1bS5KJiXC97PM2VYsPYLDQe1zgdXJOTffGkRQw
         70wYu740zEgVZA1BsCAkGo6rOazg1N5UfWfW7eKokdXQ6QAT0DRLhTHXN9I9ALVOnBukgf0fD7UMTB
         wd+3bVkhNp715IXRvxN5O6fUkPqyTBYI3mjO4685Xz2786Ar/adq2h0NbBIGYIdrC7ZfhPMSNpm5o4
         NZEi45KYSdm5gchRZ+DbrOHiA4o1GXc5HriRXFr7ZpJKWmY/jVdhcjM+dCampR8jLADs3ZTigfUKkt
         L6G7QSKTQATA02r9NBsCcGI5+Sirhxw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=b+ZHKdcwQaS5B0cIyyHCJQ/iG8M95qaEPvoQiuH6VqE=;
        b=HZxagInTnlE0twK3jOYG1Sj60VJh+VhcLoREvTaf5dnNKuPSGxC24hoUIoMvE9YZeQZaXvbaYUgY/
         zIHVfFcCg==
X-HalOne-Cookie: 2a0dae1011355b26a4b5764f2b4b8a05d4995d30
X-HalOne-ID: 4d744611-c269-11ec-8225-d0431ea8bb10
Received: from mailproxy2.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
        id 4d744611-c269-11ec-8225-d0431ea8bb10;
        Fri, 22 Apr 2022 18:23:27 +0000 (UTC)
Date:   Fri, 22 Apr 2022 20:23:25 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>,
        Robert Foss <robert.foss@linaro.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: ldb: Implement
 simple NXP i.MX8M LDB bridge
Message-ID: <YmLynWrjFb+28nGW@ravnborg.org>
References: <20220418145105.76986-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220418145105.76986-1-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 18, 2022 at 04:51:04PM +0200, Marek Vasut wrote:
> The i.MX8MP contains two syscon registers which are responsible
> for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
> which represents this serializer as a bridge.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robby Cai <robby.cai@nxp.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
Acked-by: Sam Ravnborg <sam@ravnborg.org> but you need an ack from
someone else before you apply as I am not an expert here.

	Sam
> ---
> V2: - Consistently use fsl,imx8mp-ldb as compatible
>     - Drop items: from compatible:
>     - Replace minItems with maxItems in clocks:
>     - Drop quotes from clock-names const: ldb
>     - Rename syscon to fsl,syscon
>     - Use generic name of ldb-lvds in example
> ---
>  .../bindings/display/bridge/nxp,ldb.yaml      | 96 +++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> new file mode 100644
> index 0000000000000..f3182566eb316
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> @@ -0,0 +1,96 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/nxp,ldb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8M DPI to LVDS bridge chip
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +description: |
> +  The i.MX8MP contains two syscon registers which are responsible
> +  for configuring the on-SoC DPI-to-LVDS serializer. This describes
> +  those registers as bridge within the DT.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8mp-ldb
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: ldb
> +
> +  fsl,syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: A phandle to media block controller.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for DPI input.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for LVDS Channel-A output (panel or bridge).
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for LVDS Channel-B output (panel or bridge).
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - clocks
> +  - fsl,syscon
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +
> +    bridge {
> +        compatible = "fsl,imx8mp-ldb";
> +        clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
> +        clock-names = "ldb";
> +        fsl,syscon = <&media_blk_ctrl>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                ldb_from_lcdif2: endpoint {
> +                    remote-endpoint = <&lcdif2_to_ldb>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                ldb_lvds_ch0: endpoint {
> +                    remote-endpoint = <&ldb_to_lvdsx4panel>;
> +                };
> +            };
> +
> +            port@2 {
> +                reg = <2>;
> +
> +                ldb_lvds_ch1: endpoint {
> +                };
> +            };
> +        };
> +    };
> -- 
> 2.35.1
