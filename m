Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0293552239F
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 20:13:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348574AbiEJSRI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 14:17:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349443AbiEJSQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 14:16:48 -0400
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1315A38BE2
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 11:12:47 -0700 (PDT)
Received: by mail-oo1-f44.google.com with SMTP id l9-20020a4abe09000000b0035eb3d4a2aeso3538004oop.0
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 11:12:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HmymxRR+ksr9VrQPHV790/Jh7jRadzKxsCWOza1c70w=;
        b=DSSRy4V2ywyKqbocwvjKOm4Sfi0l/SNzjmnMKPawQIVnnlP6f6dyr7b9YwcHF9PHnU
         VEmjFLlmoIaC3SeurSvGZQ9YPEme64hoLazJLfIra8o8Wp84jjURxGXoPJ9M9inzs/kR
         L5+6BCEgB4K7RYbhT6vfn/vxtCMLvjiWowoVfxnPrsthdaDOue34lFdLejE8z7Ay5rbT
         0a3jKp+RiJ6jRPf7xkwvhrZ7Z+trXjIoq//GAK/tEGHMspS6n10xrPJl4FNmkg3+r7Zu
         4tMNdEM/FO3PAwEwUiK2/LmYoISfnn4AxEOedvFbdyF/fH6XOBPudZySJMGfL7mYQxQF
         PrKQ==
X-Gm-Message-State: AOAM533O9SmhGg024J/trpTnaPYv3wzxgTeFCi2iIm+zyxaHKw6Y+HNK
        esM/UnY0zoQizJCHEQaUOA==
X-Google-Smtp-Source: ABdhPJxAzmwoJIZQQ8eXmfS+c3bMoePPmVC7M/trAZdarHcHlNBnbpOTvXUdIKQcdPb4hVHPegPFiw==
X-Received: by 2002:a9d:3b5:0:b0:603:f8ac:a780 with SMTP id f50-20020a9d03b5000000b00603f8aca780mr8170434otf.26.1652206366306;
        Tue, 10 May 2022 11:12:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p1-20020a0568301d4100b0060603221270sm5895979oth.64.2022.05.10.11.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 11:12:45 -0700 (PDT)
Received: (nullmailer pid 2316486 invoked by uid 1000);
        Tue, 10 May 2022 18:12:45 -0000
Date:   Tue, 10 May 2022 13:12:44 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Marek Vasut <marex@denx.de>, patchwork-lst@pengutronix.de,
        Sandor Yu <Sandor.yu@nxp.com>, linux-phy@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v0.5 1/9] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Message-ID: <YnqrHDi6yBT/d9PK@robh.at.kernel.org>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220506181034.2001548-2-l.stach@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 06, 2022 at 08:10:26PM +0200, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> new file mode 100644
> index 000000000000..bd9a2b135176
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP DWC HDMI TX Encoder
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +description: |
> +  The HDMI transmitter is a Synopsys DesignWare HDMI 2.0 TX controller IP.
> +
> +allOf:
> +  - $ref: ../bridge/synopsys,dw-hdmi.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi
> +
> +  reg:
> +    maxItems: 1
> +
> +  reg-io-width:
> +    const: 1
> +
> +  clocks:
> +    maxItems: 5
> +
> +  clock-names:
> +    items:
> +      - {}
> +      - {}
> +      - const: cec
> +      - const: pix
> +      - const: fdcc 
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +
> +    hdmi@32fd8000 {
> +        compatible = "fsl,imx8mp-hdmi";
> +        reg = <0x32fd8000 0x7eff>;
> +        interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +                 <&clk IMX8MP_CLK_HDMI_REF_266M>,
> +                 <&clk IMX8MP_CLK_32K>,
> +                 <&hdmi_tx_phy>;
> +        clock-names = "iahb", "isfr", "cec", "pix";

The schema says there are 5 entries.

> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +        reg-io-width = <1>;
> +    };
> -- 
> 2.30.2
> 
> 
