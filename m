Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 064081C5D4
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 11:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726084AbfENJQe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 05:16:34 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:41793 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726122AbfENJQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 05:16:19 -0400
Received: by mail-wr1-f68.google.com with SMTP id d12so18279145wrm.8
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 02:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kpOWVi+iL5/F7dUkDp6tEgosj6/Jy76yQKEnOVON8t8=;
        b=rC6MRUoAeXcZYcOl6WnfStMHiWZp73qbyzqDaXJhKatvwz034xBBPVSbzBOeGvhVUo
         0I7dXKeLRZjy2RMWxuKHIuwHB4Zmk0lwjL933lY/A4z1MFE0YkUCgvhLMKntIkLbVoQJ
         EGhLsHDVR3k75PjeUUMf0aZW4lC3cdppsh3UkMoaWkloqxFdqoeNY2nixkE1TdKWLwZw
         pV3LhspPkKbSoJ0rBs/mCPk+BnU3nw1+na3WcjIkJSvyqPH4skrYLCJUPUQ05c3EwHA7
         kMVqJ9I81KGv9SBllGHrxT+DK6C/wpQJ80BaEfsI3N14WnPJydqvxtuL/ByvIlJCWV2l
         CAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kpOWVi+iL5/F7dUkDp6tEgosj6/Jy76yQKEnOVON8t8=;
        b=R76ni9tG+Uhn+xZBltZ23ucAk2z2/Pb4WUKIFOzyn2oNbre0/EINu2g/OmuGAcPHqk
         2xEtw+3WLKk2RryKv38JekIHlXcp1KrQNw2jMZ8vYE27GBdCzEhlKKhlvOoS4IzHV2Xi
         w+1+woT2xBJDasJfiaZyaZzyLHTlKTYeVurmG+o9VE72qELxSyFBdBdijHvb/ZbKFFQ2
         XevkHWdeCUFdWKML4lhgGTtxuZVGb0/DonX+2RvgqC84u8NxagsQP3xcwb9a4T4WWVvL
         i8FQFmafAmM0kn0WqFeoFITcenSAPSSWFE//jwmo/c6z5i55/PC5rjxj4jJk81h09xfh
         Urkg==
X-Gm-Message-State: APjAAAXLgkdpOcRJHXRjxClJDqimzwBsrKmPHaJ1/CgJR1cBAzqyOe4c
        ySgTGqXFKvkdmeWV2sKC0LUnwg==
X-Google-Smtp-Source: APXvYqwn4L/qAqXXygIl8woXOselHRrB8K6ajymSdfj0F4Co9xtqHutEwQGEp2tYMAKog9vShqA6bA==
X-Received: by 2002:adf:ee01:: with SMTP id y1mr2274845wrn.51.1557825377292;
        Tue, 14 May 2019 02:16:17 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id y40sm17737158wrd.96.2019.05.14.02.16.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 02:16:16 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: meson: sei510: add sd and emmc
Date:   Tue, 14 May 2019 11:16:11 +0200
Message-Id: <20190514091611.15278-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514091611.15278-1-jbrunet@baylibre.com>
References: <20190514091611.15278-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable eMMC and SDCard on the g12a sei510 board

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 61fb30047d7f..bb45e3577ff5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -45,6 +45,11 @@
 		};
 	};
 
+	emmc_pwrseq: emmc-pwrseq {
+		compatible = "mmc-pwrseq-emmc";
+		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
+	};
+
 	hdmi-connector {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -161,6 +166,43 @@
 	vref-supply = <&vddio_ao1v8>;
 };
 
+/* SD card */
+&sd_emmc_b {
+	status = "okay";
+	pinctrl-0 = <&sdcard_c_pins>;
+	pinctrl-1 = <&sdcard_clk_gate_c_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	max-frequency = <50000000>;
+	disable-wp;
+
+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddao_3v3>;
+};
+
+/* eMMC */
+&sd_emmc_c {
+	status = "okay";
+	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-1 = <&emmc_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	max-frequency = <200000000>;
+	non-removable;
+	disable-wp;
+
+	mmc-pwrseq = <&emmc_pwrseq>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&emmc_1v8>;
+};
+
 &uart_A {
 	status = "okay";
 	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
-- 
2.20.1

