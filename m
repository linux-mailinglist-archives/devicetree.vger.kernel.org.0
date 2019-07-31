Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3A5317C6D3
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 17:36:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727160AbfGaPgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 11:36:04 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:38626 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727961AbfGaPfg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 11:35:36 -0400
Received: by mail-wr1-f67.google.com with SMTP id g17so70186080wrr.5
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 08:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zwXMQFf4O72zRXvxhXDpjn4gC2DC6LZbFolWqJXYtrg=;
        b=KYF9hpGEUbp0s0D642XDycTGprN3nqCsZUHBJdEKiex/mFMiZiWZ5/jd45H50ptbNU
         gw8EOQxt0VEWOwPRO9cHC+8Ray13wzLmL2meqCrouR1exyscsJduepsVv0tVycyMKrAx
         og2pGcy/PFs9xB5pIxirKZzAjqQ0hmhI1FvPVk7wCeTN1b8iueOtfp9RDkH0HQq5AOqO
         BIsh5KY+3D+v4FETW04yDsEQrdHpBzqHuVwgLELR/iZMZZ12GTAcLO3jy8qP0z/lXN89
         pH+/vGjHdLe0f0U+b/34BBcYccDIKZpHm9TC2KQ8QAL/lNqMRJSWt0F//+Yg0kpY8hxP
         PrUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zwXMQFf4O72zRXvxhXDpjn4gC2DC6LZbFolWqJXYtrg=;
        b=gvnd8XGB7XHtSnoESs3LFNZDT3HrPmPHLuwoJe8dXGGOJ/xukL1iFx6TG95LdKeAYB
         C5NBTqWkWj5/jDpChNO/xQrgQ/Si8+z8k6DoHI+BnkLsB7JjEshcnsbbZOPq67/EQDo6
         YZIZVQtgkwmAFhwwYaup2CFnH07Mps97q0FBqLnUzptXQscRUoCm5tne9+WAxsGGXYjE
         ctP3w9cCMxn6sGE8C/qzFscHnTK9DO8oScWMnxlB3MGMQFYc8B4OetFTyYC3Ypisl9Rw
         hmfAR6VWQa8aQhnyjm8tp0XO0w8UkYFR6rHrS1/WiAbUKn0MMzqCFr9j0uZ+/g0iPeft
         BsfQ==
X-Gm-Message-State: APjAAAW5HFXpJRfb6gd6v4G3/FB/NwxchhS7YcKp5V7d96wUnBDEDJNO
        xVolOu+evIBA8Sre9yt6rAcKOg==
X-Google-Smtp-Source: APXvYqzoxnNYY2vWzgJ9XlUvY8Co2H5qYLxlbwUS/OxtwDXdbJ0v1wfkv4b07TjdDvzHYrdxfIXyZQ==
X-Received: by 2002:a5d:4087:: with SMTP id o7mr91580852wrp.277.1564587334955;
        Wed, 31 Jul 2019 08:35:34 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i13sm62834396wrr.73.2019.07.31.08.35.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 08:35:34 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/6] arm64: dts: amlogic: g12: add temperature sensor
Date:   Wed, 31 Jul 2019 17:35:26 +0200
Message-Id: <20190731153529.30159-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731153529.30159-1-glaroque@baylibre.com>
References: <20190731153529.30159-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add cpu and ddr temperature sensors for G12 Socs

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 06e186ca41e3..7f862a3490fb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1353,6 +1353,28 @@
 				};
 			};
 
+			cpu_temp: temperature-sensor@34800 {
+				compatible = "amlogic,g12-cpu-thermal",
+					     "amlogic,g12-thermal";
+				reg = <0x0 0x34800 0x0 0x50>;
+				interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				status = "okay";
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
+			ddr_temp: temperature-sensor@34c00 {
+				compatible = "amlogic,g12-ddr-thermal",
+					     "amlogic,g12-thermal";
+				reg = <0x0 0x34c00 0x0 0x50>;
+				interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				status = "okay";
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
 			usb2_phy0: phy@36000 {
 				compatible = "amlogic,g12a-usb2-phy";
 				reg = <0x0 0x36000 0x0 0x2000>;
-- 
2.17.1

