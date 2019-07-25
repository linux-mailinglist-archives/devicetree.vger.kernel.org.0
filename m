Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 38B2375532
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 19:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729620AbfGYRM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 13:12:58 -0400
Received: from foss.arm.com ([217.140.110.172]:33226 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727530AbfGYRM6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Jul 2019 13:12:58 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7893C174E;
        Thu, 25 Jul 2019 10:12:57 -0700 (PDT)
Received: from e123572-lin.arm.com (e123572-lin.cambridge.arm.com [10.1.194.48])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 072A13F71A;
        Thu, 25 Jul 2019 10:12:55 -0700 (PDT)
From:   Kevin Brodsky <kevin.brodsky@arm.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Pawel Moll <pawel.moll@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Brian Starkey <brian.starkey@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Kevin Brodsky <kevin.brodsky@arm.com>,
        Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
Subject: [PATCH v2] arm64: dts: fast models: Remove clcd's max-memory-bandwidth
Date:   Thu, 25 Jul 2019 18:12:14 +0100
Message-Id: <20190725171215.71801-1-kevin.brodsky@arm.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is unclear why max-memory-bandwidth should be set for CLCD on the
fast model. Removing that property allows allocating and using 32bpp
buffers, which may be desirable on certain platforms such as
Android.

Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
---

Changes in v2:
- Remove the attribute completely instead of increasing its value. It is
  optional and there is no clear reason why it should be set at all.

 arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 8 --------
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 2 --
 2 files changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 687707020ec1..62ab0d54ff71 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -265,13 +265,5 @@
 				<0 0 42 &gic 0 0 GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
 				<0 0 43 &gic 0 0 GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
 				<0 0 44 &gic 0 0 GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-
-		motherboard {
-			iofpga@3,00000000 {
-				clcd@1f0000 {
-					max-memory-bandwidth = <130000000>; /* 16bpp @ 63.5MHz */
-				};
-			};
-		};
 	};
 };
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index 454cf6c44c49..03a7bf079c8f 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -188,8 +188,6 @@
 					interrupts = <14>;
 					clocks = <&v2m_oscclk1>, <&v2m_clk24mhz>;
 					clock-names = "clcdclk", "apb_pclk";
-					/* 800x600 16bpp @36MHz works fine */
-					max-memory-bandwidth = <54000000>;
 					memory-region = <&vram>;
 
 					port {
-- 
2.22.0

