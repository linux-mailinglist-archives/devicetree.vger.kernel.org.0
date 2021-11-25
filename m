Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E5B045D868
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 11:45:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354589AbhKYKsb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 05:48:31 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:36951 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1354693AbhKYKq2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Nov 2021 05:46:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637836998; x=1669372998;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YoItCbwo7ZkvCEKwkSDRzrwc6XeH0u4uDSjqXGZH0Zo=;
  b=gU28t0uFk9fPlNnQNu6DouGaAw1qaXGCM8mDJ3jjAPEx1y3jQPUNvCTF
   ou3SFJ1ta35QjTqijBJLPUMx04zgEHdZreo/oAuyPmXZ8cI5OH0YBHrjY
   05J309MUdMMMRcrhc+Tv0HSeUd9WW7QUy1rE0I9VFxUJkLcsGk50MXUn2
   yfa2ax8Lldh7cODps7KFoL/L6dMJjSSebMhAKwUvsF/C0Lb+SXUAjj9Zl
   kwkjpx+N2FdMTLP8rXZe3OjS4s35x9jX4diAwqfKURsXCWrfthAhKPWEM
   HnIWxlV4beMcNGy9ulzFie1AtJyK8IojrmFdvSeJ8WWDcpzTzQsV2WKES
   g==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631570400"; 
   d="scan'208";a="20673124"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Nov 2021 11:41:14 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 25 Nov 2021 11:41:14 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 25 Nov 2021 11:41:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637836874; x=1669372874;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YoItCbwo7ZkvCEKwkSDRzrwc6XeH0u4uDSjqXGZH0Zo=;
  b=NFdx/AY7WPslS7XTwVklGs8B6SdiawZfty3JCgosWNiHkDJhk0nXO3LI
   JiG6Vcb3K5TIQ6PBWCspdQLhsxpbEDsOt5R9bHHCrJUUqT51sIf3kkPiV
   8PCSjxz6j9uzyDzpELRlNVRp6WZ6PGix/NGtu6M21Qe1a1HlWcInvF5k5
   hiSZ4ErS8VfSKn56piUtmkl4LdEfPWBM8wNdPpnQWlfGOGkegfQ282yBR
   dk0W0+IuyuwnuFhqmUIvJ/RkWfdC4b6kU+1F43lNgZ0Yx5yK9JsAPm+Pv
   HiKwYMGmysg6CmMxW7jOnxVqLsj5wI0AGjO+H9sXM85LMO34Lai+ARnJj
   g==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631570400"; 
   d="scan'208";a="20673123"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Nov 2021 11:41:14 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F1500280078;
        Thu, 25 Nov 2021 11:41:13 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [RFC PATCH 2/2] arm64: dts: imx8mp: Add memory for USB3 glue layer to usb3_phy nodes
Date:   Thu, 25 Nov 2021 11:41:04 +0100
Message-Id: <20211125104104.1416523-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211125104104.1416523-1-alexander.stein@ew.tq-group.com>
References: <20211125104104.1416523-1-alexander.stein@ew.tq-group.com>
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
index 977783784342..143119789bcf 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -905,7 +905,8 @@ ddr-pmu@3d800000 {
 
 		usb3_phy0: usb-phy@381f0040 {
 			compatible = "fsl,imx8mp-usb-phy";
-			reg = <0x381f0040 0x40>;
+			reg = <0x381f0040 0x40>,
+			      <0x381f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
@@ -947,7 +948,8 @@ usb_dwc3_0: usb@38100000 {
 
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

