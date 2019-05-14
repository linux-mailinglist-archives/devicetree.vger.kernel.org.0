Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C1EB01C79F
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 13:15:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726349AbfENLP6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 07:15:58 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37583 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726078AbfENLPV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 07:15:21 -0400
Received: by mail-wm1-f65.google.com with SMTP id 7so2394048wmo.2
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 04:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z7vP7ano274I5qllq8uR+bb2yaN49Q2MfmDUFqT17hQ=;
        b=OVd3mubCMUTqHvkWZ1yO5YL6jSiUiT0CiIuHO+TVYnWoTSXS3T+ZvIqfBjrfg4+C0i
         L0IbguyctOYwSwIQvOv3QqGnZPaqyRB11hXneqhEkPSsZ6BwXF41Tor0duUYpBymFnF1
         VDdB1fram1a+h23hONf5xImxteD61e4zE9ixjCZyzQz/3QMiWPEAmFqGavKHTBv63t6j
         fr63qMUzn+hROUR5ACPsRB2mapvHZNNIPsE29eWWPmwVEAHykG762g/bxkK97VMENjb9
         5uV/ZhzR2pshQwm4DKJ2Cvc1ShKD1xUH4Kg323TNcnW7viXQ9gyDJeE4NXD2pwk/pLgb
         sdCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z7vP7ano274I5qllq8uR+bb2yaN49Q2MfmDUFqT17hQ=;
        b=b9h7IKhx4SoIOhdBtqX5bB8cP+dNO312GsuJPS2xm+5gNDbkToek/iHFQrm8Mr/PPS
         BS+wC5CL3YFh5aJbX2KwztWNu2mdDPaW1q7fPD6tTATJVUch94QeMYiU7yYAsIsaC/HP
         OF2aEbosn2tsFO7YY3m9AToZSGI0b2s7TFJB0NY4XB3vlD3hYReS9iYNiEplAuq1Klu5
         XffrqPleoPKMZNZJG3GRPawsajbD4n2jYtyk7x2mrK/zlG8lUoacdB/WQrA6APUz3Gfn
         1XXnu1lECtgK5wOJY0f3yEbY6WcZuIRHoAFQiVWV2ANqkTPJ0YI5qoDKWVzAPHQRydjC
         9SQw==
X-Gm-Message-State: APjAAAUR0qgGDwA+oWXuTuzCNSatYhvjhqfZUfLlLlMZhfIpJvDqwqX5
        FXpfwVlGcsMsN7uEYZGLP98eEw==
X-Google-Smtp-Source: APXvYqzLV2B5k5JA2BgrDhqWVYRsgPWNEuwYFiZF6d+rNSDWWoh8bflZCjj+KvkRcJp6N1peF/vPAg==
X-Received: by 2002:a7b:cd0e:: with SMTP id f14mr7531000wmj.127.1557832520316;
        Tue, 14 May 2019 04:15:20 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id c130sm7289922wmf.47.2019.05.14.04.15.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 04:15:19 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/8] arm64: dts: meson: g12a: add audio fifos
Date:   Tue, 14 May 2019 13:15:05 +0200
Message-Id: <20190514111510.23299-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514111510.23299-1-jbrunet@baylibre.com>
References: <20190514111510.23299-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the playback and capture memory interfaces of the g12a SoC family.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 67 +++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 2d5bccad4035..299df8131a0c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/clock/g12a-aoclkc.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
 #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
 
 / {
@@ -709,6 +710,72 @@
 					resets = <&reset RESET_AUDIO>;
 				};
 
+				toddr_a: audio-controller@100 {
+					compatible = "amlogic,g12a-toddr";
+					reg = <0x0 0x100 0x0 0x1c>;
+					#sound-dai-cells = <0>;
+					sound-name-prefix = "TODDR_A";
+					interrupts = <GIC_SPI 148 IRQ_TYPE_EDGE_RISING>;
+					clocks = <&clkc_audio AUD_CLKID_TODDR_A>;
+					resets = <&arb AXG_ARB_TODDR_A>;
+					status = "disabled";
+				};
+
+				toddr_b: audio-controller@140 {
+					compatible = "amlogic,g12a-toddr";
+					reg = <0x0 0x140 0x0 0x1c>;
+					#sound-dai-cells = <0>;
+					sound-name-prefix = "TODDR_B";
+					interrupts = <GIC_SPI 149 IRQ_TYPE_EDGE_RISING>;
+					clocks = <&clkc_audio AUD_CLKID_TODDR_B>;
+					resets = <&arb AXG_ARB_TODDR_B>;
+					status = "disabled";
+				};
+
+				toddr_c: audio-controller@180 {
+					compatible = "amlogic,g12a-toddr";
+					reg = <0x0 0x180 0x0 0x1c>;
+					#sound-dai-cells = <0>;
+					sound-name-prefix = "TODDR_C";
+					interrupts = <GIC_SPI 150 IRQ_TYPE_EDGE_RISING>;
+					clocks = <&clkc_audio AUD_CLKID_TODDR_C>;
+					resets = <&arb AXG_ARB_TODDR_C>;
+					status = "disabled";
+				};
+
+				frddr_a: audio-controller@1c0 {
+					compatible = "amlogic,g12a-frddr";
+					reg = <0x0 0x1c0 0x0 0x1c>;
+					#sound-dai-cells = <0>;
+					sound-name-prefix = "FRDDR_A";
+					interrupts = <GIC_SPI 152 IRQ_TYPE_EDGE_RISING>;
+					clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
+					resets = <&arb AXG_ARB_FRDDR_A>;
+					status = "disabled";
+				};
+
+				frddr_b: audio-controller@200 {
+					compatible = "amlogic,g12a-frddr";
+					reg = <0x0 0x200 0x0 0x1c>;
+					#sound-dai-cells = <0>;
+					sound-name-prefix = "FRDDR_B";
+					interrupts = <GIC_SPI 153 IRQ_TYPE_EDGE_RISING>;
+					clocks = <&clkc_audio AUD_CLKID_FRDDR_B>;
+					resets = <&arb AXG_ARB_FRDDR_B>;
+					status = "disabled";
+				};
+
+				frddr_c: audio-controller@240 {
+					compatible = "amlogic,g12a-frddr";
+					reg = <0x0 0x240 0x0 0x1c>;
+					#sound-dai-cells = <0>;
+					sound-name-prefix = "FRDDR_C";
+					interrupts = <GIC_SPI 154 IRQ_TYPE_EDGE_RISING>;
+					clocks = <&clkc_audio AUD_CLKID_FRDDR_C>;
+					resets = <&arb AXG_ARB_FRDDR_C>;
+					status = "disabled";
+				};
+
 				arb: reset-controller@280 {
 					status = "disabled";
 					compatible = "amlogic,meson-axg-audio-arb";
-- 
2.20.1

