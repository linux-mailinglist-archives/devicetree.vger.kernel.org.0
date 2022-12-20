Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F37E165263E
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 19:29:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234095AbiLTS3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 13:29:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234104AbiLTS3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 13:29:16 -0500
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B96731DF18
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 10:28:59 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id e205so11274824oif.11
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 10:28:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F7voxDVbjuMHrLKhmlZZ+4WN07ar4kceaQpkDC9Gcu4=;
        b=z2LowSZQPI9sFVgqDqG1vW3Yg0CzbGCylKVptUrKFsjgehoCmBho98b4FkD04mZKM5
         Ky35zaPkXeOBJhZDWKmF2CA5cTHW/eokw/kBgCfWW79hssf6XcdCAkrUOQqDY5MY6WHj
         zdWec7MhU0VtKmpZt59Sx91otq4JWpD/0FMNQ01EQAjiPbhw2wztbzmQQqt17vGuwRc9
         3Z2jnACF9Kg/LClItH9O1ynu1ydd492TtTR0nWMUTpU5cGAUVMRBw+YOpmYVNZvsrLJr
         KQRkMfwolhjn+4Uzji2TqorrO6EbAJBua9zGA+CeLhGMPT9bh+FQCkOG6IzAVxClLh33
         hxQA==
X-Gm-Message-State: AFqh2krVvaQZ0K5suuQE7YMDVuSmcJyKmkCJCto0dJ5w+myBgWjuWkJk
        x36pX1BY0ygwb7lYXxPNxnCPdXWzTQ==
X-Google-Smtp-Source: AMrXdXurRizsNMCeU3eYh0lw92coSnjiA72SRQvm5c1tmS+9m3g+eOHLlvUu0nAUKtdUEhcVzfKtCg==
X-Received: by 2002:a05:6808:1525:b0:35c:3e8e:de6e with SMTP id u37-20020a056808152500b0035c3e8ede6emr8469336oiw.22.1671560938976;
        Tue, 20 Dec 2022 10:28:58 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u19-20020a0568301f5300b0066da36d2c45sm5973624oth.22.2022.12.20.10.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 10:28:58 -0800 (PST)
Received: (nullmailer pid 870653 invoked by uid 1000);
        Tue, 20 Dec 2022 18:28:57 -0000
Date:   Tue, 20 Dec 2022 12:28:57 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Liu Ying <victor.liu@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>, patchwork-lst@pengutronix.de,
        Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Message-ID: <20221220182857.GA860843-robh@kernel.org>
References: <20221216210742.3233382-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216210742.3233382-1-l.stach@pengutronix.de>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 10:07:39PM +0100, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> new file mode 100644
> index 000000000000..75ebeaa8c9d5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> @@ -0,0 +1,69 @@
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

Don't need '|'.

> +  The i.MX8MP HDMI transmitter is a Synopsys DesignWare
> +  HDMI 2.0 TX controller IP.
> +
> +allOf:
> +  - $ref: ../bridge/synopsys,dw-hdmi.yaml#

/schemas/display/bridge/...

> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi
> +
> +  reg-io-width:
> +    const: 1
> +
> +  clocks:
> +    maxItems: 5
> +
> +  clock-names:
> +    items:
> +      - const: iahb
> +      - const: isfr
> +      - const: fdcc
> +      - const: cec
> +      - const: pix
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
> +unevaluatedProperties: false
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
> +                 <&clk IMX8MP_CLK_HDMI_FDCC_TST>,
> +                 <&clk IMX8MP_CLK_32K>,
> +                 <&hdmi_tx_phy>;
> +        clock-names = "iahb", "isfr", "fdcc", "cec", "pix";
> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +        reg-io-width = <1>;


ports? This block isn't connected to anything? Like an 'hdmi-connector'?

Rob
