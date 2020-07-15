Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B636B2211D9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2020 18:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbgGOQDN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 12:03:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726767AbgGOQCg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jul 2020 12:02:36 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD623C061755
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 09:02:36 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id n5so3287886pgf.7
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 09:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2e7TAmb2L4R1UYaoTeIJ9mP17eces73nTO3RzK12slE=;
        b=m60s7AiY1voSD08dFil+1xdgIzKVRBs6UNqOPRMpd9PM+1p6rdrCxW/VfJxISNgf2Q
         IrxGXfcEEUTSqjiC/3d/tHPWTQmp5EVlNChu+cAQ0O07TFKI8WmYmshjcl+29LvFnl/f
         Wl/9ugnmj+IetmCmd7eH7baV8/ADNUaeFYWZIUobhNNTfAd95BwjHfEyg6KBJ8P7Wmrw
         XLUUXWMyyiXTfJzYhEH9TJ+701AmqNmSgiHgE43cbhb9+BuK77AvNyvoisp55X6hk0U4
         AsOwBK/rgh2V7aaUH4qksVGLTM5tcv19t9G3wUoNh1MhhKga0OMBNE1jsQ/l9l4GYN14
         cs8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2e7TAmb2L4R1UYaoTeIJ9mP17eces73nTO3RzK12slE=;
        b=pzUKkzxvEW+1uZX63jINOD56vtihhKNId1yzmkoUp7tfNrKBkY34jKQdMDdM8kW4WP
         uiHKnVQUwdXxZimEEkyPhvDOPX/njJuaxFF6l+0gLwn+IB9esl4ikI6b9k8rP4rmDHIf
         rR3wwQPwfntAF7OtlS2EgtD24VE9V3GTH6iH73Q0scAT6DSb/PVLxBrpthbVYCnaYXII
         S9bI/93pGRHWtrBif8XVzvyYlvTk8KsRgPEB37YG1rYvlAoRrU91GnIu2LxOxoB9+Ln3
         sN+WBXbv0HkfRYfPWh+PxWAOcgnbKlCvjcZZYQB913QbgU4ip0Zf6jmqBSjqL6BNLuaF
         tpdw==
X-Gm-Message-State: AOAM531JP0PlBqYQKLaHrcX5L/e/+lSbdnApS/8JfJWT7i0K/+FF+Jtf
        z5o8Y1S1j0h9TgT/BfUyeGWyyglZ
X-Google-Smtp-Source: ABdhPJw2/fbfirzliUb91U7ZlrQj8MyoY1h7nldzndKM/01OvlmJ02mE3Nr62oBSpGBQDycEE6tWrg==
X-Received: by 2002:a05:6a00:843:: with SMTP id q3mr9098725pfk.107.1594828956115;
        Wed, 15 Jul 2020 09:02:36 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.198])
        by smtp.gmail.com with ESMTPSA id 4sm2520157pgk.68.2020.07.15.09.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 09:02:35 -0700 (PDT)
From:   Anand Moon <linux.amoon@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCHv1 1/3] arm64: dts: meson-g12b-odroid-n2: Enable RTC controller node
Date:   Wed, 15 Jul 2020 16:02:07 +0000
Message-Id: <20200715160209.652-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200715160209.652-1-linux.amoon@gmail.com>
References: <20200715160209.652-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable RTC PCF8563 node on Odroid-N2 SBC, In order
to support the RTC wakealarm feature for suspend and resume.

Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
$ sudo hwclock -r && date
2020-07-15 13:11:53.862508+00:00
Wed Jul 15 13:11:54 UTC 2020

$ hwclock --show
2020-07-15 13:17:30.903300+00:00

But RTC wake up is not working at my end.
Any inputs are welcome.

$ time rtcwake -s 30 -m mem
rtcwake: /dev/rtc0 not enabled for wakeup events

real    0m0.002s
user    0m0.002s
sys     0m0.000s
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 169ea283d4ee..a447cba4dd53 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -391,6 +391,20 @@ hdmi_tx_tmds_out: endpoint {
 	};
 };
 
+&i2c3 {
+	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	rtc: rtc@51 {
+		reg = <0x51>;
+		compatible = "nxp,pcf8563";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "rtc_clkout";
+	};
+};
+
 &ir {
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
-- 
2.27.0

