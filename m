Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32564709737
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 14:24:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230135AbjESMY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 08:24:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjESMY2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 08:24:28 -0400
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF25B101
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:24:23 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6ab0967093dso2406759a34.3
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:24:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684499063; x=1687091063;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yWLf9fbZCEb4+gO2LCkD8MDT6RWvRwehSakRzFbOkFw=;
        b=EEbR1dKV1H/eHeTl4aoywGNgyq3kwwaRUl7MCjYk6T/rLbF1p+OtdEoz2DQRnJ4yde
         pjq7+wgNiXYheA/0ZG0DjnVF2jhMwekRyBOnj+2llVOmcgRNPHw9fjoQTjwZNjd7txV6
         K/DEBk1S//GVyc8VuU2bfbd7hM4/x0bT0uWJ8Rr4ZpNCZrYoarV66evfYU8679AeY/I8
         fWTUTGz9pw6jaMTPRVAf7NAiu+KrdWlEExfbA4QDUzKdmu9BnSXnLzmLs1qNukrXwqyC
         4KZSRXmJXq3IDK8YfsVVxNRSYHO2IhUpBWsr1GlmLU/s+6/24GBPNVFUwHFWFV0BnQ4T
         VEKA==
X-Gm-Message-State: AC+VfDxpmdNxgo39bafawM/zuvaH8YGPa0MH4+PrtPagijTh0vHSjkSS
        dzmzITjnlrOF3w9jhGZ0IFHhtpPgaw==
X-Google-Smtp-Source: ACHHUZ5XD+i8A6LH6y9e53+SkVmMpnOZxE+VQIV808GTora0wE3YW0pbfCoJHU9thVsGFpk1McUjkg==
X-Received: by 2002:a05:6830:18e2:b0:6a5:f4e5:e671 with SMTP id d2-20020a05683018e200b006a5f4e5e671mr824658otf.34.1684499063057;
        Fri, 19 May 2023 05:24:23 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y4-20020a056830208400b006a3bd777dfdsm1589369otq.12.2023.05.19.05.24.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 05:24:22 -0700 (PDT)
Received: (nullmailer pid 3329282 invoked by uid 1000);
        Fri, 19 May 2023 12:24:21 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     marex@denx.de, conor+dt@kernel.org, shawnguo@kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org
In-Reply-To: <20230519112914.309669-2-festevam@gmail.com>
References: <20230519112914.309669-1-festevam@gmail.com>
 <20230519112914.309669-2-festevam@gmail.com>
Message-Id: <168449906136.3329263.6823963438830367849.robh@kernel.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Date:   Fri, 19 May 2023 07:24:21 -0500
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


On Fri, 19 May 2023 08:29:12 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The i.MX6SX General Purpose Registers is a set of register that serves
> various different purposes and in particular, IOMUXC_GPR_GPR6, at
> offset 0x18, can be used to configure the LDB block.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v2:
> - Newly introduced.
> 
>  .../bindings/soc/imx/fsl,imx6sx-gpr.yaml      | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: /example-0/iomuxc-gpr@20e4000: failed to match any schema with compatible: ['fsl,imx6sx-iomuxc-gpr', 'fsl,imx6q-iomuxc-gpr', 'syscon']
Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: /example-0/iomuxc-gpr@20e4000: failed to match any schema with compatible: ['fsl,imx6sx-iomuxc-gpr', 'fsl,imx6q-iomuxc-gpr', 'syscon']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230519112914.309669-2-festevam@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

