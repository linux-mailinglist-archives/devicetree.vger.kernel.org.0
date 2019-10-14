Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CBA0DD6BA0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 00:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731781AbfJNWTV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 18:19:21 -0400
Received: from foss.arm.com ([217.140.110.172]:53498 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731771AbfJNWTV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Oct 2019 18:19:21 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC5101000;
        Mon, 14 Oct 2019 15:19:20 -0700 (PDT)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 166393F68E;
        Mon, 14 Oct 2019 15:19:19 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add RK3328 audio pipelines
Date:   Mon, 14 Oct 2019 23:19:05 +0100
Message-Id: <a09c8d795e7a66fb7bc47af2b6580f6e8dbec91e.1571090991.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
References: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The audio pipelines for HDMI and the analog codec are internal to the
SoC, so it makes sense to describe them at that level such that boards
need only enable the respective nodes for outputs they implement.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 31cc1541f1f5..91306ebed4da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -142,6 +142,22 @@
 		};
 	};
 
+	analog_sound: analog-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "Analog";
+		status = "disabled";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&codec>;
+		};
+	};
+
 	arm-pmu {
 		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
@@ -156,6 +172,22 @@
 		ports = <&vop_out>;
 	};
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <128>;
+		simple-audio-card,name = "HDMI";
+		status = "disabled";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0", "arm,psci-0.2";
 		method = "smc";
-- 
2.17.1

