Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC7665A9593
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 13:20:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233706AbiIALUt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 07:20:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233114AbiIALUs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 07:20:48 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5ECE1037E0
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 04:20:45 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1oTiFY-0006Ty-0j; Thu, 01 Sep 2022 13:20:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1oTiFV-003HxO-BR; Thu, 01 Sep 2022 13:20:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1oTiFW-007dXV-GB; Thu, 01 Sep 2022 13:20:42 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/3] arm64: dts: Add Innocom WB15-EVK support
Date:   Thu,  1 Sep 2022 13:20:37 +0200
Message-Id: <20220901112040.1471879-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Innocom WB15-EVK [1] board is a Eval base board for the WB15 SoM [2] which
is based on the NXP i.MX8MM. This series adds Innocom as a vendor prefix
and the necessary dts/dtsi files.

Sascha

[1] https://www.innocomm.com/product_inner.aspx?num=2233
[2] https://www.innocomm.com/product_inner.aspx?num=2232

Sascha Hauer (3):
  dt-bindings: vendor-prefixes: Add prefix for Innocom
  dt-bindings: arm: fsl: Add Innocom WB15 EVK
  arm64: dts: freescale: Add Innocom i.MX8MM based WB15 SoM and EVK

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8mm-innocom-wb15-evk.dts | 147 ++++++
 .../dts/freescale/imx8mm-innocom-wb15.dtsi    | 480 ++++++++++++++++++
 5 files changed, 631 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-innocom-wb15-evk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-innocom-wb15.dtsi

-- 
2.30.2

