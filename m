Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D2CB70BFCE
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 15:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233640AbjEVN3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 09:29:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233513AbjEVN33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 09:29:29 -0400
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B14CD11A
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:29:06 -0700 (PDT)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-55254414406so1636801eaf.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:29:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684762138; x=1687354138;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VJiaVLTSlboWEYomNUwnYRoth6BI6kdLl4i1K6LqIXQ=;
        b=C+kjgpNRz7a8WZW4khU3em9JmtzLqcO1ylzCgDlqQFg5mgJYzNmFsWBikW1upqSD7/
         +vKMoH5CtU1l0XJMWwBTAKUiF7s7eBkVHZqCuY3lrabQic78DGZKBIIvHHtWti7zhCap
         iSBAazx7Dx1lQ2zc+TAg9UlE1ZBjAWaGjJVgoyksG/HG4QnIbGM60GiO0bPmKj2yWjmr
         oE5/jOd4Z+EAI3IJGMxkQiXnIXFHM/X+HWjXMAENS9/Gx+bKaJHDsp1X5COjfJCtss1N
         gEFpNlJzXpM/qda6+S3SNPabxsiiH7IKiL83OkuXnDUM0AGTGmWYASvvNB6EUUYjbJzp
         PuPw==
X-Gm-Message-State: AC+VfDyVbPz9ueYWueXjFIME1HmRdY6BupeKsqvTIFQMOBL+CSgXseM+
        xN+ES/D4G/a5Ii8Bn1NCBw==
X-Google-Smtp-Source: ACHHUZ7XkrbNbKqN+bB6IEWFb8ucIHaillHDHtN1vXt9wrOx75ZktUEnuOygvkn8zFMFFTGtJTHDUQ==
X-Received: by 2002:a4a:6208:0:b0:555:5006:4eca with SMTP id x8-20020a4a6208000000b0055550064ecamr1012328ooc.0.1684762137995;
        Mon, 22 May 2023 06:28:57 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id by24-20020a056820201800b0054fd51435efsm2330942oob.8.2023.05.22.06.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 06:28:57 -0700 (PDT)
Received: (nullmailer pid 2286365 invoked by uid 1000);
        Mon, 22 May 2023 13:28:53 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     krzysztof.kozlowski+dt@linaro.org, marex@denx.de,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        shawnguo@kernel.org, Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org
In-Reply-To: <20230522125129.526604-2-festevam@gmail.com>
References: <20230522125129.526604-1-festevam@gmail.com>
 <20230522125129.526604-2-festevam@gmail.com>
Message-Id: <168476213385.2286345.415916491097414808.robh@kernel.org>
Subject: Re: [PATCH v5 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Date:   Mon, 22 May 2023 08:28:53 -0500
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


On Mon, 22 May 2023 09:51:27 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The i.MX6SX General Purpose Registers is a set of register that serves
> various different purposes and in particular, IOMUXC_GPR_GPR6, at
> offset 0x18, can be used to configure the LDB block.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v4:
> - Renamed to syscon@20e4000 (Conor).
> 
>  .../bindings/soc/imx/fsl,imx6sx-gpr.yaml      | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: syscon@20e4000: bridge@18:compatible:0: 'fsl,imx6sx-ldb' is not one of ['fsl,imx8mp-ldb', 'fsl,imx93-ldb']
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: syscon@20e4000: bridge@18:reg: [[24, 4]] is too short
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: syscon@20e4000: bridge@18:reg-names: ['ldb'] is too short
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: syscon@20e4000: bridge@18: Unevaluated properties are not allowed ('compatible', 'reg', 'reg-names' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: /example-0/syscon@20e4000/bridge@18: failed to match any schema with compatible: ['fsl,imx6sx-ldb']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230522125129.526604-2-festevam@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

