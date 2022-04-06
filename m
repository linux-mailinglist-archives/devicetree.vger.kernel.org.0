Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 899AE4F6C6E
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 23:17:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235602AbiDFVS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 17:18:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235724AbiDFVSt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 17:18:49 -0400
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F7D218D8F
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 13:08:24 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id 12so3539521oix.12
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 13:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Ij58TvIE+TDuatjfhEwf9b3mQ663OItZ9ImpiU3kgrI=;
        b=mWgevoCi+wsYY2bJB6OWM/ar6hFEwjqv2wTqg58/ceTojefJJpKTo1mT0AtY86cm4O
         xgJD7E+TU3hlwwrQ+lXqZtBJMYZVzAlG2zw2wxCR33Mh0kIMdc2DmVNEQzdCunm/vxpn
         Pu7ObJFisUFkYAzCPNuHr80UeZ2+KaLUvhAvuDy1JFgiQTUxto3uL8GtR/O3kkFS/fyi
         vX7yO9WuOR5pbOJv42+pUGZCxBEy2NyfDRe4V38X5C5jKRbkvCkxgrhSBQoSgsfUPZ4L
         z8CrZ4HGryaM6po57XrT7hKYKq509XP3tq8jR44SWyXlqvY+959nL51ZkXYmQKMKFvep
         jxPQ==
X-Gm-Message-State: AOAM530VYwkYFsBPG0Tek2S11V8ikN5makSMv0ojitXXSqk1BKACMHYe
        CAmgVh4eawOcCZ4yTpri8w==
X-Google-Smtp-Source: ABdhPJxYnIz2g0qPXdqTbqLE0eqrv8euhVAVjzwh4ZLxVREAHMcDwMoJ3msELLzm3uy3CAyi87Z3jQ==
X-Received: by 2002:a05:6808:1b12:b0:2da:28e1:39f7 with SMTP id bx18-20020a0568081b1200b002da28e139f7mr4422301oib.289.1649275703960;
        Wed, 06 Apr 2022 13:08:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t4-20020a0568301e2400b005c9781086d9sm7003791otr.9.2022.04.06.13.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 13:08:23 -0700 (PDT)
Received: (nullmailer pid 2682165 invoked by uid 1000);
        Wed, 06 Apr 2022 20:08:22 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        patchwork-lst@pengutronix.de
In-Reply-To: <20220406160123.1272911-3-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de> <20220406160123.1272911-3-l.stach@pengutronix.de>
Subject: Re: [PATCH v0 02/10] dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
Date:   Wed, 06 Apr 2022 15:08:22 -0500
Message-Id: <1649275702.749756.2682164.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 06 Apr 2022 18:01:15 +0200, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dts:36.45-46 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dtb] Error 1
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

