Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 732E54F6C6F
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 23:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235661AbiDFVTB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 17:19:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235730AbiDFVSv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 17:18:51 -0400
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859EB29F136
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 13:08:28 -0700 (PDT)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-de48295467so4159072fac.2
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 13:08:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=9GOGQPLtuasIPU+hPu7wy8z60MF6fDmhm1D+vI0APLI=;
        b=xDfsmUz40k617xzMlKC/M2ekJ6fZSaZ2+OGjL3BNdyw+HdzT8kTPWJpgoTycvIhhEx
         8gekuswVs88vpw47cLgu33UCT7i0cNueRBwdaRxxiJJRbfxtD61bHJizrdoNBiKNiZ+a
         VLBZV2bPX+vWiD+SY8JoNW47Kl5RkJ0FJQY7QSQ+6ETkQv+fZYTIi79uwA9YP6bTPdcz
         472ycjLZQsiHcSMOOqT6bllGCJRzzG8uI7fiuDtmEmAGvvtula35yO3W11zW5QZEwTir
         br9OEp/RPFqaYuflX0BMBnfLkbn1J05amHxK4KKQ8Ejy7zUkwqSz3vkrH+rHTpMrVwRI
         MsRQ==
X-Gm-Message-State: AOAM530w+zszHiwR0WFqmMcEOxZZeQ78SOzvoI5u3OLZvyR0KEYhWXd5
        OMCuMAB7p1XjdCxbGXwlng==
X-Google-Smtp-Source: ABdhPJwPM2nBzH3fx/dq32NcGY5jSLBz2GG/NZTBkySkXZIlhqcuKORPud0F4Xp5Kssn3AamEfuZBA==
X-Received: by 2002:a05:6870:f20e:b0:e1:c609:74d8 with SMTP id t14-20020a056870f20e00b000e1c60974d8mr4701557oao.34.1649275707803;
        Wed, 06 Apr 2022 13:08:27 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n62-20020acaef41000000b002ef646e6690sm7028605oih.53.2022.04.06.13.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 13:08:27 -0700 (PDT)
Received: (nullmailer pid 2682170 invoked by uid 1000);
        Wed, 06 Apr 2022 20:08:22 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        patchwork-lst@pengutronix.de,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Robert Foss <robert.foss@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <20220406160123.1272911-7-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de> <20220406160123.1272911-7-l.stach@pengutronix.de>
Subject: Re: [PATCH v0 06/10] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date:   Wed, 06 Apr 2022 15:08:22 -0500
Message-Id: <1649275702.767869.2682169.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 06 Apr 2022 18:01:19 +0200, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.example.dts:29.45-46 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1401: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

