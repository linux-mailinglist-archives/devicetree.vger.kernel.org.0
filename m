Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1AD1724BCF
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238608AbjFFSwT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238790AbjFFSwS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:18 -0400
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58F80101
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:17 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-33b0bfb76cfso153775ab.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077536; x=1688669536;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pBMEN+nt0y4256CRdPwMmK5SiiX7bkhje9VaIgEwu5o=;
        b=M7cViGbO1RWqKV5BYkthBYN1hVfjSX5JhH8zSCKhYAUb/CWvtQ944LOCOMj0XPGqpQ
         GYmoTvnrCC4XqJQlqMYv851hYZi19DZw+PvcCO+qKoDVHtdceqfJNBFZnk+WiVKwIQgf
         FV0FHmap7FTnd+oXVy4kx8URqchxJAKuSaW44PGv8fHLB0bj1uWXOb4pfBcOUJImPsQB
         zc2KIwhBfAniMRfYcybb8D6bzxqbGVWFgwW4i4aZ22WA0VxccZzkA5Ei18ge05EHzsSA
         JoB2zmYWcOdFh3O8N3UyiyTzJbGjcS0Hj2I8kr4TzBhcP2AddX9NJuzYiQ31P0APtKEv
         yVHg==
X-Gm-Message-State: AC+VfDyoHZA5rchkpiMj4E5gN8pSagwbnPDqduGQhPPUFuanxPxWW+zD
        gAA4eYykbeBrf7LM4NPoBg==
X-Google-Smtp-Source: ACHHUZ4BAO024hmJwkdQzBpDU4BEynaZrPy+uuSqhUBaTcdROm1yuNk5vuNWpav/kSNZ4//TDH9Rzw==
X-Received: by 2002:a05:6e02:4c9:b0:33b:f0f1:dd04 with SMTP id f9-20020a056e0204c900b0033bf0f1dd04mr2515255ils.11.1686077536531;
        Tue, 06 Jun 2023 11:52:16 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id y4-20020a92c744000000b0033b2f5fe9bdsm3187424ilp.36.2023.06.06.11.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:15 -0700 (PDT)
Received: (nullmailer pid 1468449 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Richard Weinberger <richard@nod.at>,
        linux-mtd@lists.infradead.org,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org, Michael Walle <michael@walle.cc>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20230606175246.190465-14-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-14-miquel.raynal@bootlin.com>
Message-Id: <168607751780.1468369.13951329348059073046.robh@kernel.org>
Subject: Re: [PATCH v2 13/17] dt-bindings: mtd: rockchip: Prevent NAND chip
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


On Tue, 06 Jun 2023 19:52:42 +0200, Miquel Raynal wrote:
> List all the possible properties in the NAND chip as per the example and
> set unevaluatedProperties to false in the NAND chip section.
> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/rockchip,nand-controller.yaml      | 3 +++
>  1 file changed, 3 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.example.dtb: nand-controller@ff4b0000: nand@0: False schema does not allow {'reg': [[0]], 'label': ['rk-nand'], 'nand-bus-width': [[8]], 'nand-ecc-mode': ['hw'], 'nand-ecc-step-size': [[1024]], 'nand-ecc-strength': [[16]], 'nand-is-boot-medium': True, 'rockchip,boot-blks': [[8]], 'rockchip,boot-ecc-strength': [[16]]}
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.example.dtb: nand-controller@ff4b0000: nand@0: Unevaluated properties are not allowed ('label', 'nand-is-boot-medium' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-14-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

