Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35A725223B7
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 20:16:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241813AbiEJSUK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 14:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348822AbiEJSTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 14:19:37 -0400
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D2252AACCC
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 11:14:26 -0700 (PDT)
Received: by mail-oo1-f42.google.com with SMTP id bm18-20020a056820189200b0035f7e56a3dfso1488529oob.8
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 11:14:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bqzP6kLC9TvD/eZVDvG+k9Cz3CtHjrwdnS/BDXCrozk=;
        b=nQGH3A988cNyZntQ7h9PPyd/XK/3nw32yqIwgr3gciWIwkb4BasRPZsdIndcqyxBCg
         IaAIddQsUn2qAr9W1LB6MMbcToOEaQHd4WjyOvlpP+6ulOsa5/Zi7+To9tU4zrBybjaa
         96uz6RuWY92kW01DGqdPTM2sF34VvNl1VQGbJSYs2UEoH+T1Xny1IMQ5DvHg8DHHpMqw
         PuLHmLlTpJ85b+l4UBx2ocSKEii5hn2cnSEhXaP47qDDZp8ealLhCI0RG3kwqZrsLv2G
         8sAJmsS/wpK4Su5DSJ6D6F6GhPf5ujoUUqVnU0nuHZlVsvHTCpamNvDTCnrJ8XXz5ZkH
         +L3w==
X-Gm-Message-State: AOAM530x+eOy2WXBIPwEXPetM6VcbDvItG84m+pX/ZaQLTG64Jr3wBrX
        v0KfbftgdlszHAp+yUsgJA==
X-Google-Smtp-Source: ABdhPJyfV9W5KcMMLkxExjfN4a6CpVE64vC6bZ6q+D3QKn6QIc1wk0xfg8j8ZGyynxcm2C2pKY+9IA==
X-Received: by 2002:a05:6830:3108:b0:606:581b:b7bb with SMTP id b8-20020a056830310800b00606581bb7bbmr8250687ots.270.1652206457584;
        Tue, 10 May 2022 11:14:17 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h23-20020a4adcd7000000b0035eb4e5a6b6sm27454oou.12.2022.05.10.11.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 11:14:17 -0700 (PDT)
Received: (nullmailer pid 2319536 invoked by uid 1000);
        Tue, 10 May 2022 18:14:16 -0000
Date:   Tue, 10 May 2022 13:14:16 -0500
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
Subject: Re: [PATCH v0.5 5/9] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Message-ID: <YnqreMpQI317fq19@robh.at.kernel.org>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
 <20220506181034.2001548-6-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220506181034.2001548-6-l.stach@pengutronix.de>
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

On Fri, May 06, 2022 at 08:10:30PM +0200, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> new file mode 100644
> index 000000000000..bc21c073e92a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP HDMI PHY binding
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: apb
> +      - const: ref
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - clocks
> +  - clock-names
> +  - power-domains

#phy-cells should be required.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +
> +    phy@32fdff00 {
> +        compatible = "fsl,imx8mp-hdmi-phy";
> +        reg = <0x32fdff00 0x100>;
> +        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +                 <&clk IMX8MP_CLK_HDMI_24M>;
> +        clock-names = "apb", "ref";
> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
> +        #clock-cells = <0>;
> +        #phy-cells = <0>;
> +    };
> -- 
> 2.30.2
> 
> 
