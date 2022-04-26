Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D035D50EDD5
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 02:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232831AbiDZAxB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 20:53:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231556AbiDZAxA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 20:53:00 -0400
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0482114801
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 17:49:53 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-e2fa360f6dso17899794fac.2
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 17:49:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1fdKOZi8iNJSd576TwWH5REYRKg0ya45cIe36/rUVWc=;
        b=05AL7f2I8I+CG4piHU/npkeltFMh9VaxxYYwot5+LvX+H2umcKeJ3/GOLsfXj/H9Sr
         BEXNO07BLKf9P6KZgE7akMbadYUI7RLw8qFCkwDb5CTtKTOuAPnX2al6KPLPCU/YCoOt
         Jhp7Tlwc6Fk9JCQa0JSNClqA9pyeh00t7Ff8QLzK2DFRvaBLDR2xREnJhSw/XGY/R/CF
         9Xh80Xl/DYGQFjJSX6UekP3NAzoxeZt8n/BuIFDnw2ywaw156VW4240k3Kb2j1bqnV7Q
         gcphXvzlSj3+V9zkPqFwiXrIMCzWR8bBhonaKM5WsFIHXXjnKbQ8fqFRWeV4r3FoBk3E
         3+Jw==
X-Gm-Message-State: AOAM533NMX7BKGq2UNaed6S0FB28c6PPqtfNciMnNszdj5pcy2R1HynJ
        YZpxYqCpKs7UnNn51dtVp9nkm8HdPw==
X-Google-Smtp-Source: ABdhPJyZwC2gPyiHHF3DH1b0aGQSRbDAaw1NCgexRfV7+BT7QuhWm2DyDyquBIjIYVF/PgYajJlUYQ==
X-Received: by 2002:a05:6870:248b:b0:e5:9d7d:8795 with SMTP id s11-20020a056870248b00b000e59d7d8795mr8106656oaq.74.1650934193227;
        Mon, 25 Apr 2022 17:49:53 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id dw11-20020a056870770b00b000e686d13875sm285196oab.15.2022.04.25.17.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 17:49:52 -0700 (PDT)
Received: (nullmailer pid 648664 invoked by uid 1000);
        Tue, 26 Apr 2022 00:49:51 -0000
Date:   Mon, 25 Apr 2022 19:49:51 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Robby Cai <robby.cai@nxp.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: ldb: Implement
 simple NXP i.MX8MP LDB bridge
Message-ID: <YmdBr905SdaUmq0W@robh.at.kernel.org>
References: <20220423021625.512380-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220423021625.512380-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 23, 2022 at 04:16:24AM +0200, Marek Vasut wrote:
> The i.MX8MP contains two syscon registers which are responsible
> for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
> which represents this serializer as a bridge.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
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
> ---
> V2: - Consistently use fsl,imx8mp-ldb as compatible
>     - Drop items: from compatible:
>     - Replace minItems with maxItems in clocks:
>     - Drop quotes from clock-names const: ldb
>     - Rename syscon to fsl,syscon
>     - Use generic name of ldb-lvds in example
> V3: - Add AB from Sam
>     - Consistently use MX8MP
> ---
>  .../bindings/display/bridge/nxp,ldb.yaml      | 96 +++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> new file mode 100644
> index 000000000000..9c1807f2ae43
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> @@ -0,0 +1,96 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/nxp,ldb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8MP DPI to LVDS bridge chip
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

This binding should be a child of &media_blk_ctrl. And then do away with 
this property.

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
> 
> 
