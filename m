Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8D5164C237
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 03:22:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbiLNCWX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 21:22:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbiLNCWV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 21:22:21 -0500
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA89022515
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 18:22:20 -0800 (PST)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-142b72a728fso14949063fac.9
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 18:22:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YzFVMUQfbLbPOqsEN3+Nm/PiwDD2bLofgHmcEj1cBwM=;
        b=VbaKY6IbeEUIi92aWlOo1HbyBkqWuXcxpHDGddk3iMhYO0uSlu7vIq9/6qD0pqtup6
         ttVPh7d6uk0V9/OFK2fA8bPWcQOZPyAArq9IhKk/CxC/KIteBHdpdiEJR+42mBN6mpug
         vLVg+xS1AtA4yZaN38zlFXlyBnA7SV+v90kf8B1TPgRCQYM8Gc8VMJSGTKExmTfTfhmw
         zMWJHJjfTTwQpaLBO+c/pNEgiVZmR0K6KqkRgzqTVxJ/jd3gAKPbEaAjCGCsxIMznSQM
         VzpngaxrQsE30P4v6FShMg1i5pSG2TqXrc4WHJtbn50hWKoon/QG99xdxLe48WUtNIDb
         3ddA==
X-Gm-Message-State: ANoB5plOELm3Tqjo+TEIzoVt45ruIzK4Sv0eMtz6PSqZ1OL3R0RccIsb
        EB98PIHMhY/gVH3b22eKGQ==
X-Google-Smtp-Source: AA0mqf7lWDKGLdOIL4OrTp00whmrQ4V/NaocUwbkrLtMk/C17YzIsLc2/kULvmPZb1Eh0sSggQlW/A==
X-Received: by 2002:a05:6870:c101:b0:144:77eb:7c0 with SMTP id f1-20020a056870c10100b0014477eb07c0mr10977587oad.50.1670984540105;
        Tue, 13 Dec 2022 18:22:20 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k16-20020a056870819000b0014866eb34cesm2170885oae.48.2022.12.13.18.22.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 18:22:19 -0800 (PST)
Received: (nullmailer pid 3488604 invoked by uid 1000);
        Wed, 14 Dec 2022 02:22:18 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Richard Zhu <hongxing.zhu@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>, tharvey@gateworks.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        lukas@mntre.com, marcel.ziswiler@toradex.com,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org, marex@denx.de,
        devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
        richard.leitner@linux.dev, alexander.stein@ew.tq-group.com
In-Reply-To: <20221213160112.1900410-1-l.stach@pengutronix.de>
References: <20221213160112.1900410-1-l.stach@pengutronix.de>
Message-Id: <167098435181.3446509.1555517716393957521.robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock cells
Date:   Tue, 13 Dec 2022 20:22:18 -0600
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


On Tue, 13 Dec 2022 17:01:09 +0100, Lucas Stach wrote:
> The HSIO blk-ctrl has a internal PLL, which can be used as a reference
> clock for the PCIe PHY. Add clock-cells to the binding to allow the
> driver to expose this PLL.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.example.dtb: blk-ctrl@32f10000: #clock-cells:0:0: 1 was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221213160112.1900410-1-l.stach@pengutronix.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

