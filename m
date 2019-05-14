Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 467B61CA4F
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 16:27:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726528AbfENO1Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 10:27:25 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:34752 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726360AbfENO1E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 10:27:04 -0400
Received: by mail-wr1-f65.google.com with SMTP id f8so1640691wrt.1
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 07:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4UiaVyfOL73xkXYf2uJjieahrgB1t1Do944eA1pOwmA=;
        b=PIwE79cod1lccflCI19QyYhFpzoS2dui0oJV9kti+3tHtL5N+nJhczAQfM1xVqcnFK
         tM97KfWK28/CO9CdADKqNMfk5Qek+bgl8UB4JI4Jl20/wwHiTrxNnBBpkxejCA06kX4A
         QbIlwqquaa5t156HH+Sa/3jDOPHdCQa+XxebBmj6cejCZ/NS4v6wHVdxKBV4//h4UHhw
         WwybeNuoAnex38cjreKRy57iFjBehXeNbH6BsVVqAYwkxd+PXJuEsy8sfAJLZCq/09/2
         WOJGIqdVMn1YepcIM0sfUcaL2Y6dPKcH/EoeMT76jIvkfaGkJSNCpKRfNzCS7OA46//V
         ul1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4UiaVyfOL73xkXYf2uJjieahrgB1t1Do944eA1pOwmA=;
        b=EbJZ8rewKEc8lMXRU/wlxGpX6WcNZG/JvKlcV+2Y5xnhzJbs7/lUQIHCAZIrLHNWPm
         BPKOB1mY605ffhQkV2v/7tXRklGA3S7J28vVBBmIoV7vPOaauG8+WC5NILj5pQhkypbj
         sGwp8V55Co2HJtIFWy7iC2gYJgjuaAFI4WvikEPdo4ikxGFmMTCSrr3htDCO7kSHqlKH
         bo1QJHoWSTX9Ch1C8qe2RwTOHBFioM+1cMlnk1qiC/exlte2Vo1vb9Yt2ZuGL1R+UJrA
         F7h3AY5MTuY8SeQjvzCwBOU0zQjFsA7avZpOLsxG5n0ye0LCGVQWmBlc7uN7Q9Fr/5i1
         JMXQ==
X-Gm-Message-State: APjAAAWx3I5ERMqihVzQWigdEwNr8jvMSmMdWjnXeWJKb1NgEtq4EF3z
        DUrDI/bXfJxpxgW390OAJFd1xA==
X-Google-Smtp-Source: APXvYqw5fO7c8RNHMpxo+PX9iqfcPie/9aLysADsb/eHUy3PI2oKG/eECkpIwCqdyTsmZfreK7En4Q==
X-Received: by 2002:a5d:53c3:: with SMTP id a3mr2557545wrw.60.1557844021823;
        Tue, 14 May 2019 07:27:01 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id h15sm12343642wru.52.2019.05.14.07.27.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 07:27:01 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/8] arm64: dts: meson: g12a: add pdm
Date:   Tue, 14 May 2019 16:26:47 +0200
Message-Id: <20190514142649.1127-7-jbrunet@baylibre.com>
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

Add the pdm device node and the pinctrl definition for this capture
interface g12a SoC family

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 177 ++++++++++++++++++++
 1 file changed, 177 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index f25a7c7ed995..8dbdcbea5945 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -497,6 +497,170 @@
 						};
 					};
 
+					pdm_din0_a_pins: pdm-din0-a {
+						mux {
+							groups = "pdm_din0_a";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din0_c_pins: pdm-din0-c {
+						mux {
+							groups = "pdm_din0_c";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din0_x_pins: pdm-din0-x {
+						mux {
+							groups = "pdm_din0_x";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din0_z_pins: pdm-din0-z {
+						mux {
+							groups = "pdm_din0_z";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din1_a_pins: pdm-din1-a {
+						mux {
+							groups = "pdm_din1_a";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din1_c_pins: pdm-din1-c {
+						mux {
+							groups = "pdm_din1_c";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din1_x_pins: pdm-din1-x {
+						mux {
+							groups = "pdm_din1_x";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din1_z_pins: pdm-din1-z {
+						mux {
+							groups = "pdm_din1_z";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din2_a_pins: pdm-din2-a {
+						mux {
+							groups = "pdm_din2_a";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din2_c_pins: pdm-din2-c {
+						mux {
+							groups = "pdm_din2_c";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din2_x_pins: pdm-din2-x {
+						mux {
+							groups = "pdm_din2_x";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din2_z_pins: pdm-din2-z {
+						mux {
+							groups = "pdm_din2_z";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din3_a_pins: pdm-din3-a {
+						mux {
+							groups = "pdm_din3_a";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din3_c_pins: pdm-din3-c {
+						mux {
+							groups = "pdm_din3_c";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din3_x_pins: pdm-din3-x {
+						mux {
+							groups = "pdm_din3_x";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_din3_z_pins: pdm-din3-z {
+						mux {
+							groups = "pdm_din3_z";
+							function = "pdm";
+							bias-disable;
+						};
+					};
+
+					pdm_dclk_a_pins: pdm-dclk-a {
+						mux {
+							groups = "pdm_dclk_a";
+							function = "pdm";
+							bias-disable;
+							drive-strength-microamp = <500>;
+						};
+					};
+
+					pdm_dclk_c_pins: pdm-dclk-c {
+						mux {
+							groups = "pdm_dclk_c";
+							function = "pdm";
+							bias-disable;
+							drive-strength-microamp = <500>;
+						};
+					};
+
+					pdm_dclk_x_pins: pdm-dclk-x {
+						mux {
+							groups = "pdm_dclk_x";
+							function = "pdm";
+							bias-disable;
+							drive-strength-microamp = <500>;
+						};
+					};
+
+					pdm_dclk_z_pins: pdm-dclk-z {
+						mux {
+							groups = "pdm_dclk_z";
+							function = "pdm";
+							bias-disable;
+							drive-strength-microamp = <500>;
+						};
+					};
+
 					pwm_a_pins: pwm-a {
 						mux {
 							groups = "pwm_a";
@@ -1164,6 +1328,19 @@
 				};
 			};
 
+			pdm: audio-controller@40000 {
+				compatible = "amlogic,g12a-pdm",
+					     "amlogic,axg-pdm";
+				reg = <0x0 0x40000 0x0 0x34>;
+				#sound-dai-cells = <0>;
+				sound-name-prefix = "PDM";
+				clocks = <&clkc_audio AUD_CLKID_PDM>,
+					 <&clkc_audio AUD_CLKID_PDM_DCLK>,
+					 <&clkc_audio AUD_CLKID_PDM_SYSCLK>;
+				clock-names = "pclk", "dclk", "sysclk";
+				status = "disabled";
+			};
+
 			audio: bus@42000 {
 				compatible = "simple-bus";
 				reg = <0x0 0x42000 0x0 0x2000>;
-- 
2.20.1

