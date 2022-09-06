Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C3155ADFE5
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 08:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238416AbiIFGgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 02:36:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238386AbiIFGgR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 02:36:17 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3521D1EECF
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 23:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662446176; x=1693982176;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=CmedXSjI0+0OMuhQHHZXseyfofTfY327dquI0mJa6zQ=;
  b=fGGFH2v2pneqFMgKYBa0aI5dlwSj2Y/ye53USr16jGT7PksUrA3bpQd3
   F2z05zqUGF7LyIqGXBtGtXc2tbLmzgeYT7wZNM4969xu3oQua44eZXj1a
   /vM1t80U8KWObEVyF7lYvObgWTSqT35fm8c+I4/ny1Oh4SIq0nD9dztB4
   8DcHzXRndnmmPn0vkLwYZ1xbLyh6gaKMRMc0OSChaonveFq/LU0/y3EYp
   pqAX9Xx6f13JjuZqRBU9jqC8PjkMeiOqbmDaasU6EluanUCdzklZoiYri
   zCRb46c/grZ/0mfmF/E/dtghOmwbST9pR0cku/I0GRjrusVtGk0voF1It
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,293,1654552800"; 
   d="scan'208";a="26003225"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Sep 2022 08:36:14 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Sep 2022 08:36:14 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Sep 2022 08:36:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662446174; x=1693982174;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=CmedXSjI0+0OMuhQHHZXseyfofTfY327dquI0mJa6zQ=;
  b=fekT1bkggWbCg/OqOFsCapA4Q7zZmkWubCo2wAYrfO9Eyow616gzHtyj
   FFgbn4J6dYDWDtH2c5iTI5haX6X5TbGcRn+p2E/AucK6jlsJ5+7UyF3Lw
   UsQQrTrjPyVci+DxPvvPKgYU3AqKmbgHUo32/XuvwWzaD5wHWIFTL6TR2
   nPrIs91PNQFEHxJ9wqFsoT39JBoVNLLZUC9MG8Z0lc5PoVe+o0Ee03e+r
   ZE7PR0e1FvRAajR4y6HN2uJUP/WuWKRz9uwlhZy2R0w7hWMtOUzTgfj/O
   gVEKK6vWErNuM6Ng3jXp123ik9RjVC2tr5dHHw/WvU3fdeSppiw9hAOe9
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,293,1654552800"; 
   d="scan'208";a="26003224"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Sep 2022 08:36:14 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 178E5280056;
        Tue,  6 Sep 2022 08:36:14 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] arm64: dts: imx8mp-tqma8mpql-mba8mpxl: add missing pinctrl for RTC alarm
Date:   Tue,  6 Sep 2022 08:36:06 +0200
Message-Id: <20220906063606.574709-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Although the RTC is on the module, the RTC_EVENT# signal is connected
on the mainboard. Already set by bootloader, but make it explicit in Linux
as well.

Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
Changes in v2:
* Small fix in commit message and added board to subject
* Added Fabio's R-b

 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 1838232d3d60..89443bc36b1b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -517,6 +517,8 @@ &i2c6 {
 
 &pcf85063 {
 	/* RTC_EVENT# is connected on MBa8MPxL */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcf85063>;
 	interrupt-parent = <&gpio4>;
 	interrupts = <28 IRQ_TYPE_EDGE_FALLING>;
 };
@@ -852,6 +854,10 @@ pinctrl_lvdsdisplay: lvdsdisplaygrp {
 		fsl,pins = <MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20		0x10>; /* Power enable */
 	};
 
+	pinctrl_pcf85063: pcf85063grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28		0x80>;
+	};
+
 	/* LVDS Backlight */
 	pinctrl_pwm2: pwm2grp {
 		fsl,pins = <MX8MP_IOMUXC_SAI5_RXD0__PWM2_OUT		0x14>;
-- 
2.25.1

