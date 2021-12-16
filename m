Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63C154776A7
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 17:05:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238796AbhLPQFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 11:05:53 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5073 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238792AbhLPQFw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Dec 2021 11:05:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639670752; x=1671206752;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cONz2nOUtRuhs7JANm+jEmUdj18wu7MXLwm+z6MjMLs=;
  b=F0XHltG4sSxBkq89M5ZzOdi8WH073kiAsoLfj44OfrMuxV9IbHVSTjeA
   /3fAx3clEFyEF6PpWHTH21DqRF3Ojq+mSS8MfucaKn0Xbl+QRxR5U90x6
   qfOmqQvNRrFomBXrFYfWStuwjvXDU7dwiIariF08eTFaZD+yBFAcU8C23
   0NO4hwDh9JuNP4Cbg6cBqJrs6pGw3Z+ELzagfvGVst0zif1SB3rz4+7Sq
   EpzDxHm/Dpzs3o6/wEr8BvFBZZkxiALMuwVPZ1yPX68+3zjDP6rP1S5Te
   PluUynPuowiRobm6dn8l9pPkCAqB2c5tFfCNlzcBHyHZuN4G5IXkNJJ/a
   g==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; 
   d="scan'208";a="21103123"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Dec 2021 17:05:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Dec 2021 17:05:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639670750; x=1671206750;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cONz2nOUtRuhs7JANm+jEmUdj18wu7MXLwm+z6MjMLs=;
  b=kEkoPAaiwWtLDz7ayQKA6MTMY4Pjy2JaQu6WAj1GMCvTwZamvQqEFn8q
   zO7DmdYVdzWsbb7kAOfeGnUECmDDfDuaGEpxWxia+qEyGtYLoD1d5NVnb
   n0blui9/RnXB/C6ZgoXN/4Qim8J5bj4WCpl3iluvBEgGOfRZajfzdvOck
   53Yb85qqe4uyG1XgyoWpustYxjQZ9qEreDo4IuD1nvopddSCJ26lx7t54
   PW5mfFax3IyyR3eXzswersF+WO7kehwXuGrELG2okFbVrdUe8F8SCSXDm
   HHqTVk6PE3RtauordAQdMjIcqV9zaB62jEBmU4m/1Vn/oQIF+uAjX9v0F
   w==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; 
   d="scan'208";a="21103122"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3F909280075;
        Thu, 16 Dec 2021 17:05:50 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] arm64: dts: imx8mp: Add memory for USB3 glue layer to usb3_phy nodes
Date:   Thu, 16 Dec 2021 17:05:41 +0100
Message-Id: <20211216160541.544974-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The USB3 glue layer has 2 areas in the register set, see RM Rev.1
section 11.2.5.2.1 GLUE_usb3 memory map:
* USB3 control/status
* PHY control/status

Provide the memory area to the usb3_phy nodes for accessing the features
in the USB3 control area.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6b840c05dd77..4958142da1e4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -910,7 +910,8 @@ ddr-pmu@3d800000 {
 
 		usb3_phy0: usb-phy@381f0040 {
 			compatible = "fsl,imx8mp-usb-phy";
-			reg = <0x381f0040 0x40>;
+			reg = <0x381f0040 0x40>,
+			      <0x381f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
@@ -952,7 +953,8 @@ usb_dwc3_0: usb@38100000 {
 
 		usb3_phy1: usb-phy@382f0040 {
 			compatible = "fsl,imx8mp-usb-phy";
-			reg = <0x382f0040 0x40>;
+			reg = <0x382f0040 0x40>,
+			      <0x382f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
-- 
2.25.1

