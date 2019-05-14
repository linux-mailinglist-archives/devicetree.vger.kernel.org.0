Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BDAB61CA4B
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 16:27:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726180AbfENO1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 10:27:24 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:52232 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726392AbfENO1E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 10:27:04 -0400
Received: by mail-wm1-f68.google.com with SMTP id y3so3126539wmm.2
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 07:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RVVyuMvOECdnykHOg06JMYBC0CP3Jj/vLDrIXkB+hBI=;
        b=jEs81h1ajv0Mq+rqCs5b30885SiDPdTBh3OyhKqv8gKw5qS8VuT6tBfJsEjItE8bdk
         VkeovzQsr+gFHJnI/NTPM2nkLtnTzRqm/QB8by757kG1YvJXF4trV1rBPldpQ6UcVbCz
         n/WI4tdrqWa4VWBwiMIA5hBUZcHXe9K50/XpMDTZGsWhOLxR75d5QQ3vj7FjepEnCzFy
         /DLfdwRT+MXvOGDmeqpDGwrPCqezrTuXJ9n4KYV6nqCs7b7VGcA/6fhX0keVsO3Ie7jf
         8JUFIX6riORBclj/D6TTo+HIQymhklyLbTHzJF/411jb/AolIDp/mLqYQ2clGfZstw+8
         P23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RVVyuMvOECdnykHOg06JMYBC0CP3Jj/vLDrIXkB+hBI=;
        b=pduvp9JvQNw5i4IwWmr2+3o/EZxDnsjnmv7li5EO/fJ2PRw5KaDRVqvux0+/9HDeoE
         VKLKVRrOKtcmOC8xPg/IpJEAGTl+UVjrBYH8dAtPCW0R7oRvWrlCkIzNYw3fxFxolk4J
         7Am/Ghqmw1MIPS2+O5Jvi74TTOt+JJYxCQPMF4ZMkQoBKMVNwq9BkMzS8SeguQr63K7b
         46D/IqAfikEczc1Esk3pBJ0HwYeDxAUU7x+QKWFQuFv8yNmhDQvW/l8GvXNXU4k1ZBHn
         QT2SpYBEmCJupIM8a8DWRafQyZzK2ICxg9xv1UlM+TYc6S//IAfkpwYCFpbtGs7OZFup
         w5SA==
X-Gm-Message-State: APjAAAVB/0nd3tfuNwiqhLWEqvTu3fpx8jPgOVKD0Av4C28APpnBe1uY
        Gura30/zS3IfD1q00MKh+DLuvA==
X-Google-Smtp-Source: APXvYqxGAyi+CZ3nqvmR/sh1VIPkflen3Zz1B6mLaq7ed4bmv3GwqxMt+X2Q7sRF92Dx4Q75JgBZKw==
X-Received: by 2002:a1c:4145:: with SMTP id o66mr20386116wma.68.1557844022765;
        Tue, 14 May 2019 07:27:02 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id h15sm12343642wru.52.2019.05.14.07.27.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 07:27:02 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/8] arm64: dts: meson: g12a: add spdifin
Date:   Tue, 14 May 2019 16:26:48 +0200
Message-Id: <20190514142649.1127-8-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514142649.1127-1-jbrunet@baylibre.com>
References: <20190514142649.1127-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the spdif input device node and the pinctrl definition for
this capture interface g12a SoC family

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 37 +++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 8dbdcbea5945..d6c6408281e9 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -807,6 +807,30 @@
 						};
 					};
 
+					spdif_in_a10_pins: spdif-in-a10 {
+						mux {
+							groups = "spdif_in_a10";
+							function = "spdif_in";
+							bias-disable;
+						};
+					};
+
+					spdif_in_a12_pins: spdif-in-a12 {
+						mux {
+							groups = "spdif_in_a12";
+							function = "spdif_in";
+							bias-disable;
+						};
+					};
+
+					spdif_in_h_pins: spdif-in-h {
+						mux {
+							groups = "spdif_in_h";
+							function = "spdif_in";
+							bias-disable;
+						};
+					};
+
 					spdif_out_h_pins: spdif-out-h {
 						mux {
 							groups = "spdif_out_h";
@@ -1516,6 +1540,19 @@
 					status = "disabled";
 				};
 
+				spdifin: audio-controller@400 {
+					compatible = "amlogic,g12a-spdifin",
+						     "amlogic,axg-spdifin";
+					reg = <0x0 0x400 0x0 0x30>;
+					#sound-dai-cells = <0>;
+					sound-name-prefix = "SPDIFIN";
+					interrupts = <GIC_SPI 151 IRQ_TYPE_EDGE_RISING>;
+					clocks = <&clkc_audio AUD_CLKID_SPDIFIN>,
+						 <&clkc_audio AUD_CLKID_SPDIFIN_CLK>;
+					clock-names = "pclk", "refclk";
+					status = "disabled";
+				};
+
 				spdifout: audio-controller@480 {
 					compatible = "amlogic,g12a-spdifout",
 						     "amlogic,axg-spdifout";
-- 
2.20.1

