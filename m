Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DC8743A58F
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 23:10:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231618AbhJYVNI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 17:13:08 -0400
Received: from mail.kernel.org ([198.145.29.99]:42500 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234851AbhJYVNH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 17:13:07 -0400
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0D322610A0;
        Mon, 25 Oct 2021 21:10:45 +0000 (UTC)
Received: from sofa.misterjones.org ([185.219.108.64] helo=wait-a-minute.lan)
        by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <maz@kernel.org>)
        id 1mf7Ex-001WA3-6A; Mon, 25 Oct 2021 22:10:43 +0100
From:   Marc Zyngier <maz@kernel.org>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Sven Peter <sven@svenpeter.dev>,
        Hector Martin <marcan@marcan.st>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        kernel-team@android.com
Subject: [PATCH 4/5] arm64: dts: apple: t8103: Add root port interrupt routing
Date:   Mon, 25 Oct 2021 22:10:17 +0100
Message-Id: <20211025211018.744363-5-maz@kernel.org>
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

Add the interrupt-map properties that are required for INTx
signalling.

Tested-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/boot/dts/apple/t8103.dtsi | 33 +++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/apple/t8103.dtsi b/arch/arm64/boot/dts/apple/t8103.dtsi
index ded82a734d11..fc8b2bb06ffe 100644
--- a/arch/arm64/boot/dts/apple/t8103.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103.dtsi
@@ -278,7 +278,7 @@ pcie0: pcie@690000000 {
 			pinctrl-0 = <&pcie_pins>;
 			pinctrl-names = "default";
 
-			pci@0,0 {
+			port00: pci@0,0 {
 				device_type = "pci";
 				reg = <0x0 0x0 0x0 0x0 0x0>;
 				reset-gpios = <&pinctrl_ap 152 0>;
@@ -287,9 +287,18 @@ pci@0,0 {
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges;
+
+				interrupt-controller;
+				#interrupt-cells = <1>;
+
+				interrupt-map-mask = <0 0 0 7>;
+				interrupt-map = <0 0 0 1 &port00 0 0 0 0>,
+						<0 0 0 2 &port00 0 0 0 1>,
+						<0 0 0 3 &port00 0 0 0 2>,
+						<0 0 0 4 &port00 0 0 0 3>;
 			};
 
-			pci@1,0 {
+			port01: pci@1,0 {
 				device_type = "pci";
 				reg = <0x800 0x0 0x0 0x0 0x0>;
 				reset-gpios = <&pinctrl_ap 153 0>;
@@ -298,9 +307,18 @@ pci@1,0 {
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges;
+
+				interrupt-controller;
+				#interrupt-cells = <1>;
+
+				interrupt-map-mask = <0 0 0 7>;
+				interrupt-map = <0 0 0 1 &port01 0 0 0 0>,
+						<0 0 0 2 &port01 0 0 0 1>,
+						<0 0 0 3 &port01 0 0 0 2>,
+						<0 0 0 4 &port01 0 0 0 3>;
 			};
 
-			pci@2,0 {
+			port02: pci@2,0 {
 				device_type = "pci";
 				reg = <0x1000 0x0 0x0 0x0 0x0>;
 				reset-gpios = <&pinctrl_ap 33 0>;
@@ -309,6 +327,15 @@ pci@2,0 {
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges;
+
+				interrupt-controller;
+				#interrupt-cells = <1>;
+
+				interrupt-map-mask = <0 0 0 7>;
+				interrupt-map = <0 0 0 1 &port02 0 0 0 0>,
+						<0 0 0 2 &port02 0 0 0 1>,
+						<0 0 0 3 &port02 0 0 0 2>,
+						<0 0 0 4 &port02 0 0 0 3>;
 			};
 		};
 	};
-- 
2.30.2

