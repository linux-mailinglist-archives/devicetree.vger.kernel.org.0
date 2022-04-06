Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 506BF4F6C70
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 23:17:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234652AbiDFVTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 17:19:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234873AbiDFVSu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 17:18:50 -0400
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 777A626C549
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 13:08:26 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id i23-20020a9d6117000000b005cb58c354e6so2447804otj.10
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 13:08:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Jba1vSeRP1HF/2xdMVwK3zKEPMIqomVyRzHfIeKZsuY=;
        b=p4T+yYTYWmhyrqiDAnJRf5mV0+4F8mo0SpII6vYqkLoiWlYDO1FtSzW6ZVuBwlV2sO
         kjN8YG5ej1JKRQ5XC1NamU22T/m5fmSYQr3Atit/1ggQh7nvvnEwCWz30gUm6H7WPAWI
         3aZCnGsUnyrAoNUWVlCC0Tvm+dJ9VdmtqED9jQk/PCpdQX4SqUtOn/vJJ6b2Sno/AaYt
         oZVp/DjbkBoUq3f9OIukw8yXdwkW4XeNp9PARsaru1T0fU45PbonwTna4uXZqwIv7oWd
         K1IUy7pq2dsiApYOHCS9l6d9oINOOIGDl0tBNQk+uW2QIIy5/5SC9+eI8djExsRTDyp6
         sRXA==
X-Gm-Message-State: AOAM533qlKp/lIajXXC6upCEPJ/CCcV5d5HiyUjHW5Gnh/crP5qUUFBI
        hhRSUkUDl15GNOIN+v7eZg==
X-Google-Smtp-Source: ABdhPJymdB2qRyAE4P6pRY0v0g5bx14Pp9fxc/u5M6zMOtOt95SXs96EoRWJvD2Hj1G1XlilxiDxKg==
X-Received: by 2002:a05:6830:1498:b0:5cd:a787:e8c1 with SMTP id s24-20020a056830149800b005cda787e8c1mr3759352otq.11.1649275705675;
        Wed, 06 Apr 2022 13:08:25 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s22-20020a056830149600b005b24a96174asm7200413otq.8.2022.04.06.13.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 13:08:24 -0700 (PDT)
Received: (nullmailer pid 2682168 invoked by uid 1000);
        Wed, 06 Apr 2022 20:08:22 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Robert Foss <robert.foss@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org
In-Reply-To: <20220406160123.1272911-5-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de> <20220406160123.1272911-5-l.stach@pengutronix.de>
Subject: Re: [PATCH v0 04/10] dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
Date:   Wed, 06 Apr 2022 15:08:22 -0500
Message-Id: <1649275702.760311.2682167.nullmailer@robh.at.kernel.org>
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

On Wed, 06 Apr 2022 18:01:17 +0200, Lucas Stach wrote:
> Add binding for the i.MX8MP HDMI parallel video interface block.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.example.dts:26.45-46 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.example.dtb] Error 1
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

