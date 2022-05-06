Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 910D451E28D
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 01:41:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348461AbiEFWnl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 18:43:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355771AbiEFWnk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 18:43:40 -0400
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2044F5AA48
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 15:39:56 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-d39f741ba0so8673993fac.13
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 15:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=EARAirmRDARZJDnc2wIGPiTE3SCh1Sk7ihIbfULQouQ=;
        b=CVH9seEFvroFRFC/9Q3eJEonJLYTxJCvC0MlGqEWCNeZmQ+g4qJNI6oSox9iAlBjsY
         aioMRE3hupwkRc6evS/Ra+tTVvYpwy07RlDdytOWwJJ2Ih1FJ/kJ3InKewQM6XY78qsL
         34DkhD5H77wCalTK5BgVAyCRhkDKcHM1FANiqhXtZjORhUbjfqUVjQL/sNm3hCr7jQsw
         ouEY1GVvqyUU/t9y97auXf0cpWVOMa41m2vNuqhRU7//TC6+94o8VeCZFhJS7cFHvRy7
         GBu0Cd8S8XNmCR5lz0Hb/P9c/H7lFmUUKvZSyZ0AA9FdyXz30cfqEvWWj2c8xgaZstAy
         9/Uw==
X-Gm-Message-State: AOAM530XS/uJEYdcgkT6DhnZ1cJSff9tJWihMAEkMjiZZv1ltgzeJGrf
        /hgBU/bB9jgW9OrXzpyAtQ==
X-Google-Smtp-Source: ABdhPJyCG67cLedleTEytlah9EbrGMeFPIlbBbUWhHQVbzJSRnDcIllrDprW/uYuVOEWDyz152z+xg==
X-Received: by 2002:a05:6870:c59a:b0:e9:3d37:1bbd with SMTP id ba26-20020a056870c59a00b000e93d371bbdmr5428453oab.91.1651876795325;
        Fri, 06 May 2022 15:39:55 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e6-20020aca1306000000b00325cda1ffb5sm2059016oii.52.2022.05.06.15.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 15:39:54 -0700 (PDT)
Received: (nullmailer pid 2407412 invoked by uid 1000);
        Fri, 06 May 2022 22:39:53 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Marek Vasut <marex@denx.de>, Robert Foss <robert.foss@linaro.org>,
        devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Sandor Yu <Sandor.yu@nxp.com>, patchwork-lst@pengutronix.de
In-Reply-To: <20220506181034.2001548-2-l.stach@pengutronix.de>
References: <20220506181034.2001548-1-l.stach@pengutronix.de> <20220506181034.2001548-2-l.stach@pengutronix.de>
Subject: Re: [PATCH v0.5 1/9] dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
Date:   Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.638106.2407411.nullmailer@robh.at.kernel.org>
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

On Fri, 06 May 2022 20:10:26 +0200, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
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

