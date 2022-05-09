Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9C2C51FAF7
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 13:09:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232072AbiEILLx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 07:11:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232445AbiEILLY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 07:11:24 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68DC21498DD
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 04:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1652094436; x=1683630436;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Q4uOG2F8w1lAvLkDtMnP2jzgd4wA+OkMvW8BNsAVYBQ=;
  b=YM/B0ASqICX4z8QI8IRVrqQ4oQp5ejstT7N8LxN1hFQCKiCHB8R/gBW1
   4eZwNViLljRhh2Mt85fUGq4GDoQXEd2Z4u5wwJsXwq+rLAB/d6xEghUHX
   f1HTi5ePrLoecRvNj1KPuwUHaRALeT8A1I6X1ZJ026HeKP3MkvWtPlCjz
   UwfLHW7EDgKQdiuGjJeqC9cZClpBGHOavjCge5CosJT/NWWDEIcGi+wTk
   aXiHhwg3I314S94g/dbw0YwUjpwK96h60Xgu+Oq+G5ypuuT5rPd2X0Pud
   ZncRqSaCf2JBw0CKBA3r1FUzl2LdNXJzoM6illn+ZO1hUsqYH4xnhVsrQ
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,211,1647298800"; 
   d="scan'208";a="23751986"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 May 2022 13:07:14 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 09 May 2022 13:07:14 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 09 May 2022 13:07:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1652094434; x=1683630434;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Q4uOG2F8w1lAvLkDtMnP2jzgd4wA+OkMvW8BNsAVYBQ=;
  b=dDG1stgwQ2ehgRV8X4NqRvJEFf18aR+g8Swhb2yQ3fy4DEKlHo2kjm41
   KJhyEeCALoy3R+PAFTb7Op/uxZsnKBisEh0YBHtA5VMQoGfcFb6ZF4Eh5
   QfcRrDbvei+TyKBFXfScth6B6HQ115vAJfHENAzCEm+jDQGJVZurfkmZo
   ZZBljqMaV1mYbL6f5Iu2nJBFwLDMVDxMs3wXOebO/N++m9b3E2E19DhoW
   M4sgCwLCt8CSKtKKdi2CNnLtbbCFAG7hryNobG+fj2mphh45dtaA/Ij+u
   2mVn0/EG+ZISLxYqMapjygTag6/Wgp3mXoJoC05CkocYXOIDo0QE9Oj5d
   g==;
X-IronPort-AV: E=Sophos;i="5.91,211,1647298800"; 
   d="scan'208";a="23751985"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 May 2022 13:07:14 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8B8E8280070;
        Mon,  9 May 2022 13:07:14 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Jun Li <jun.li@nxp.com>
Subject: [PATCH 1/1] ARM: dts: imx7: Move hsic_phy power domain to HSIC PHY node
Date:   Mon,  9 May 2022 13:07:08 +0200
Message-Id: <20220509110708.2190558-1-alexander.stein@ew.tq-group.com>
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

Move the power domain to its actual user. This keeps the power domain
enabled even when the USB host is runtime suspended. This is necessary
to detect any downstream events, like device attach.

Suggested-by: Jun Li <jun.li@nxp.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This patch superseeds the initial patch from [1].

[1] https://lore.kernel.org/linux-arm-kernel/5566202.DvuYhMxLoT@steina-w/T/
 arch/arm/boot/dts/imx7s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 008e3da460f1..039eed79d2e7 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -120,6 +120,7 @@ usbphynop3: usbphynop3 {
 		compatible = "usb-nop-xceiv";
 		clocks = <&clks IMX7D_USB_HSIC_ROOT_CLK>;
 		clock-names = "main_clk";
+		power-domains = <&pgc_hsic_phy>;
 		#phy-cells = <0>;
 	};
 
@@ -1153,7 +1154,6 @@ usbh: usb@30b30000 {
 				compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
 				reg = <0x30b30000 0x200>;
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
-				power-domains = <&pgc_hsic_phy>;
 				clocks = <&clks IMX7D_USB_CTRL_CLK>;
 				fsl,usbphy = <&usbphynop3>;
 				fsl,usbmisc = <&usbmisc3 0>;
-- 
2.25.1

