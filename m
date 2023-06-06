Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BF44724BD2
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239122AbjFFSwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239123AbjFFSw0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:26 -0400
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A114172D
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:23 -0700 (PDT)
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-33d0b7114a9so207465ab.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077542; x=1688669542;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g7ySt9S9+1IxxubjMQVvExdjJhwIi1vFWRB5NUPlv8I=;
        b=R6qsPgBZ5nstP5gOkyLFlBaOW6Oy8hDUwDQ9xk8ynaH4c/nK8GEJEem6hOgJgnRv4z
         8hkSrajZMT/nB4Ai52hdoENyNL5RBsuhxGIwbFdzlEmixiIG3vWtuILghxTnaPP0lY73
         XWfgaltuQVfT8SjGguwBilMjOoDPPI7S1jnvp4Nlx1KcKrreh36rTu5LBN5edmxbB5tA
         BptY2t6IhVdw7Nsny4QyaQTAQQ5+nyUIuO8vmEnTbXrAAZgWkbOMjnKBlu1QCzb0KFt6
         O6lQ3iZqWcVwlGGRUZ/jb40ljcGvBUIwL3BbpBFuuW1f6+QzNw6bLLsKLE6jBGrZSizY
         Dl9g==
X-Gm-Message-State: AC+VfDxawj7+1J/palHxZoChHCjwszNWpn+Ojl5IqDccheGXkhsM60cD
        JlERnZG2c+uacvR+9SiUqw==
X-Google-Smtp-Source: ACHHUZ4HJV+ykjkCC5jDPohhB66SaTHJdLRvLFc/91wp0Ivo7MIooI5I9Se42TKUUDfgsbWsoFcHCg==
X-Received: by 2002:a92:dc86:0:b0:33d:7144:7b98 with SMTP id c6-20020a92dc86000000b0033d71447b98mr4144016iln.3.1686077542651;
        Tue, 06 Jun 2023 11:52:22 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id u26-20020a02cbda000000b0040fc9317650sm1148641jaq.62.2023.06.06.11.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:22 -0700 (PDT)
Received: (nullmailer pid 1468447 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Michael Walle <michael@walle.cc>,
        Pratyush Yadav <pratyush@kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-mtd@lists.infradead.org,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Richard Weinberger <richard@nod.at>,
        devicetree@vger.kernel.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Rob Herring <robh+dt@kernel.org>,
        Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
In-Reply-To: <20230606175246.190465-13-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-13-miquel.raynal@bootlin.com>
Message-Id: <168607751649.1468346.12620524659551431762.robh@kernel.org>
Subject: Re: [PATCH v2 12/17] dt-bindings: mtd: intel: Prevent NAND chip
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


On Tue, 06 Jun 2023 19:52:41 +0200, Miquel Raynal wrote:
> nand-ecc-mode is a generic property which may apply to any raw NAND
> chip, it does not need to be listed in each controller
> description. Instead, let's reference the raw NAND chip description file
> which contains the property. The description contained
> "additionalProperties: false" which is wrong as other properties such as
> partitions might very well be added in the final .dts, and anyway needs
> to be converted into "unexpectedProperties: false" to fit the property
> change new requirements.
> 
> Cc: Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/intel,lgm-ebunand.yaml | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mtd/intel,lgm-ebunand.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/intel,lgm-ebunand.example.dtb: nand-controller@e0f00000: nand@0: False schema does not allow {'reg': [[0]], 'nand-ecc-mode': ['hw']}
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/intel,lgm-ebunand.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/intel,lgm-ebunand.example.dtb: nand-controller@e0f00000: nand@0: Unevaluated properties are not allowed ('nand-ecc-mode' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/intel,lgm-ebunand.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-13-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

