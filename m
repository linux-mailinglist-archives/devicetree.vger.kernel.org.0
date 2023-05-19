Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86757709825
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 15:24:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230189AbjESNYf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 09:24:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbjESNYe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 09:24:34 -0400
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EF0BCE
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 06:24:33 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-19a08412722so2003731fac.3
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 06:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684502673; x=1687094673;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ddHXsfb4Hwby1ngDjPaQzK53iKMGtqMXXv3+a6M5AEc=;
        b=i4B8dKcjj2QqiBsP17Kv8CniaHqXK+CiqU0JTGtBbBAhcujqp+kbWQpzHzQ8IWpP9t
         SHqinV3R/U1H3Qk8IeC21WFBDR2DId3VtN4+wzgAFLD+/jbGH7JchQ3S1AELntpeJxl0
         GU060VbTagu0veHjFfE8+jTz6FBg6FZVxIkTDcnreY7DUYkwpKM7qnQJyIuqheuRb28L
         3lG1rX4LAVED78Ph4rwwj04vqUk38JYSBHAnVkreDPvI3KSgYyHohTWv10TV8fzLs7+1
         u67NmyONcb/WIoWRjQVwbPT/xPATjBNiAaq/b5rGIm6uKnOvQcohgZdsarmfA5sbtn99
         9Omw==
X-Gm-Message-State: AC+VfDzq62oi0XbGkQPruFvyUrXKVRt0C59JuVEjYaYdNWtSWYEQvqif
        NmEAh1HpFY84Q2xU6uiF1n9xfhEWdw==
X-Google-Smtp-Source: ACHHUZ605d3f/TwUgXOlDyej/JMhK0v2T7GcPe223r3UiwIST5B6tCpAB41B7kUKIhjLlmK4Js2WLg==
X-Received: by 2002:a05:6870:9185:b0:192:82bc:f84a with SMTP id b5-20020a056870918500b0019282bcf84amr1124130oaf.27.1684502672767;
        Fri, 19 May 2023 06:24:32 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m6-20020a056870194600b001931cb17a86sm1913248oak.27.2023.05.19.06.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 06:24:32 -0700 (PDT)
Received: (nullmailer pid 3446933 invoked by uid 1000);
        Fri, 19 May 2023 13:24:31 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, marex@denx.de,
        devicetree@vger.kernel.org, shawnguo@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
In-Reply-To: <20230519125236.352050-2-festevam@gmail.com>
References: <20230519125236.352050-1-festevam@gmail.com>
 <20230519125236.352050-2-festevam@gmail.com>
Message-Id: <168450267115.3446911.4219667976082310726.robh@kernel.org>
Subject: Re: [PATCH v4 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Date:   Fri, 19 May 2023 08:24:31 -0500
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 19 May 2023 09:52:34 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The i.MX6SX General Purpose Registers is a set of register that serves
> various different purposes and in particular, IOMUXC_GPR_GPR6, at
> offset 0x18, can be used to configure the LDB block.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v3:
> - Fixed error reported by Rob's bot.
> 
>  .../bindings/soc/imx/fsl,imx6sx-gpr.yaml      | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: iomuxc-gpr@20e4000: bridge@18:compatible:0: 'fsl,imx6sx-ldb' is not one of ['fsl,imx8mp-ldb', 'fsl,imx93-ldb']
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230519125236.352050-2-festevam@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

