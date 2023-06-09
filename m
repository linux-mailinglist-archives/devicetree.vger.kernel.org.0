Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09545729D2B
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:43:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241346AbjFIOnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:43:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241306AbjFIOnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:43:32 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C12B326B2
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:43:30 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686321808;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=DUIz3aLVLXA7yYm5NV5lusG5/sWM+yqqjnapeENpyF0=;
        b=HmO5VCWuCarFn5s7LixcHF4e9f24+YpPsFGKajM95Xr85+Cbi+qLw4zPu2mhZ476g5IBze
        2g1MUvYUKREUMrbcYIVCg5b106RhD5M4WCeGIOGrmR6L0OktgK+Mg3HL5YYU/vpsr49hMU
        MRrE/tvrU7C7dMvraBVJN/59Xj81a4WsOCMrXdkQRiH28Ba8l5EfY2F6NDBCxOXJIvd1e7
        B4C2Hj+rN4XqlGmycu7BAe+B9+9ZnRVKtx38R+BI3BFJx6gMMgTmConHGTtMVVTf71bwEa
        DvjxbxMK3RvVC1ELc89KQ/YLoj5f5tRi3mLOfQC55S5iU2I1DpPNrCKdWSzgUQ==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 09617FF808;
        Fri,  9 Jun 2023 14:43:25 +0000 (UTC)
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
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 0/2] mtd: spi-nor: Support for another sst flash
Date:   Fri,  9 Jun 2023 16:43:22 +0200
Message-Id: <20230609144324.850617-1-miquel.raynal@bootlin.com>
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

Hello Tudor,

Here are a couple of patches adding support for the sst26vf032b spi-nor,
nothing specific here. I hope I ran all the required tests correctly,
otherwise let me know.

Cheers,
Miquèl

Miquel Raynal (2):
  dt-bindings: mtd: spi-nor: Document sst26vf0xxb flash series
  mtd: spi-nor: Add support for sst26vf032b flash

 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 2 +-
 drivers/mtd/spi-nor/sst.c                                | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

-- 
2.34.1

