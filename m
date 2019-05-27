Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0C02B00F
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 10:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726540AbfE0IXL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 04:23:11 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:43501 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726547AbfE0IXI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 04:23:08 -0400
Received: by mail-wr1-f68.google.com with SMTP id l17so7581991wrm.10
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 01:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wkvoQ7ZQRviI68t1GQUcpGSIR6wTw9yWovYigsGIRFY=;
        b=1IZRLlb+iAynIaLix5gVnCAZ7xAcsd6DubGOlTTQORdKeGFTdgOh86Q19BhVPF5sMv
         u1AqrDphMxX0Fwzlt5Dk57C6gE+ZvPbGWoUjWVcMODmvKRc8x7h3blory7XLa3KETdcT
         ecC9iPtBIvBvnBCSKIgCj3oWsT2OrdLpMlvDn0WCtiw7OgLy9TY+WVctIW8/9aNWRnlX
         mRUVt7eA4ISwHFWuDZoy0s7d4LfdG4JfsnBgbrrtTPY2FN06VS7flHrs68atPeaAXBb4
         6+J9l9steEVtxruflDf2GdqRxa3qzPfn6FssE3SZ4CyeX3gTCwWVLtjvSi1XW8/FQt/c
         PHYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wkvoQ7ZQRviI68t1GQUcpGSIR6wTw9yWovYigsGIRFY=;
        b=jnSfK6NwC3JyyU40gGGQYPWYIip+v5BKOj8GWE2jAEcZVfwySo0iPSpnI6j1pgK3ne
         E7MMbuZNIY3m457ZVKdiCDCLaI6wV6E1+2JNAP0IA0FYREOpuivbRjZOyu4Rw9yca8tf
         /ee/+bDE7rmVf0yW0f5+JjWCFU2km+9LQuKnf9kIgf5/EeUtKD1mLm3xS0sHdLJCQNsF
         H8M1RCdIP/F1EW+Zbk11GVLpfs2A+ZOcYYgPuSFOSO9sH+dO54HYLNSItlfMs6MHTKx0
         twFZBM4lc/32dMnbqAEUEHwAGnAfyqRp5NeQkbLZhOQrkoA9dy+gJl3bL2jU+5zC7Ct3
         SSHQ==
X-Gm-Message-State: APjAAAUh1P1EYgC57o5DeIoOu8LmWYngxKoriD1H1hFXAPTM63dfWBJw
        qj46QGHPGDnFT2wZDi0xcUQeHvic7l8=
X-Google-Smtp-Source: APXvYqxjl3RRa1d0rScJAF3qliJ/Hk9OGySvApUogEWYS5nGYWKNr0B8fU4E1ulTp3VLCeiqGm9b1A==
X-Received: by 2002:adf:f391:: with SMTP id m17mr8161803wro.90.1558945386129;
        Mon, 27 May 2019 01:23:06 -0700 (PDT)
Received: from localhost.localdomain (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
        by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 May 2019 01:23:05 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        David Lechner <david@lechnology.com>,
        Adam Ford <aford173@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [RESEND PATCH v5 2/5] ARM: dts: da850-lego-ev3: enable cpufreq
Date:   Mon, 27 May 2019 10:22:56 +0200
Message-Id: <20190527082259.29237-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527082259.29237-1-brgl@bgdev.pl>
References: <20190527082259.29237-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: David Lechner <david@lechnology.com>

Add a fixed regulator for the LEGO EV3 board along with board-specific
CPU configuration.

Signed-off-by: David Lechner <david@lechnology.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/boot/dts/da850-lego-ev3.dts | 30 ++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/da850-lego-ev3.dts b/arch/arm/boot/dts/da850-lego-ev3.dts
index 66fcadf0ba91..553717f84483 100644
--- a/arch/arm/boot/dts/da850-lego-ev3.dts
+++ b/arch/arm/boot/dts/da850-lego-ev3.dts
@@ -125,6 +125,15 @@
 		amp-supply = <&amp>;
 	};
 
+	cvdd: regulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cvdd";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	/*
 	 * This is a 5V current limiting regulator that is shared by USB,
 	 * the sensor (input) ports, the motor (output) ports and the A/DC.
@@ -204,6 +213,27 @@
 	clock-frequency = <24000000>;
 };
 
+&cpu {
+	cpu-supply = <&cvdd>;
+};
+
+/* since we have a fixed regulator, we can't run at these points */
+&opp_100 {
+	status = "disabled";
+};
+
+&opp_200 {
+	status = "disabled";
+};
+
+/*
+ * The SoC is actually the 456MHz version, but because of the fixed regulator
+ * This is the fastest we can go.
+ */
+&opp_375 {
+	status = "okay";
+};
+
 &pmx_core {
 	status = "okay";
 
-- 
2.21.0

