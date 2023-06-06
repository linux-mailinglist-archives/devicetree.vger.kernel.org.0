Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9EA1724BCE
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239093AbjFFSwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239099AbjFFSwQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:16 -0400
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EFF1101
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:15 -0700 (PDT)
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-33d0b7114a9so206705ab.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077534; x=1688669534;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=moBbk168uFHSvZ2f4zil6U2idBIOekExEazPbot20tk=;
        b=Ou0f0F3i7hTnpqYSLpnsbXSgJD+g6uoDGt3NjC/wtsmfJYTMeEwE/mbYiIB5Rra7yP
         Av6jh1h6q7u4qv/oUYtAhQdsjnQmHyLXL+eNgtZ5FiF3yMbVFqXIPBzJbi2I/+MkCUkd
         ybSNSkWXL/L3VB/rKsCRFzM4/EqFQOwltT4dhR5K88Hd821n5W+/KNboR/n/FgXAWbNV
         UCx0Mp+KzfsMkeiVsKeVTSFzdP5V+sKS5MPCoJ6GBNUNRvF5JeDu/NasjNEkYc64pNo4
         mWu5ch4XOz+w1+QGbWSBkZiu+ld0BX/p9GMoNxzaavSaAgBkxnuiufcwEp1WwJ7snQ1/
         pYMA==
X-Gm-Message-State: AC+VfDyq1ZQ8Tqpa1ub32fWk0m/T5mL3aaT+K+NcAZsP55tN9I66RZ49
        qFSLTb9BDOIfCa1gqzdYfw==
X-Google-Smtp-Source: ACHHUZ4w64OUwkr/ktIj1u5/r8/DvrwqXepzViI8Nrzhwb1sFbkM36wRtuAEe/KXv/AIwTv4c5eifw==
X-Received: by 2002:a92:c848:0:b0:33d:6988:c000 with SMTP id b8-20020a92c848000000b0033d6988c000mr4346123ilq.8.1686077534127;
        Tue, 06 Jun 2023 11:52:14 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id dp37-20020a0566381ca500b0041ab9b6f5b0sm2108551jab.128.2023.06.06.11.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:13 -0700 (PDT)
Received: (nullmailer pid 1468443 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        Michael Walle <michael@walle.cc>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Richard Weinberger <richard@nod.at>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
In-Reply-To: <20230606175246.190465-11-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-11-miquel.raynal@bootlin.com>
Message-Id: <168607751367.1468300.592745867598480616.robh@kernel.org>
Subject: Re: [PATCH v2 10/17] dt-bindings: mtd: brcmnand: Prevent NAND chip
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


On Tue, 06 Jun 2023 19:52:39 +0200, Miquel Raynal wrote:
> Ensure all raw NAND chip properties are valid by referencing the
> relevant schema and set unevaluatedProperties to false in the NAND chip
> section to avoid spurious additions of random properties.
> 
> Cc: Brian Norris <computersforpeace@gmail.com>
> Cc: Kamal Dasu <kdasu.kdev@gmail.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/brcm,brcmnand.example.dtb: nand-controller@f0442800: nand@1: False schema does not allow {'compatible': ['brcm,nandcs'], 'reg': [[1]], 'nand-on-flash-bbt': True, 'nand-ecc-strength': [[12]], 'nand-ecc-step-size': [[512]], '#address-cells': [[1]], '#size-cells': [[1]]}
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/brcm,brcmnand.example.dtb: nand-controller@f0442800: nand@1: Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'nand-ecc-strength', 'nand-on-flash-bbt', 'reg' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/brcm,brcmnand.example.dtb: nand-controller@10000200: nand@0: False schema does not allow {'compatible': ['brcm,nandcs'], 'reg': [[0]], 'nand-on-flash-bbt': True, 'nand-ecc-strength': [[1]], 'nand-ecc-step-size': [[512]], '#address-cells': [[1]], '#size-cells': [[1]]}
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/brcm,brcmnand.example.dtb: nand-controller@10000200: nand@0: Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'nand-ecc-strength', 'nand-on-flash-bbt', 'reg' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-11-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

