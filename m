Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11C4264483D
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 16:44:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234612AbiLFPoj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 10:44:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234390AbiLFPoh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 10:44:37 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9D5323BE8
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 07:44:36 -0800 (PST)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 38F9E3D7;
        Tue,  6 Dec 2022 16:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1670341474;
        bh=k85/FyQKIAF6sQcWvkw9Yb7pvF/9cyawS4X4Y+zv0Mg=;
        h=From:To:Cc:Subject:Date:From;
        b=mpbxk/WUEO8FMns6YY9k5I9X3m4W68f1sWalJTK9B1J4Ws6y5RJG3t6suUQZmwS/4
         ltEwA9POh8JHwJDZ1cfKKGGcPbEHX0a5fcRqqKW44heyz3PI7ZIGt1iAr6zCDjdeG0
         QTDGwalhD654heW0PnHtYC2AzLT1fOBXKOluxCjU=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v5 0/3] Debix Model A board devicetree
Date:   Tue,  6 Dec 2022 15:44:11 +0000
Message-Id: <20221206154414.1461492-1-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello

This series adds a .dts file for the Polyhex Debix Model A board [1]
A binding for the vendor is also added.

[1] http://www.polyhex.net/product/embedded-motherboard/board/nxp.html?id=483

Thanks
Dan

Daniel Scally (3):
  dt-bindings: vendor-prefixes: Add Polyhex Technology Co.
  dt-bindings: arm: fsl: Enumerate Debix Model A Board
  arm64: dts: Add device tree for the Debix Model A Board

 .../devicetree/bindings/arm/fsl.yaml          |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8mp-debix-model-a.dts    | 509 ++++++++++++++++++
 4 files changed, 514 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts

-- 
2.34.1

