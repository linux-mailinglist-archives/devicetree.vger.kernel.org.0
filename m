Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3BD7715F32
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 14:26:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230343AbjE3M0o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 08:26:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230378AbjE3M0j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 08:26:39 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81765C9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:26:30 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96f7377c86aso794491766b.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685449589; x=1688041589;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ub2jFuE5gMHKMlSzwzuEodjcrijcn62V/6/B6MhqQhc=;
        b=qh/qvot4P8OSccQ721U0TbPfiUZ2MkUkLg6GYmqJl98rznbMj+QrOBvbFVbkPydASF
         LzW5QP1KmXdqZpRPgQVXcOSeptA6FqvQIOjFIfSwbSMdqfUOBLzOTXZLQi3y6/EEcw0J
         aD4o2QYEVfOLOB3agcEmZ/iWEeqDC6pOp2aQFq/VKFpZJRVK7wcYRvse34daaVzlbkxr
         9e6J8/OYAfxrmpm2Iot/cKE+rrBAmHt8RC13B3ex7bGKN5KvfezycTJkbxqT0/R4MKQW
         ApqDL6AwTMuOUROHrTmqYSminYZWxQkGV+a4moxtBiev6iTHUD3einSrepKu7jpJYVsO
         /TjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685449589; x=1688041589;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ub2jFuE5gMHKMlSzwzuEodjcrijcn62V/6/B6MhqQhc=;
        b=Ljq9vegxFZtldAj/dl05q6KT38uPanKhhlNBPacNUraF1EtcxslJPKvTKH6Oq4K+2B
         QsZhZa3KBYnHbztewXK2rddWk6zgrNjo2NO4Pmor9bA7LyWg2FzxNM+w57UsiBemkmra
         SCkHChWUT5NvYP0gV80C+NGJnNxrdb6ZRiElCPHeVz1UCGuT38OpZ8X4hlsa/o3zIxbo
         N/whzoObJfZIVIR29Nc/eNAcN5fqby7idqAvYO51a3Ty3mcOwoIrl8LzpaSypRyeDCcW
         B7gdGOjR0UrLPB6H1vcuSpWf4JqOeuedARmw2jafaUuJhPThduDXvrTxS7BFenYXWunT
         CFYQ==
X-Gm-Message-State: AC+VfDxOv8cU2uMqpjmmLV+MysyU8TIGIJQAL+n1x3Jg4t20ZYXdn3Og
        oUDNJrcgcotWFvPg9upYzPCdAQ==
X-Google-Smtp-Source: ACHHUZ5N9YGr7jhYOHfatMd2J3ATCqrXHGlWqINWgXg89tGAE4MPMAg3iZYD7ksIssI/7q2AiyJ5Mg==
X-Received: by 2002:a17:907:d88:b0:96a:43b9:95b1 with SMTP id go8-20020a1709070d8800b0096a43b995b1mr2447111ejc.59.1685449588892;
        Tue, 30 May 2023 05:26:28 -0700 (PDT)
Received: from krzk-bin ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id k17-20020a170906681100b0096f7105b3a6sm7242500ejr.189.2023.05.30.05.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 05:26:28 -0700 (PDT)
Date:   Tue, 30 May 2023 14:26:25 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc:     miquel.raynal@bootlin.com, sebastian.hesselbarth@gmail.com,
        gregory.clement@bootlin.com, vadym.kochan@plvision.eu,
        linux-kernel@vger.kernel.org, vigneshr@ti.com, conor+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, andrew@lunn.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-mtd@lists.infradead.org, enachman@marvell.com,
        devicetree@vger.kernel.org, richard@nod.at
Subject: Re: [PATCH v6 1/2] dt-bindings: mtd: marvell-nand: Convert to YAML
 DT scheme
Message-ID: <20230530122625.7zu3ey5dnn6izeli@krzk-bin>
References: <20230530005337.3687938-1-chris.packham@alliedtelesis.co.nz>
 <20230530005337.3687938-2-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230530005337.3687938-2-chris.packham@alliedtelesis.co.nz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 May 2023 12:53:36 +1200, Chris Packham wrote:
> From: Vadym Kochan <vadym.kochan@plvision.eu>
> 
> Switch the DT binding to a YAML schema to enable the DT validation.
> 
> Dropped deprecated compatibles and properties described in txt file.
> 
> Signed-off-by: Vadym Kochan <vadym.kochan@plvision.eu>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
> 
> Notes:
>     Changes in v6:
>     - remove properties covered by nand-controller.yaml
>     - add example using armada-8k compatible
> 
>     earlier changes:
> 
>     v5:
>        1) Get back "label" and "partitions" properties but without
>           ref to the "partition.yaml" which was wrongly used.
> 
>        2) Add "additionalProperties: false" for nand@ because all possible
>           properties are described.
> 
>     v4:
>        1) Remove "label" and "partitions" properties
> 
>        2) Use 2 clocks for A7K/8K platform which is a requirement
> 
>     v3:
>       1) Remove txt version from the MAINTAINERS list
> 
>       2) Use enum for some of compatible strings
> 
>       3) Drop:
>             #address-cells
>             #size-cells:
> 
>          as they are inherited from the nand-controller.yaml
> 
>       4) Add restriction to use 2 clocks for A8K SoC
> 
>       5) Dropped description for clock-names and extend it with
>          minItems: 1
> 
>       6) Drop description for "dmas"
> 
>       7) Use "unevalautedProperties: false"
> 
>       8) Drop quites from yaml refs.
> 
>       9) Use 4-space indentation for the example section
> 
>     v2:
>       1) Fixed warning by yamllint with incorrect indentation for compatible list
> 
>  .../bindings/mtd/marvell,nand-controller.yaml | 190 ++++++++++++++++++
>  .../devicetree/bindings/mtd/marvell-nand.txt  | 126 ------------
>  MAINTAINERS                                   |   1 -
>  3 files changed, 190 insertions(+), 127 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/marvell,nand-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mtd/marvell-nand.txt
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1787248


nand@720000: $nodename:0: 'nand@720000' does not match '^nand-controller(@.*)?'
	arch/arm64/boot/dts/marvell/armada-7040-db.dtb
	arch/arm64/boot/dts/marvell/armada-7040-mochabin.dtb
	arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dtb
	arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dtb
	arch/arm64/boot/dts/marvell/armada-8040-db.dtb
	arch/arm64/boot/dts/marvell/armada-8040-db.dtb
	arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtb
	arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtb
	arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dtb
	arch/arm64/boot/dts/marvell/armada-8040-mcbin-singleshot.dtb
	arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dtb
	arch/arm64/boot/dts/marvell/armada-8040-puzzle-m801.dtb
	arch/arm64/boot/dts/marvell/cn9130-crb-A.dtb
	arch/arm64/boot/dts/marvell/cn9130-crb-B.dtb
	arch/arm64/boot/dts/marvell/cn9130-db-B.dtb
	arch/arm64/boot/dts/marvell/cn9130-db.dtb
	arch/arm64/boot/dts/marvell/cn9131-db-B.dtb
	arch/arm64/boot/dts/marvell/cn9131-db-B.dtb
	arch/arm64/boot/dts/marvell/cn9131-db.dtb
	arch/arm64/boot/dts/marvell/cn9131-db.dtb
	arch/arm64/boot/dts/marvell/cn9132-db-B.dtb
	arch/arm64/boot/dts/marvell/cn9132-db-B.dtb
	arch/arm64/boot/dts/marvell/cn9132-db-B.dtb
	arch/arm64/boot/dts/marvell/cn9132-db.dtb
	arch/arm64/boot/dts/marvell/cn9132-db.dtb
	arch/arm64/boot/dts/marvell/cn9132-db.dtb

nand@720000: Unevaluated properties are not allowed ('#address-cells', '#size-cells' were unexpected)
	arch/arm64/boot/dts/marvell/cn9130-db-B.dtb
	arch/arm64/boot/dts/marvell/cn9131-db-B.dtb
	arch/arm64/boot/dts/marvell/cn9132-db-B.dtb

nand-controller@43100000: clock-names: ['core'] is too short
	arch/arm/boot/dts/pxa300-raumfeld-connector.dtb
	arch/arm/boot/dts/pxa300-raumfeld-controller.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-l.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-m.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-s.dtb

nand-controller@43100000: dma-names:0: 'rxtx' was expected
	arch/arm/boot/dts/pxa300-raumfeld-connector.dtb
	arch/arm/boot/dts/pxa300-raumfeld-controller.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-l.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-m.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-s.dtb

nand-controller@43100000: Unevaluated properties are not allowed ('dma-names' was unexpected)
	arch/arm/boot/dts/pxa300-raumfeld-connector.dtb
	arch/arm/boot/dts/pxa300-raumfeld-controller.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-l.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-m.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dtb
	arch/arm/boot/dts/pxa300-raumfeld-speaker-s.dtb

nand-controller@d0000: nand@0:partitions: Unevaluated properties are not allowed ('partition@errlog', 'partition@nand-bbt', 'partition@user' were unexpected)
	arch/arm/boot/dts/armada-385-atl-x530.dtb

nand-controller@d0000: Unevaluated properties are not allowed ('#address-cells', '#size-cells' were unexpected)
	arch/arm/boot/dts/armada-385-atl-x530.dtb
