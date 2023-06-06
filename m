Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A036724BD0
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239124AbjFFSw0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239110AbjFFSwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:25 -0400
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 218F310F2
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:20 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-777b0dd72d8so93095239f.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077539; x=1688669539;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bpGuV4ylP5y+aGnKRHCBKkjEM1ME7odWnVStW6c6uLQ=;
        b=J5o9H4p8pFuVB+7/bQ++Cg9iQeYXZHBt9ABCshpCox9+ckozFDlKaU01JkquOzzyyQ
         +kKoI9lea+HrDzuOz3jPXKgbFhs1avbKoD9mIBcUkaCJw4qwxqdg468yKBDA7BMwz7JD
         R0s2fRB4A++LYEgPGZjI8yF+/57CHVJ3RqvUqkuV2ept+uVVxD0ORQESWE46pU+ORiwu
         kKPYkAb40oiFWoSW+s727xI+3oAxVcFoIvPlaMryVEzGSeIkm46wdh/LMVLBBkC1og5s
         o8ULuVWO9cqYAdYnjLyAV4xWc+pn10NICPiJocKCc8GZ7wTa5rfTwseWkBQzP+87p39v
         Laig==
X-Gm-Message-State: AC+VfDys6dp0kN1v6+zCqNN9jjfggo+vPtsZ2GMYaFBQOZg/jdbosVHj
        w7zvVue6gOz2XECtzZThoQ==
X-Google-Smtp-Source: ACHHUZ5TBa6xVydgvF6jjP9b1cwD1GwMqQ95Lw1tLxw0YFa0O7pviRyuU9tpBAvAjvavZx3uoEW4yw==
X-Received: by 2002:a05:6e02:4c4:b0:33a:c9dc:9d50 with SMTP id f4-20020a056e0204c400b0033ac9dc9d50mr2302376ils.1.1686077539210;
        Tue, 06 Jun 2023 11:52:19 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id u10-20020a02c04a000000b004167410a9bcsm1270242jam.113.2023.06.06.11.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:18 -0700 (PDT)
Received: (nullmailer pid 1468453 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, Pratyush Yadav <pratyush@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        linux-mtd@lists.infradead.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Richard Weinberger <richard@nod.at>,
        Michael Walle <michael@walle.cc>,
        Xiangsheng Hou <xiangsheng.hou@mediatek.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20230606175246.190465-17-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-17-miquel.raynal@bootlin.com>
Message-Id: <168607752058.1468418.10172367181635914044.robh@kernel.org>
Subject: Re: [PATCH v2 16/17] dt-bindings: mtd: mediatek: Prevent NAND chip
 unevaluated properties
Date:   Tue, 06 Jun 2023 12:52:00 -0600
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


On Tue, 06 Jun 2023 19:52:45 +0200, Miquel Raynal wrote:
> nand-on-flash-bbt is a generic property which may apply to any raw NAND
> chip, it does not need to be listed in each controller
> description. The raw NAND chip description file which contains the
> property is already referenced, so no need to mention the property here
> again.
> 
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Cc: Xiangsheng Hou <xiangsheng.hou@mediatek.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.example.dtb: nand-controller@1100d000: nand@0: Unevaluated properties are not allowed ('nand-on-flash-bbt' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-17-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

