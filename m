Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9B9033CF46
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 09:07:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbhCPIHL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 04:07:11 -0400
Received: from Galois.linutronix.de ([193.142.43.55]:40472 "EHLO
        galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234099AbhCPIHF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 04:07:05 -0400
From:   Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1615882024;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=198ieZWxanXzo3MI5NPBYscFn1y4OHFktIS2kgql4S4=;
        b=o/Z+3OWO8kg/LVbMlEGoDRyYI4UHYdH6oX/gUZq8/xRO6n/rMZ5rEiOCdq85/OZQnNlpEr
        Kk4SjyHjn2Qk9A6mC37Tb+Byqw7Zjqh5Dx+RSnWdXrxe+B6J/CwyW5Q2Gos5jXFGptuxcK
        VLPtMXDWhcx05GlSZlCIOVxfLRhdtge/Pr3oFoWy848jtD1aqFTwtN0Ncmjqgy+aqdCnPp
        Rns6e56hH4WXBjFGXxohiPK6UWyJx6FZGTWzSfbNkfxfttmUJbWaMugyreTD0FSkvLVCxZ
        9qirw2QnTfgehaNkqT7wp37a6wupPQkBoczpHJtWxMKI21TDeuvASeASx5pkCA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1615882024;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=198ieZWxanXzo3MI5NPBYscFn1y4OHFktIS2kgql4S4=;
        b=ySLL3EPN3xVdgSM8NIirnqA5E8Yba7rtaOX1cKM4+gEMQfzwsc90/lYYqyP9ID9nUjP/hc
        q4vELQeNVw+JwXBQ==
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Kurt Kanzenbach <kurt@linutronix.de>
Subject: [PATCH] ARM: dts: stm32: Add PTP clock to Ethernet controller
Date:   Tue, 16 Mar 2021 09:06:44 +0100
Message-Id: <20210316080644.19809-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the PTP clock to the Ethernet controller. Otherwise, the driver uses the
main clock to derive the PTP frequency which is not necessarily the correct one.

Tested with linuxptp on Olimex STMP1-OLinuXino-LIME2.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 3c75abacb374..d1f596ea2fd5 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1421,11 +1421,13 @@
 				      "mac-clk-tx",
 				      "mac-clk-rx",
 				      "eth-ck",
+				      "ptp_ref",
 				      "ethstp";
 			clocks = <&rcc ETHMAC>,
 				 <&rcc ETHTX>,
 				 <&rcc ETHRX>,
 				 <&rcc ETHCK_K>,
+				 <&rcc ETHPTP_K>,
 				 <&rcc ETHSTP>;
 			st,syscon = <&syscfg 0x4>;
 			snps,mixed-burst;
-- 
2.20.1

