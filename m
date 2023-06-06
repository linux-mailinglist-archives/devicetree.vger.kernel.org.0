Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E5D2724BD6
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239119AbjFFSwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239133AbjFFSwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:30 -0400
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C399E40
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:26 -0700 (PDT)
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-33b204f0ca0so65815ab.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077545; x=1688669545;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=urm8ce+1iipWcrlD9S+gUpEnVuPcFWqbKSQklkKSxQY=;
        b=Bfahz5jwvzlyiNbSYz1taB/F1xzepGwma1qWKizyrLiVUMRhL0/H4yLMQVOVPk6Sdt
         FKv64ANxW8Zss1iR+wu6BYsnZyhIe0G+0j3ZwFOko7NaQeEYKy/XTo+aRAqLIvg5hYfa
         kvZ6mlyGUdZsJO2j28VnRDgoV4+/UjjYT58LeWvhih2cYEK1hDjizzF0jdmHTLw9bAuF
         zyTwlUyGBw5N05rsXl8M5Geb5cA1OYsRMnhdwMMgwV0eyB4nf4V/uVtDGBDWhn/pspR6
         dj2nXnCxg6M7f9lNW4mVOPr8ETstDrVy8I7q/r4IXuqY0APCcHUUOfy3jL+3jME9+IB2
         F3zQ==
X-Gm-Message-State: AC+VfDwNci5POCQ1UGGeEvyOWZMVRst4bpbEWPhvjP/iEcMsK+IvN/ZK
        APv5vpFNYVg5aAWLM9U7mA==
X-Google-Smtp-Source: ACHHUZ5ZFK9Hl4tGFDogaHTkcUWjA4I1EGQ37EoXguCckQ6O9Dm/RgiafS6YdmwfEdDORWgPo3aDCw==
X-Received: by 2002:a05:6e02:5d2:b0:33d:3b69:2d2c with SMTP id l18-20020a056e0205d200b0033d3b692d2cmr4762693ils.20.1686077545024;
        Tue, 06 Jun 2023 11:52:25 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id b12-20020a92c84c000000b0032ca1426ddesm3182832ilq.55.2023.06.06.11.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:24 -0700 (PDT)
Received: (nullmailer pid 1468445 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Michael Walle <michael@walle.cc>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>
In-Reply-To: <20230606175246.190465-12-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-12-miquel.raynal@bootlin.com>
Message-Id: <168607751516.1468323.4234519739247750228.robh@kernel.org>
Subject: Re: [PATCH v2 11/17] dt-bindings: mtd: denali: Prevent NAND chip
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


On Tue, 06 Jun 2023 19:52:40 +0200, Miquel Raynal wrote:
> Ensure all raw NAND chip properties are valid by referencing the
> relevant schema and set unevaluatedProperties to false in the NAND chip
> section to avoid spurious additions of random properties.
> 
> Doing this in one location also saves us from dupplicating the
> description of the NAND chip object.
> 
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/denali,nand.yaml | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mtd/denali,nand.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/denali,nand.example.dtb: nand-controller@ff900000: nand@0: False schema does not allow {'reg': [[0]]}
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/denali,nand.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/denali,nand.example.dtb: nand-controller@ff900000: nand@0: Unevaluated properties are not allowed ('reg' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/denali,nand.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-12-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

