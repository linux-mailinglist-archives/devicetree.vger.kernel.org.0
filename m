Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3E3665AC15
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 23:43:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229948AbjAAWni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 17:43:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjAAWng (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 17:43:36 -0500
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06E7521B9
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 14:43:35 -0800 (PST)
Received: by mail-il1-f195.google.com with SMTP id h26so1040229ila.11
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 14:43:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UlPt3SCz6GbepQxlKYW49Ply/kmolBapqH0fQ69WCTo=;
        b=FxYRd6vnupsT5Tkq2geNqG6DQn6+ClO5c/X0tmchcHPHfLqDyuG5iZpjK6I1O3yGiA
         oWbL7M1oheAzLbv3IjMv2r2tdx2hL/yYIG2df0flzmbJ+3c76MUVS31H2tM5npPyhBd6
         jHEhRMwkVC2NOi7qmDY/8+XSl87CNs2jZ4nhFr4+tD/c+Uc7YhbuMFfNSpBqJeV7KhbT
         MVrCVd/qSVLaGTmt4k8DZeRI/WYxONe6ndcZJn9vnxjdA84gUse2NiBvqiVl4FFai9Wv
         pZY4Xmg33SAbgT3LhNbUrYQ+Q7jQ2ExJzY1wSNw5unIRKp2qCnCFJa8cfwaxNeDpzV4z
         YTqw==
X-Gm-Message-State: AFqh2kr3vzTaMaO6BuBh7Rq0VUZ8HituGcMRcEB5g+9djnKEqqY5m0sg
        Yoh/317wI6DjF/xa+vfE8w==
X-Google-Smtp-Source: AMrXdXun3kI/QdAzH9h+2IXrlY7DpMYiS1XNk58wd1xzeFKKzJpoC/MH1aAwN3jBSOOO3EHb7+/Zdg==
X-Received: by 2002:a92:b708:0:b0:30b:cbb3:9dfb with SMTP id k8-20020a92b708000000b0030bcbb39dfbmr25665079ili.22.1672613014013;
        Sun, 01 Jan 2023 14:43:34 -0800 (PST)
Received: from robh_at_kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id y11-20020a92d20b000000b00302a772730esm8498285ily.54.2023.01.01.14.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 14:43:33 -0800 (PST)
Received: (nullmailer pid 2887016 invoked by uid 1000);
        Sun, 01 Jan 2023 22:43:31 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
References: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
Message-Id: <167261289973.2882321.12834182171105981289.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add Startkit
Date:   Sun, 01 Jan 2023 16:43:31 -0600
X-Spam-Status: No, score=1.3 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,URIBL_DBL_SPAM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sun, 01 Jan 2023 20:46:49 +0200, Dmitry Baryshkov wrote:
> Starterkit is small vendor of development boards and SoM based on Atmel,
> i.MX and Allwinner SoCs.
> 
> http://starterkit.ru/html/index.php
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/vendor-prefixes.yaml:1250:5: [error] syntax error: could not find expected ':' (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/vendor-prefixes.example.dts'
Documentation/devicetree/bindings/vendor-prefixes.yaml:1250:5: could not find expected ':'
make[1]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/vendor-prefixes.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/vendor-prefixes.yaml:1250:5: could not find expected ':'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/vendor-prefixes.yaml: ignoring, error parsing file
make: *** [Makefile:1508: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230101184651.807900-1-dmitry.baryshkov@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

