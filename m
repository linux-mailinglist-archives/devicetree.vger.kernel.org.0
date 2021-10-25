Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4B6143A590
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 23:10:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234369AbhJYVNJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 17:13:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:42516 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234890AbhJYVNH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 17:13:07 -0400
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 42320610A4;
        Mon, 25 Oct 2021 21:10:45 +0000 (UTC)
Received: from sofa.misterjones.org ([185.219.108.64] helo=wait-a-minute.lan)
        by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <maz@kernel.org>)
        id 1mf7Ex-001WA3-Ew; Mon, 25 Oct 2021 22:10:43 +0100
From:   Marc Zyngier <maz@kernel.org>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Sven Peter <sven@svenpeter.dev>,
        Hector Martin <marcan@marcan.st>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        kernel-team@android.com
Subject: [PATCH 5/5] arm64: dts: apple: j274: Expose PCI node for the Ethernet MAC address
Date:   Mon, 25 Oct 2021 22:10:18 +0100
Message-Id: <20211025211018.744363-6-maz@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211025211018.744363-1-maz@kernel.org>
References: <20211025211018.744363-1-maz@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kettenis@openbsd.org, sven@svenpeter.dev, marcan@marcan.st, alyssa@rosenzweig.io, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

At the moment, all the Minis running Linux have the same MAC
address (00:10:18:00:00:00), which is a bit annoying.

Expose the PCI node corresponding to the Ethernet device, and
declare a 'local-mac-address' property. The bootloader will update
it (m1n1 already has the required feature). And if it doesn't, then
the default value is already present in the DT.

This relies on forcing the bus number for each port so that the
endpoints connected to them are correctly numbered (and keeps dtc
quiet).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/boot/dts/apple/t8103-j274.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8103-j274.dts b/arch/arm64/boot/dts/apple/t8103-j274.dts
index e0f6775b9878..33a80f9501dc 100644
--- a/arch/arm64/boot/dts/apple/t8103-j274.dts
+++ b/arch/arm64/boot/dts/apple/t8103-j274.dts
@@ -17,6 +17,7 @@ / {
 
 	aliases {
 		serial0 = &serial0;
+		ethernet0 = &ethernet0;
 	};
 
 	chosen {
@@ -43,3 +44,25 @@ memory@800000000 {
 &serial0 {
 	status = "okay";
 };
+
+/*
+ * Force the bus number assignments so that we can declare some of the
+ * on-board devices and properties that are populated by the bootloader
+ * (such as MAC addresses).
+ */
+&port00 {
+	bus-range = <1 1>;
+};
+
+&port01 {
+	bus-range = <2 2>;
+};
+
+&port02 {
+	bus-range = <3 3>;
+	ethernet0: pci@0,0 {
+		reg = <0x30000 0x0 0x0 0x0 0x0>;
+		/* To be filled by the loader */
+		local-mac-address = [00 10 18 00 00 00];
+	};
+};
-- 
2.30.2

