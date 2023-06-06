Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D1A5724BC9
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237689AbjFFSwK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239093AbjFFSwJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:09 -0400
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DF081702
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:07 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-777a78739ccso148510239f.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077526; x=1688669526;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mbTz3L0KOieu2PiZ8/3f4rcShzBA+Lhe0vv5LvOZlFQ=;
        b=ZZG+jfcX+d26gsQkoNdlsf0aq2a9QJPaE0x6CrjTaGc/4NXO1JY5aV5DvcP28kFiTP
         vYAkxv9gCYKZoDCCDnLyei9MVAGykJRu4svBQm66VXrGli+bG55SCKDwsPnbQYOhwsEM
         6cxQ6Apt26YLk7nU3o6SSo0pXhCbqv0l0QRb7qVUokqtE8j6z9tF381/IxkhHjCNyzDw
         lUDARog06Sz8TYg+m21yv2rQmK1+GoYxGcc++91++mq3cpH8G7GWbdUWspgY8UPBOF1D
         qX/aLJPWNxsUZa8koT3cHtYgymorwA7MVMNrhLQM+2t9iZnCMPHsSyf/jN4E68Fk4+zq
         F2zg==
X-Gm-Message-State: AC+VfDz90AGZzUQzbW9jBCNmQxLC5RAkYVTq8sTK21PwpmQWsDPtGplB
        Z3+erQ5Xut99LK3MsWeRCw==
X-Google-Smtp-Source: ACHHUZ5Sq/LO+6kNTTuEb8BcXJe7Qx8KdEQpo/fTTTmeNTLsvky/8jqy90OxORpqg+yw44P6jflFTg==
X-Received: by 2002:a05:6602:1859:b0:766:48cf:6ca9 with SMTP id d25-20020a056602185900b0076648cf6ca9mr4506499ioi.12.1686077526284;
        Tue, 06 Jun 2023 11:52:06 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id t2-20020a05663801e200b0041643b78cbesm3045952jaq.120.2023.06.06.11.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:05 -0700 (PDT)
Received: (nullmailer pid 1468451 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Pratyush Yadav <pratyush@kernel.org>,
        Richard Weinberger <richard@nod.at>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Xiangsheng Hou <xiangsheng.hou@mediatek.com>,
        linux-mtd@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Michael Walle <michael@walle.cc>
In-Reply-To: <20230606175246.190465-16-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-16-miquel.raynal@bootlin.com>
Message-Id: <168607751913.1468392.4718392727141734461.robh@kernel.org>
Subject: Re: [PATCH v2 15/17] dt-bindings: mtd: mediatek: Reference
 raw-nand-chip.yaml
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


On Tue, 06 Jun 2023 19:52:44 +0200, Miquel Raynal wrote:
> The mediatek NAND controller should reference the new raw-nand-chip.yaml
> binding instead of the original nand-chip.yaml which does not contain
> *all* the properties that may be used to fully describe the NAND
> devices, certain properties being actually described under
> nand-controller.yaml.
> 
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Cc: Xiangsheng Hou <xiangsheng.hou@mediatek.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.example.dtb: nand-controller@1100d000: nand@0: False schema does not allow {'reg': [[0]], 'nand-on-flash-bbt': True, 'nand-ecc-mode': ['hw'], 'nand-ecc-step-size': [[1024]], 'nand-ecc-strength': [[24]], 'partitions': {'compatible': ['fixed-partitions'], '#address-cells': [[1]], '#size-cells': [[1]], 'preloader@0': {'label': ['pl'], 'read-only': True, 'reg': [[0, 4194304]]}, 'android@400000': {'label': ['android'], 'reg': [[4194304, 314572800]]}}}
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.example.dtb: nand-controller@1100d000: nand@0: Unevaluated properties are not allowed ('nand-ecc-step-size', 'nand-ecc-strength', 'partitions' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-16-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

