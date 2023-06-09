Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECE0C72A500
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 22:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230160AbjFIUvx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 16:51:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230000AbjFIUvw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 16:51:52 -0400
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A592E0
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 13:51:51 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-33b4b70693eso9612455ab.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 13:51:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686343910; x=1688935910;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZwWeHAoYaF11bB9mZFv3houRJOLICswQAHnlj8zt7CY=;
        b=Hj9/haAbZWih4wYpu1wTncgleG4LSoJwWgSexcG5GbA6VpOwT0q15QJBcXBoYPI0tI
         U6NsjtE0TTge+xCB83ibVRstSd2JTcHOyxWj5oMytpOl6l8rXko4LVL5HLGBwh14c0Pd
         /EJ7IxqtWcLu7uhAR2rLAh4EeY4MiC1faojv+pWsEcpHeZDXPk6Ha1ZjLkK8fdi0s7xY
         AXoz1OFnZteUzAFsN2azjYW1GZGu7noMEeW6Aldb6nAEnOH7I/a+6GqDTHF7CGefrSS+
         Q5v9Z5ZAu4eMzNbLC3TeTu34qfuB+jnmUot/2rHh+ixwB5ClVMbt/K1/rrFgFDAbf2Fq
         9pMA==
X-Gm-Message-State: AC+VfDwty+NBHqvxAZmNaA5XI1lJUH3A60jhwJ5M50XnXOBRJW3GAmp4
        +BioTFFxdqZNz884o1Y8Oh5+9QWa6g==
X-Google-Smtp-Source: ACHHUZ4riMrSDwUHA+k5LTF2kL3I4AgrIGl5wIGqX/SJgM1ZUWWEwLgxA67lhspp5qQqCuQi7nO/Xg==
X-Received: by 2002:a92:d90a:0:b0:331:4f70:a2b with SMTP id s10-20020a92d90a000000b003314f700a2bmr2557210iln.5.1686343910497;
        Fri, 09 Jun 2023 13:51:50 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id cu7-20020a05663848c700b004165ac64e0asm1169350jab.40.2023.06.09.13.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 13:51:49 -0700 (PDT)
Received: (nullmailer pid 2197051 invoked by uid 1000);
        Fri, 09 Jun 2023 20:51:47 -0000
Date:   Fri, 9 Jun 2023 14:51:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Brian Norris <computersforpeace@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        Liang Yang <liang.yang@amlogic.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>,
        Samuel Holland <samuel@sholland.org>,
        Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
        Xiangsheng Hou <xiangsheng.hou@mediatek.com>
Subject: Re: [PATCH v2 00/17] Prevent NAND chip unevaluated properties
Message-ID: <20230609205147.GA2186622-robh@kernel.org>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230606175246.190465-1-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 06, 2023 at 07:52:29PM +0200, Miquel Raynal wrote:
> As discussed with Krzysztof and Chris, it seems like each NAND
> controller binding should actually restrain the properties allowed in
> the NAND chip node with its own "unevaluatedProperties: false". This
> only works if we reference a yaml schema which contains all the possible
> properties *in the NAND chip node*. Indeed, the NAND controller yaml
> schema contains properties for the NAND chip which are not evaluated
> with this construction.
> 
> Link: https://lore.kernel.org/all/a23dd485-a3d9-e31f-be3e-0ab293fcfc4a@linaro.org/
> 
> While converting Marvell controller bindings, Chris explicitly pointed
> similar bindings which would also trigger errors when using
> "unevaluatedProperties: false" because of the problem mentioned above.
> 
> Here is an attempt at making this logic more robust:
> * All NAND chip properties which are specific to the raw NAND world are
>   moved into a raw-nand-chip.yaml file.
> * raw-nand-chip.yaml is referenced by all NAND controller bindings when
>   the NAND chip must be further constrained.
> * raw-nand-chip.yaml and spi-nand.yaml reference nand-chip.yaml.
> 
> These change made me realize the qcom,boot-partition property
> description was broken, and a few other descriptions needed small
> updates. Here is a batch of updates to fix all these.
> 
> Thanks,
> Miquèl
> 
> Miquel Raynal (17):
>   dt-bindings: mtd: Accept nand related node names
>   dt-bindings: mtd: Create a file for raw NAND chip properties
>   dt-bindings: mtd: Mark nand-ecc-placement deprecated
>   dt-bindings: mtd: Describe nand-ecc-mode
>   dt-bindings: mtd: qcom: Fix a property position
>   dt-bindings: mtd: qcom: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: ingenic: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: sunxi: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: meson: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: brcmnand: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: denali: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: intel: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: rockchip: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: stm32: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: mediatek: Reference raw-nand-chip.yaml
>   dt-bindings: mtd: mediatek: Prevent NAND chip unevaluated properties
>   dt-bindings: mtd: ti,am654: Prevent unevaluated properties
> 
>  .../mtd/allwinner,sun4i-a10-nand.yaml         |   5 +-
>  .../bindings/mtd/amlogic,meson-nand.yaml      |   3 +
>  .../bindings/mtd/brcm,brcmnand.yaml           |   3 +
>  .../devicetree/bindings/mtd/denali,nand.yaml  |   9 +-
>  .../devicetree/bindings/mtd/ingenic,nand.yaml |   4 +
>  .../bindings/mtd/intel,lgm-ebunand.yaml       |   5 +-
>  .../bindings/mtd/mediatek,mtk-nfc.yaml        |   3 +-
>  .../devicetree/bindings/mtd/mtd.yaml          |   2 +-
>  .../bindings/mtd/nand-controller.yaml         |  85 +-------------
>  .../devicetree/bindings/mtd/qcom,nandc.yaml   |  45 ++++---
>  .../bindings/mtd/raw-nand-chip.yaml           | 111 ++++++++++++++++++
>  .../mtd/rockchip,nand-controller.yaml         |   3 +
>  .../bindings/mtd/st,stm32-fmc2-nand.yaml      |   3 +
>  .../bindings/mtd/ti,am654-hbmc.yaml           |   2 +
>  14 files changed, 172 insertions(+), 111 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml

For the series:

Reviewed-by: Rob Herring <robh@kernel.org>
