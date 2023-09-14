Return-Path: <devicetree+bounces-165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B2B7A0011
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 248BEB20D4C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1558DEAD0;
	Thu, 14 Sep 2023 09:30:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08287224D3
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:30:50 +0000 (UTC)
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01F8ECC7
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 02:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1694683846; x=1697275846;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BikrMtESuNp+DgxwHDrljdpsjzQ302FVUhgX7muuOUk=;
	b=lpkXwOUT0ck26Q2lbH75Gdhzvt+BV2lyGyqcC6WEEGpNfk2Yi7tAk2i8kJYN2YCR
	Hs62PkMQrQ5ot15wAwoMXnvQNV7sMJzvJkHCHbbg/tKuQFqBU+4q1H88ogyTQHeJ
	V+by2xr+dXJztt4bJGsLHlKOQTwRCKB2rFJp1FMGK0g=;
X-AuditID: ac14000a-6e25770000001e37-f1-6502d2c626ef
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B9.F2.07735.6C2D2056; Thu, 14 Sep 2023 11:30:46 +0200 (CEST)
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Thu, 14 Sep
 2023 11:30:46 +0200
From: Wadim Egorov <w.egorov@phytec.de>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <upstream@lists.phytec.de>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: ti: phycore-am64: Add RTC interrupt pin
Date: Thu, 14 Sep 2023 11:30:27 +0200
Message-ID: <20230914093027.3901602-1-w.egorov@phytec.de>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.25.0.11]
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPLMWRmVeSWpSXmKPExsWyRpKBR/fYJaZUg9ZFShZr9p5jsph/5Byr
	xfLPs9kt+l48ZLbY9Pgaq8XlXXPYLN78OMtk0br3CLtF9zt1i/9nP7A7cHlsWtXJ5nHn2h42
	j81L6j36u1tYPY7f2M7k8XmTXABbFJdNSmpOZllqkb5dAlfGiXWn2QvecFbcPPeQvYGxj6OL
	kZNDQsBE4uXRTqYuRi4OIYElTBLn19xghXCeMErcmXCXDaSKTUBd4s6Gb2AJEYFuRomTB5Yx
	gzjMAm2MEof2rmEEqRIWcJFY9fYNK4jNIqAqceH3axYQm1fAUuLz01NsEPvkJWZe+s4OEReU
	ODnzCVgNM1C8eetsZghbQuLgixdgthBQ/MWl5SwwvdPOvWaGsEMljmxazTSBUWAWklGzkIya
	hWTUAkbmVYxCuZnJ2alFmdl6BRmVJanJeimpmxhBkSDCwLWDsW+OxyFGJg7GQ4wSHMxKIrxs
	tkypQrwpiZVVqUX58UWlOanFhxilOViUxHnv9zAlCgmkJ5akZqemFqQWwWSZODilGhitpIKv
	lzAErJdyeXFTJPrhhM0lBSeNPXZM8FT35wxa4dvMe9NturTfJN9zej8v3/At5V8ZkSl/wL+O
	8UxwdEz3HKUuZQ0lvQyR0zMF/9k+tsz738Q968XMrM1OVfZ9hYdCuRsXPD0gJMSz4iTLXNfn
	tXVWB/+90lv4Xp5Z5dXc7+ZZUwq/pyixFGckGmoxFxUnAgDh8L4rcgIAAA==

Wth commit 16b26f602758 ("rtc: rv3028: Use IRQ flags obtained from device
tree if available") we can now use the interrupt pin of the RTC.
Let's add interrupt pin definitions to the SoM RTC.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
index 1c2c8f0daca9..f87f09d83c95 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
@@ -126,6 +126,12 @@ AM64X_IOPAD(0x0028, PIN_INPUT, 0)	/* (M17) OSPI0_D7 */
 			AM64X_IOPAD(0x002c, PIN_OUTPUT, 0)	/* (L19) OSPI0_CSn0 */
 		>;
 	};
+
+	rtc_pins_default: rtc-defaults-pins {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0278, PIN_INPUT, 7)	/* (C19) EXTINTn.GPIO1_70 */
+		>;
+	};
 };
 
 &cpsw3g {
@@ -177,6 +183,11 @@ eeprom@50 {
 	i2c_som_rtc: rtc@52 {
 		compatible = "microcrystal,rv3028";
 		reg = <0x52>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtc_pins_default>;
+		interrupt-parent = <&main_gpio1>;
+		interrupts = <70 IRQ_TYPE_EDGE_FALLING>;
+		wakeup-source;
 	};
 };
 
-- 
2.25.1


