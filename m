Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CBBA70CC7B
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 23:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233664AbjEVVc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 17:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234451AbjEVVcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 17:32:25 -0400
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67D78C6
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 14:32:20 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6af6df840ffso1554076a34.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 14:32:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684791139; x=1687383139;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7JcTyY4coWlkkQ03p6WxiiQF8JSCtgPR8V4VQJJ0ZeQ=;
        b=ZAKr6NWViubdyB1D1WnzzFaDkKI1ZFDG9sXl4aRtA/CNq6MtbnRM74eMCRLZT0bCxK
         yHcRskwHett2K8YxOZKXNQgr1B7+EM//HYkVm08FoZfRHZq6fafIqBAcdEZsrczS3kFX
         TvHQb0FB6r70krEbQLML76sZspXiROYejKBAOAnro68C2OgMIlf5+6SVjrv7FjLwoqhS
         jWbsA6VgVKIHgAdbsamZjSrwLG4vJQ3oeThFx4IxrJ1eian+q5fB5I0SSwJJTQOlK634
         yi9AQ6PMyRvajM1K9y9sC503KQOhTH++DjVqfBoiLOWHMatqIwOGIN7QwPfSidu4pZQH
         vLOg==
X-Gm-Message-State: AC+VfDyERt6BxKcbApTui61JMkJ6b5X20b906y5LsPUpt4eu8NqM+VNS
        RwgXeKwsLs7Dv4IqIFtLIg==
X-Google-Smtp-Source: ACHHUZ7nMZCKyDwuDZMA0SDZR3TrCirpvLQLK2+Sl4utBtlLkHjQSW1m5rNBHgmhqDDRK1ZOCvwLCw==
X-Received: by 2002:a9d:7cd5:0:b0:6ac:16fc:e6c9 with SMTP id r21-20020a9d7cd5000000b006ac16fce6c9mr5681453otn.11.1684791139554;
        Mon, 22 May 2023 14:32:19 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c3-20020a9d6c83000000b006af731d100fsm1820936otr.75.2023.05.22.14.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 14:32:18 -0700 (PDT)
Received: (nullmailer pid 3061874 invoked by uid 1000);
        Mon, 22 May 2023 21:32:17 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, bhelgaas@google.com, marex@denx.de,
        shawnguo@kernel.org, Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org
In-Reply-To: <20230522201404.660242-3-festevam@gmail.com>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-3-festevam@gmail.com>
Message-Id: <168479113748.3061858.13208114678317716697.robh@kernel.org>
Subject: Re: [PATCH v6 3/5] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Date:   Mon, 22 May 2023 16:32:17 -0500
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


On Mon, 22 May 2023 17:14:02 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The i.MX6SX General Purpose Registers is a set of register that serves
> various different purposes and in particular, IOMUXC_GPR_GPR6, at
> offset 0x18, can be used to configure the LDB block.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v5:
> - Dropped "fsl,imx6q-iomuxc-gpr" and "reg-names" (Marek).
> 
>  .../bindings/soc/imx/fsl,imx6sx-gpr.yaml      | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: syscon@20e4000: bridge@18:compatible:0: 'fsl,imx6sx-ldb' is not one of ['fsl,imx8mp-ldb', 'fsl,imx93-ldb']
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230522201404.660242-3-festevam@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

