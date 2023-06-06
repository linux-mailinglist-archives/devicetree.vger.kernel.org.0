Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF655724BCB
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:52:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238933AbjFFSwO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:52:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238962AbjFFSwN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:52:13 -0400
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62F80E40
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:52:12 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-777a6ebb542so108704539f.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 11:52:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686077531; x=1688669531;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C4UtFdrQxr+x2m/m2+ajxWGfnTRKEy+NoCjbexTZqOY=;
        b=b8Z8B3kd+A5UOnyT0YPi/LQLtoOaHYNMpqET8VEAwgcg+i0cKFRgUOEJUOI0Wod1Yt
         BYGjYUFhHotZwsFA2dLkyv2E7BzE/lx16DJxe/Mjw8P0dDtPEoCpcfAzf2hinfXmlHlO
         JBQED2v6GdMyildXTLK0WPwJBtuJO5pcB74XmdpR+/DwW3fmpjzdqISpzjeZIKnqJqh+
         +UL18sHxBkPctTUCnrTJwq4olhjCP0FldNlssnTR2vmTt99tGg+Atr9B4GqMHU1Sy4KI
         3ijPqT+fTAvfPmzB9fhDWS0Gx9niyv/PJlzm8kIVwfe9mk66VVaBZsrog61ccQA9cjeO
         xVCw==
X-Gm-Message-State: AC+VfDxwxIzcK7jJBFh+lYC27KHurrmdWYEDEiCXxym3RxyvKhzc12cI
        dfdAxHI3h0A0dkva7fG4cw==
X-Google-Smtp-Source: ACHHUZ4fIkoCSunE75/vagzP4iimIRH8cgEnLx6hQgtecdv+bvAsmE9f8LmF5qlT6+ZZCq2QJnewkw==
X-Received: by 2002:a6b:e614:0:b0:760:f795:ccdf with SMTP id g20-20020a6be614000000b00760f795ccdfmr2556947ioh.8.1686077531375;
        Tue, 06 Jun 2023 11:52:11 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id b12-20020a029a0c000000b004090c67f155sm843420jal.91.2023.06.06.11.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 11:52:10 -0700 (PDT)
Received: (nullmailer pid 1468439 invoked by uid 1000);
        Tue, 06 Jun 2023 18:52:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        devicetree@vger.kernel.org, Michael Walle <michael@walle.cc>,
        Maxime Ripard <mripard@kernel.org>,
        Richard Weinberger <richard@nod.at>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mtd@lists.infradead.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Samuel Holland <samuel@sholland.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>
In-Reply-To: <20230606175246.190465-9-miquel.raynal@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-9-miquel.raynal@bootlin.com>
Message-Id: <168607751082.1468254.16628055652368989203.robh@kernel.org>
Subject: Re: [PATCH v2 08/17] dt-bindings: mtd: sunxi: Prevent NAND chip
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


On Tue, 06 Jun 2023 19:52:37 +0200, Miquel Raynal wrote:
> nand-ecc-mode is a generic property which may apply to any raw NAND
> chip, it does not need to be listed in each controller
> description. Instead, let's reference the raw NAND chip description file
> which contains the property. The description contained
> "additionalProperties: false" which is wrong as other properties such as
> partitions might very well be added in the final .dts, and anyway needs
> to be converted into "unexpectedProperties: false" to fit the property
> change new requirements.
> 
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Samuel Holland <samuel@sholland.org>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml    | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/mtd/raw-nand-chip.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230606175246.190465-9-miquel.raynal@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

