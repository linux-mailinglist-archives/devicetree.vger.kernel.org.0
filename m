Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A682724BC8
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238302AbjFFSwI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239093AbjFFSwH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:07 -0400
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 313DA10CB
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:04 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-777b0cae9ecso119725939f.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077523; x=1688669523;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7EAVpIrRn6QWhcISMayUZMcBokJpsHkZHf77Jv7Sy08=;
        b=lz2KJVpBr2JR7sbjs4iyl5G7tsJlzHT7ybj96listR41eJit2hgS7TH7/9uYWMgY85
         95pmqt1WpQxYC2Igrsyq+h0KA8J2caLdY+9m7NsdfaF4WxGHQUW9ubIgHvEr7iS7rqHT
         cvWaDxhblEDu6GOxPUQE0dmB9OcQanBH0JMCOIs4JSkJuoOCZoWNWgZPmhMbhNOzjXH3
         T56/9yGzNFe8IKV6P1WAad5TNS+q5lOSdB/rRSGAUH/zAFFPJ1sRApglqnzIxP7HfAWi
         xV1EtIwhaRPfB3m5dOMQsSM2F2KQ+sicH+OMcfOWAK5u9RvgJ0zxZ+rDSQOlMITD6eGo
         nykg==
X-Gm-Message-State: AC+VfDzS+EWSjwH/kkBUmPVJWr259RrcUB40IX+JrkCq2UYqHJcdWCxb
        RrzkqVXBndVSBKfoOR8T1w==
X-Google-Smtp-Source: ACHHUZ5JzpYJgWaSrOgMjIEvAY3GAqNx45s9u9vyU7PJx9ppmDzkN55/50vk5bE1tsxne0aIZf03zA==
X-Received: by 2002:a6b:e312:0:b0:774:9b75:b463 with SMTP id u18-20020a6be312000000b007749b75b463mr4968862ioc.7.1686077523347;
        Tue, 06 Jun 2023 11:52:03 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id k17-20020a6b4011000000b00752f62cd3bdsm3360058ioa.12.2023.06.06.11.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:02 -0700 (PDT)
Received: (nullmailer pid 1468436 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Pratyush Yadav <pratyush@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Walle <michael@walle.cc>,
        Paul Cercueil <paul@crapouillou.net>,
        Richard Weinberger <richard@nod.at>
In-Reply-To: <20230606175246.190465-8-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-8-miquel.raynal@bootlin.com>
Message-Id: <168607750937.1468225.8457774415279003681.robh@kernel.org>
Subject: Re: [PATCH v2 07/17] dt-bindings: mtd: ingenic: Prevent NAND chip
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


On Tue, 06 Jun 2023 19:52:36 +0200, Miquel Raynal wrote:
> List all the possible properties in the NAND chip as per the example and
> set unevaluatedProperties to false in the NAND chip section.
> 
> Cc: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/ingenic,nand.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mtd/ingenic,nand.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/ingenic,nand.example.dtb: nand-controller@1: nand@1: False schema does not allow {'reg': [[1]], 'nand-ecc-step-size': [[1024]], 'nand-ecc-strength': [[24]], 'nand-ecc-mode': ['hw'], 'nand-on-flash-bbt': True, 'pinctrl-names': ['default'], 'pinctrl-0': [[4294967295]], 'partitions': {'compatible': ['fixed-partitions'], '#address-cells': [[2]], '#size-cells': [[2]], 'partition@0': {'label': ['u-boot-spl'], 'reg': [[0, 0, 0, 8388608]]}, 'partition@800000': {'label': ['u-boot'], 'reg': [[0, 8388608, 0, 2097152]]}, 'partition@a00000': {'label': ['u-boot-env'], 'reg': [[0, 10485760, 0, 2097152]]}, 'partition@c00000': {'label': ['boot'], 'reg': [[0, 12582912, 0, 67108864]]}, 'partition@4c00000': {'label': ['system'], 'reg': [[0, 79691776, 1, 4215275520]]}}}
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/ingenic,nand.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/ingenic,nand.example.dtb: nand-controller@1: nand@1: Unevaluated properties are not allowed ('nand-ecc-mode', 'nand-ecc-step-size', 'nand-ecc-strength', 'nand-on-flash-bbt', 'partitions', 'reg' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/ingenic,nand.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-8-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

