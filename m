Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9B5B48F62C
	for <lists+devicetree@lfdr.de>; Sat, 15 Jan 2022 10:36:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231494AbiAOJgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 04:36:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231480AbiAOJgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 04:36:21 -0500
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FAF4C061574
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 01:36:20 -0800 (PST)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [80.241.60.245])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4JbY2V1fmvzQlBW;
        Sat, 15 Jan 2022 10:36:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1642239373;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=Ji1zixuudGwd0KFQ/Ox3LSNxpnb2w/YqY4LhAEAcapM=;
        b=aQcslm0SvP8RxgX/5WtFtwQ5CDhUqa4u2npXd0DbJocvpmqMwMipKcwBLjlEYKx+2U9OM/
        ceYHyMhOXFyFETNVzuqYSSzKC5ffXxp1MwRXxcj8ORFq3RG+JsVHMFU1wZSKciP+kCOdRw
        z4lIgzsBihg55ox7ARcTuH2UU0X0r5vghRhGUOtPqufQ9Iwl4lR51VI1WYStNG8BehPhRE
        8stuLcSDt6oo8+FKYNJZ9hvfP0kGZeQ4hJPwWwHBEG+zQBvYQ4QZh89q44eIZgPqnJqAbm
        kvNGUaHptrwc56l8+F8nH20pciY2msjaDgRxLmj5ggGnee1JowmHz72ZKA3PoQ==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: meson-axg: add missing reset-names property
Date:   Sat, 15 Jan 2022 10:35:56 +0100
Message-Id: <20220115093557.30498-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings amlogic,axg-fifo.txt mandates that reset-names is a required
property. Add it.

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
This is essentially a preparation for YAML conversion to fix the
warnings.

 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 3f5254eeb47b..b14175e2f1d6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1333,6 +1333,7 @@ toddr_a: audio-controller@100 {
 				interrupts = <GIC_SPI 84 IRQ_TYPE_EDGE_RISING>;
 				clocks = <&clkc_audio AUD_CLKID_TODDR_A>;
 				resets = <&arb AXG_ARB_TODDR_A>;
+				reset-names = "arb";
 				amlogic,fifo-depth = <512>;
 				status = "disabled";
 			};
@@ -1345,6 +1346,7 @@ toddr_b: audio-controller@140 {
 				interrupts = <GIC_SPI 85 IRQ_TYPE_EDGE_RISING>;
 				clocks = <&clkc_audio AUD_CLKID_TODDR_B>;
 				resets = <&arb AXG_ARB_TODDR_B>;
+				reset-names = "arb";
 				amlogic,fifo-depth = <256>;
 				status = "disabled";
 			};
@@ -1357,6 +1359,7 @@ toddr_c: audio-controller@180 {
 				interrupts = <GIC_SPI 86 IRQ_TYPE_EDGE_RISING>;
 				clocks = <&clkc_audio AUD_CLKID_TODDR_C>;
 				resets = <&arb AXG_ARB_TODDR_C>;
+				reset-names = "arb";
 				amlogic,fifo-depth = <256>;
 				status = "disabled";
 			};
@@ -1369,6 +1372,7 @@ frddr_a: audio-controller@1c0 {
 				interrupts = <GIC_SPI 88 IRQ_TYPE_EDGE_RISING>;
 				clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
 				resets = <&arb AXG_ARB_FRDDR_A>;
+				reset-names = "arb";
 				amlogic,fifo-depth = <512>;
 				status = "disabled";
 			};
@@ -1381,6 +1385,7 @@ frddr_b: audio-controller@200 {
 				interrupts = <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>;
 				clocks = <&clkc_audio AUD_CLKID_FRDDR_B>;
 				resets = <&arb AXG_ARB_FRDDR_B>;
+				reset-names = "arb";
 				amlogic,fifo-depth = <256>;
 				status = "disabled";
 			};
@@ -1393,6 +1398,7 @@ frddr_c: audio-controller@240 {
 				interrupts = <GIC_SPI 90 IRQ_TYPE_EDGE_RISING>;
 				clocks = <&clkc_audio AUD_CLKID_FRDDR_C>;
 				resets = <&arb AXG_ARB_FRDDR_C>;
+				reset-names = "arb";
 				amlogic,fifo-depth = <256>;
 				status = "disabled";
 			};
-- 
2.34.1

