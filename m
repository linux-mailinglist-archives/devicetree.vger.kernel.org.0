Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 249E3723F7D
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 12:31:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236429AbjFFKbJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 06:31:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236735AbjFFKbD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 06:31:03 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F8AAE8
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 03:31:02 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686047461;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=OK5WHjbNiB9y+jsDV+19GZyajpKtnZ338156rkAkncQ=;
        b=dhXFICz4CZXtaI+/G3Ms7YPV+0FUNLn65bPJnNtYr3ZSNwnO5hDZu9J5TtK30c9efvVyYh
        eeweqdQ+z27R48lL9q42QqseXFBBIfk2YhM6pcHPSH+TVE5YgTh4EUTa6GHKd95MuRxWSn
        rcEqrC9OwcM/KpB4Xp2/4iyJQbte45zKAYNbdoeTAcX29Cg3Am8FuqPVN7axpdhq0Jc999
        tCS9HIyX2zGUIgPq3QTGDka2P8tmGb669xmiBQ88FfmavkxASUVmAhHEkEOpQapf59uqzT
        tudPPLa5e0SNTEXN2osJoqOMfk5mN9Pmg+4siAwU+jbOGgrcWLlvhu4Khs5Uig==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2B10CFF806;
        Tue,  6 Jun 2023 10:30:57 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 0/3] Fix a couple of missing unevaluated properties
Date:   Tue,  6 Jun 2023 12:30:54 +0200
Message-Id: <20230606103057.137711-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As discussed with Krzysztof and Chris, it seems like each NAND
controller binding should actually explicitely list all the allowed
properties in a schema and use "unevaluatedProperties: false" in both
the NAND controller and the NAND chip sections. While this restriction
always applied on the controller side, this was not enforced on the
chips side AFAIR.

Link: https://lore.kernel.org/all/a23dd485-a3d9-e31f-be3e-0ab293fcfc4a@linaro.org/

While converting Marvell controller bindings, Chris explicitely pointed
similar bindings which would also trigger errors when using
"unevaluatedProperties: false" because of the reg/partitions/etc
properties not being described. Here is an attempt at making these more
precise and robust.

These change made me realize the qcom,boot-partition property
description was broken, so here is a fix for it.

Thanks,
Miquèl

Miquel Raynal (3):
  dt-bindings: mtd: qcom: Fix a property position
  dt-bindings: mtd: qcom: Prevent NAND chip unevaluated properties
  dt-bindings: mtd: ingenic: Prevent NAND chip unevaluated properties

 .../devicetree/bindings/mtd/ingenic,nand.yaml | 11 +++++
 .../devicetree/bindings/mtd/qcom,nandc.yaml   | 47 ++++++++++++-------
 2 files changed, 42 insertions(+), 16 deletions(-)

-- 
2.34.1

