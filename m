Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33B5A618B58
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 23:24:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229993AbiKCWYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 18:24:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229985AbiKCWYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 18:24:11 -0400
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 952EE1400A
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 15:24:10 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-13be3ef361dso3778799fac.12
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 15:24:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AOI36shM2qFISu/+jzA+JcOl1pqRzE1Kzqrcj41MDwY=;
        b=sMecT5JK1PnWHvPNXHrB/rU5+b9yV9rfgHfRSFTGwlj8WWRAWMyNTKNLi2nw0+nm2V
         ofDSPA6naVQqMuFnyxk+yOxEOAAoWHnF8ojB3ypC7hjmi/71Rea51L6OcsjHDSU1K2X8
         uU6G5YEY29NSqQMmQv0C3Q4QHW7odwiajG8/l8RX/KiByKNC1a67Z4DOIhnZTAhR0cOI
         QyO8Lirux0qfOQRVG+KxGQgXWYmeXGK51qUTbqTpSI7YeaDWPxgfcm7SmrJRbR3oJuqx
         pT5Y7rNNY01Abfpnlqg02gN1W8nlAGmMVVO9ba8Or33RpWY9zU08/Fs6k4L3faFvmOd5
         Xcaw==
X-Gm-Message-State: ACrzQf0lhmxOPgtBC60y2U/bAYnUBa+w3X3v3OYLyPtwWGUqYXlpxXCt
        US5HjVWtC9gQ0aru4X83tw==
X-Google-Smtp-Source: AMsMyM66EA91nNfrRDIcdTNA2Nh0/OFN70NnT5GE9OiATuFxTVxk0FfQ6krQyiINAjezkSYrXtXX+A==
X-Received: by 2002:a05:6870:41ca:b0:12b:9637:1cda with SMTP id z10-20020a05687041ca00b0012b96371cdamr19055660oac.114.1667514249741;
        Thu, 03 Nov 2022 15:24:09 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 4-20020aca0504000000b00353fe4fb4casm861322oif.48.2022.11.03.15.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 15:24:09 -0700 (PDT)
Received: (nullmailer pid 159590 invoked by uid 1000);
        Thu, 03 Nov 2022 22:24:10 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
        Xiubo Li <Xiubo.Lee@gmail.com>, Takashi Iwai <tiwai@suse.com>,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>
In-Reply-To: <20221103182016.95808-1-marex@denx.de>
References: <20221103182016.95808-1-marex@denx.de>
Message-Id: <166751410849.156062.3606952852541846345.robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: fsl-sai: Convert to YAML DT schema
Date:   Thu, 03 Nov 2022 17:24:10 -0500
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu, 03 Nov 2022 19:20:16 +0100, Marek Vasut wrote:
> Convert the SAI bindings to YAML DT schema to permit validation.
> Add Shengjiu as maintainer, derived from sound/soc/fsl/fsl_sai.c
> get_maintainer result.
> 
> Describe existing used combinations of compatible strings, add the
> missing imx7d-sai compatible string which is used on i.MX7 .
> 
> Properties lsb-first, fsl,sai-synchronous-rx, fsl,sai-asynchronous,
> fsl,dataline are no longer listed as required, since those are clearly
> optional, even the description says so, so does their usage.
> 
> Fix the undefined edma channel macro per arch/arm/boot/dts/vfxxx.dtsi ,
> use the value itself just like in the vfxxx.dtsi .
> 
> Document interrupts property, which was previously undocumented, but
> it is required property of this IP.
> 
> Document #sound-sai-cells, which should be zero for this IP.
> 
> Document fsl,imx6ul-iomuxc-gpr and its dependency on MX6UL and
> fsl,sai-mclk-direction-output .
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Jaroslav Kysela <perex@perex.cz>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Nicolin Chen <nicoleotsuka@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shengjiu Wang <shengjiu.wang@gmail.com>
> Cc: Takashi Iwai <tiwai@suse.com>
> Cc: Xiubo Li <Xiubo.Lee@gmail.com>
> Cc: alsa-devel@alsa-project.org
> To: devicetree@vger.kernel.org
> ---
>  .../devicetree/bindings/sound/fsl-sai.yaml    | 188 ++++++++++++++++++
>  1 file changed, 188 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/fsl-sai.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: fsl,dataline:0: [1, 255, 255, 2, 255, 17] is too long
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: clock-names:1: 'mclk1' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl-sai.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: clock-names:2: 'mclk2' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl-sai.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: clock-names:3: 'mclk3' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl-sai.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: clock-names:4: 'pll8k' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl-sai.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: dma-names:0: 'tx' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl-sai.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: dma-names:1: 'rx' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl-sai.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: fsl,dataline: size is 32, expected 8
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl-sai.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl,sai.example.dtb: sai@30010000: Unevaluated properties are not allowed ('clock-names', 'dma-names', 'fsl,dataline' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/fsl-sai.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

