Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22BC5724A96
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:53:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233778AbjFFRw7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:52:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233040AbjFFRw6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:52:58 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE911E54
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:52:56 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686073975;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=Ed7HST+fb6/FcGdKVdCSMGnOVxlQQtUu+Y5PDlptoSU=;
        b=WgI1ldBdO0U+IrO79NLdyHrhqIn1l8o4TkbvbeCvfN3TAm+9yCGlRmKiBbBchmAB1T2SKh
        KjhYX2zq2Ks8FhWvLVirabewR/sCZc72k4dLxu9HehzuybHBKUuDDoE6zCRO2mXyaRFrrD
        WbwRTRvEvzT55kWVZx/Bm5cioL11FtBAmJdlpIjs8CJsVsyOLZjogBxoHc36OYaeabMTzQ
        VBxzxEd/YdGU3p8QNgJ3TU3Vg+8zhpK/NnBR/9kqh1Spej2Lh/L86MJCQ+eekjxMWH3GhD
        9K55I2eiSfXkLX7Bii5cacHLYer5SWwJ8FxuOxNKBBi84AlcaBKI0C9dYIUpXA==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id DF04A1C0005;
        Tue,  6 Jun 2023 17:52:46 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
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
Subject: [PATCH v2 00/17] Prevent NAND chip unevaluated properties
Date:   Tue,  6 Jun 2023 19:52:29 +0200
Message-Id: <20230606175246.190465-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As discussed with Krzysztof and Chris, it seems like each NAND
controller binding should actually restrain the properties allowed in
the NAND chip node with its own "unevaluatedProperties: false". This
only works if we reference a yaml schema which contains all the possible
properties *in the NAND chip node*. Indeed, the NAND controller yaml
schema contains properties for the NAND chip which are not evaluated
with this construction.

Link: https://lore.kernel.org/all/a23dd485-a3d9-e31f-be3e-0ab293fcfc4a@linaro.org/

While converting Marvell controller bindings, Chris explicitly pointed
similar bindings which would also trigger errors when using
"unevaluatedProperties: false" because of the problem mentioned above.

Here is an attempt at making this logic more robust:
* All NAND chip properties which are specific to the raw NAND world are
  moved into a raw-nand-chip.yaml file.
* raw-nand-chip.yaml is referenced by all NAND controller bindings when
  the NAND chip must be further constrained.
* raw-nand-chip.yaml and spi-nand.yaml reference nand-chip.yaml.

These change made me realize the qcom,boot-partition property
description was broken, and a few other descriptions needed small
updates. Here is a batch of updates to fix all these.

Thanks,
Miquèl

Miquel Raynal (17):
  dt-bindings: mtd: Accept nand related node names
  dt-bindings: mtd: Create a file for raw NAND chip properties
  dt-bindings: mtd: Mark nand-ecc-placement deprecated
  dt-bindings: mtd: Describe nand-ecc-mode
  dt-bindings: mtd: qcom: Fix a property position
  dt-bindings: mtd: qcom: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: ingenic: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: sunxi: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: meson: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: brcmnand: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: denali: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: intel: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: rockchip: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: stm32: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: mediatek: Reference raw-nand-chip.yaml
  dt-bindings: mtd: mediatek: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: ti,am654: Prevent unevaluated properties

 .../mtd/allwinner,sun4i-a10-nand.yaml         |   5 +-
 .../bindings/mtd/amlogic,meson-nand.yaml      |   3 +
 .../bindings/mtd/brcm,brcmnand.yaml           |   3 +
 .../devicetree/bindings/mtd/denali,nand.yaml  |   9 +-
 .../devicetree/bindings/mtd/ingenic,nand.yaml |   4 +
 .../bindings/mtd/intel,lgm-ebunand.yaml       |   5 +-
 .../bindings/mtd/mediatek,mtk-nfc.yaml        |   3 +-
 .../devicetree/bindings/mtd/mtd.yaml          |   2 +-
 .../bindings/mtd/nand-controller.yaml         |  85 +-------------
 .../devicetree/bindings/mtd/qcom,nandc.yaml   |  45 ++++---
 .../bindings/mtd/raw-nand-chip.yaml           | 111 ++++++++++++++++++
 .../mtd/rockchip,nand-controller.yaml         |   3 +
 .../bindings/mtd/st,stm32-fmc2-nand.yaml      |   3 +
 .../bindings/mtd/ti,am654-hbmc.yaml           |   2 +
 14 files changed, 172 insertions(+), 111 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml

-- 
2.34.1

