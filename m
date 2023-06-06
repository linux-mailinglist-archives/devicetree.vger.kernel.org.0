Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 531BB724BCA
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233006AbjFFSwL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238933AbjFFSwK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:10 -0400
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7631583
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:09 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-7770c1570a6so189020239f.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077528; x=1688669528;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4EqDUqkk2l6bGo2T3M69+gamDexLSphWtgXxcDch4NU=;
        b=HbFu5fWo7yE1nqnUFVeOX4qUyPCsOKSDgsosHip0+hn2gRCt/Lc3Ocyae2fuo9Omxi
         aEtMEv/e2G1a+ZbMnbS69V2kQuvmzxpDIzx/7kerxPa0GRvl31w98/bBhlp17BQq/24L
         /W9Hx/X6dQ5opGaUlkgAB4pFciw0NRY+uUKJimFkC05OyA3GWtJzS9JVXJZEEeUabnxU
         ZhcPDCCVSiNvRmC3rIKk+fa3ggJV06x0tKTk9KEjlCJIylDpzW7R8td5O31UzApLCTR9
         VfCkcFgZSJkJG6KdbeZy8latLZhbDxjaUqS8MzKlDlCb9N4ihmg/3oH/MtGPX14xMvMh
         gHUA==
X-Gm-Message-State: AC+VfDxR6pryNrm7MAgWfnpqfCHJLzEJ9g1NyKDUozIyAspyq92hBjds
        CZnVJudX/KynepQmyvkiGvMUml1RSw==
X-Google-Smtp-Source: ACHHUZ661zHGE6oRFcgUHmGNq91eQinUuro8ZmtYkorwRJYMt7m9nHU1wERKDVKXj6qjeQYFNJU4jg==
X-Received: by 2002:a6b:ea0a:0:b0:777:b107:dd4d with SMTP id m10-20020a6bea0a000000b00777b107dd4dmr2668534ioc.16.1686077528672;
        Tue, 06 Jun 2023 11:52:08 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id r18-20020a6bd912000000b007749b2d1a6fsm3377076ioc.32.2023.06.06.11.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:08 -0700 (PDT)
Received: (nullmailer pid 1468441 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Liang Yang <liang.yang@amlogic.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-mtd@lists.infradead.org, Michael Walle <michael@walle.cc>,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        devicetree@vger.kernel.org,
        Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230606175246.190465-10-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-10-miquel.raynal@bootlin.com>
Message-Id: <168607751220.1468277.13727658433890186184.robh@kernel.org>
Subject: Re: [PATCH v2 09/17] dt-bindings: mtd: meson: Prevent NAND chip
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


On Tue, 06 Jun 2023 19:52:38 +0200, Miquel Raynal wrote:
> Ensure all raw NAND chip properties are valid by referencing the
> relevant schema and set unevaluatedProperties to false in the NAND chip
> section to avoid spurious additions of random properties.
> 
> Cc: Liang Yang <liang.yang@amlogic.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/amlogic,meson-nand.example.dtb: nand-controller@ffe07800: nand@0: False schema does not allow {'reg': [[0]]}
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-10-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

