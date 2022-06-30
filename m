Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B130562712
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 01:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232861AbiF3X2l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 19:28:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232866AbiF3X23 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 19:28:29 -0400
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D9C311172
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 16:28:25 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id r133so735527iod.3
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 16:28:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=057RAUxl3V5QlnP6/QK/BN3/8aKdJlP8RMHDwhPvL+E=;
        b=Rs7+ZcSNt0e+AMAKKy8kPgjT9ojwmxQYUq/Q+On5TxGmPHdntB4jfEDoyorAdJcInQ
         z5BH4LaFTcIs6vAx3k8yBiYFGRr26V8eUtOVLbVibflo1++/DIka/aotYisIWT1ghre3
         /Qs5ZTcmVovw2isBI/tktvzfr30W/bH7ZObt9KmEYGs+dQjsrpNjJJ5bFHGZbC7GIYnV
         21WkHiC/QZVwzr5RIAcbyeThpgSe7fkOsgsheltPWVazcho8w5OWYkMNZ8N5VPrA8F6F
         47samEosVmdirlUMIzoN5rS3joVZFAOsSH3alD1u6jKw+TCAt7F0pFMyb6zUG8qgdq+M
         Ho+g==
X-Gm-Message-State: AJIora+l5K5zc8u/HvPBQULlZvXqvzwZcfiHOIyielyjhl1w5K2/m8Au
        miwa086ZLTeQKpkEngNZ5w==
X-Google-Smtp-Source: AGRyM1tYpJs1IWazjEKaycSS8iXH4Axgs96pM7rERdAzxohnPIRzxacHoXgGUru748+CIKs3jIi3mg==
X-Received: by 2002:a02:731e:0:b0:33a:29ed:1df4 with SMTP id y30-20020a02731e000000b0033a29ed1df4mr7197056jab.209.1656631704347;
        Thu, 30 Jun 2022 16:28:24 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id a14-20020a056638018e00b00335d7c314b1sm9155013jaq.53.2022.06.30.16.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 16:28:24 -0700 (PDT)
Received: (nullmailer pid 3536473 invoked by uid 1000);
        Thu, 30 Jun 2022 23:28:22 -0000
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Paul Elder <paul.elder@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630173922.92296-1-marex@denx.de>
References: <20220630173922.92296-1-marex@denx.de>
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT example
Date:   Thu, 30 Jun 2022 17:28:22 -0600
Message-Id: <1656631702.619117.3536472.nullmailer@robh.at.kernel.org>
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

On Thu, 30 Jun 2022 19:39:22 +0200, Marek Vasut wrote:
> Document the LDB bridge subnode and add the subnode into the example.
> For the subnode to work, the block control must be compatible with
> simple-mfd in addition to the existing compatibles.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 54 ++++++++++++++++++-
>  1 file changed, 53 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: bridge@5c: 'reg', 'reg-names' do not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: bridge@5c: Unevaluated properties are not allowed ('reg', 'reg-names' were unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: bridge@5c: 'reg', 'reg-names' do not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

