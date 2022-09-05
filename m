Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D2A85ACCBF
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 09:29:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235751AbiIEH2P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 03:28:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237397AbiIEH12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 03:27:28 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A2D240E0D
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 00:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662362763; x=1693898763;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=VyVPtdzosO5R/yj8ODHSrQXME/Q0MEUGKSnZoKNZkRQ=;
  b=Y2ah7ADRVohWeEKI1seFn3j4vYfBZCTTM8QxTaxapSMVk/SlzbksYYSw
   jOi9Gb8aiwYrRnScEyvVta4txfDx/I5oTRlEWezN+iw3QlI+DryHuh7dU
   evSXrZ44SHLAcCY23d53iS+AOZM/H3YKgJhfI2FPyF34jnMRBpu06+L/B
   /I9nCmLhvft42FhEFbWockq2xsEw2pxN3SwGWbrbVgfmWRvTJFX8QBEG6
   kKPsMip+NEnv5mQfj9IUix6YzZkPuxzitxBjOI0SyppNd8zqw4Q8I78tV
   tLvk7s5cc7uBdtIbOn90VYeCoJ+VQIHlGgTaPDMbzBOkRvgJc+b3ZTbDm
   g==;
X-IronPort-AV: E=Sophos;i="5.93,290,1654552800"; 
   d="scan'208";a="25980013"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 05 Sep 2022 09:26:00 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 05 Sep 2022 09:25:59 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 05 Sep 2022 09:25:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1662362760; x=1693898760;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=VyVPtdzosO5R/yj8ODHSrQXME/Q0MEUGKSnZoKNZkRQ=;
  b=FUmZVstnuzygdSgmL6rbVxJgUiKf35KjKK8qpqZSljkyh0GGywTDrMst
   8LlDbGEnSzNhT+eAJmjI0dEkTAG8jwuPk67DfI8sdJCgi2b5y5WlaUfdh
   C2gTYr3OsbvPnZvtDhYO0K9Tbib1KoMjxbtuDOjGOniiJt6YgpJPLMyJS
   A3qimV2TklqdHgiaJrbUhe+s96X+QG1wgK1pWcYfABYgCYrhIreCIYAHZ
   CZZ+AFP4vSqHrBZHvXZi+DCDCnWwSVKOchTf35o3cIEDkweAHCz1Yk5xO
   d4xZepHw7g3AqizgyNs0T/fMWzEsQltekqonanuudA9zZqWRdWzymN7HL
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,290,1654552800"; 
   d="scan'208";a="25980012"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 05 Sep 2022 09:26:00 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5980D280056;
        Mon,  5 Sep 2022 09:25:59 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mp: add missing pinctrl for RTC alarm
Date:   Mon,  5 Sep 2022 09:25:53 +0200
Message-Id: <20220905072553.196974-1-alexander.stein@ew.tq-group.com>
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
on the mainboard. Already set by bootloader, but make explicit in Linux
as well.

Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
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

