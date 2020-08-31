Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE81C2574DE
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 09:59:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727944AbgHaH72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 03:59:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728083AbgHaH70 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 03:59:26 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51AD7C061573
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 00:59:25 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id mm21so212503pjb.4
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 00:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=00MyXJ6K5LmM33RR3H14Ts0vy+UoOPF4hpTglXJoQeQ=;
        b=ubMhfIHTSQklK0RqOD06+Iu3684jG6lmb3Y59x2clNGVhiqin5O0wtrCB24ubDABiW
         5BXt5wrorqYiwiEPQrnEhe9dZnrb6VedJv5DpaUzE4x2yrcG511YO8hVRmn8dHPpkqoM
         1Hmz/7kyjI0D3nQRKFzUGZc27BwZnqF4FWrJR0zEaVyQOD8O9rcuI6QNYvGlJMrFeXFm
         q4sUwco7hVF1I1AXfopJ+i3jpRMIjTX/08FN8SN9S2oXV+l2u0Z0bpqGlQy3Suxj57xR
         VfVMEpDCFbT+junAnKEkEwwQwiAEQ6UOonqDEP62bKp5PKs7//NFRfDjHP8ZgKNXLMEr
         yvLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=00MyXJ6K5LmM33RR3H14Ts0vy+UoOPF4hpTglXJoQeQ=;
        b=BeK+QxaSqS9L/pOC1eoiK/E+Jaz1D0ufMajQqVfcW1C+AOqhjUu9FBdeqrYno03P9C
         aDdTAHcs0pQG1msO7kL4SRv7hkWo2AKNJ8QFC9vIw8WlX1lGxxXXxaF4yf+X2+IuIZ6+
         PDoUujYTFBR4+Q6fK8tEj6frIpYD4JOkLnvDIldAUjv40q0s0yLOzFDXr+BC5wWUCkg2
         PAtj2NfXYEwwMJBAgfqqUy1zXWG0MDoaas9jjJiGPMN41QfKf/bAqQVZF3JRE7nMHW66
         T46OFf471M6u1vj5wPd7y+LkzeKXNDS0Z7Ok+a0QlrF9uvaZ0khOJpYX44wHQeAyycyk
         LmzQ==
X-Gm-Message-State: AOAM5334is3rhSzhPBIr8D+7SKqntnJgLK0o7Q9PPwieO6otaECddKWs
        bc2strVwbAG2Dkg3mlNV0FSlo/2IDCbATQ==
X-Google-Smtp-Source: ABdhPJz8TIKyZLdE8Z9zuqnbRadotw69oPm7TqP48nNCS+hlOC5bVhWY0+3P2frjeHOQUr1bPHty3A==
X-Received: by 2002:a17:90b:384b:: with SMTP id nl11mr283434pjb.91.1598860764669;
        Mon, 31 Aug 2020 00:59:24 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.190])
        by smtp.gmail.com with ESMTPSA id g19sm6424057pgj.86.2020.08.31.00.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 00:59:24 -0700 (PDT)
From:   Anand Moon <linux.amoon@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v4 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC controller node
Date:   Mon, 31 Aug 2020 13:29:10 +0530
Message-Id: <20200831075911.434-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200831075911.434-1-linux.amoon@gmail.com>
References: <20200831075911.434-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable RTC PCF8563 node on Odroid-N2 SBC, In order to
support the RTC wakealarm feature for suspend and resume.
Also assign an alias to the pcf8563 to rtc0 and meson-vrtc to rtc1
timer device to prevent it being assigned to /dev/rtc0
which disto userspace tools assume is a clock device.

Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes v4
--Add gpio interrupt for GPIOAO.BIT7 as suggested by Neil.
Changes v3
--Drop the INI GPIOAO.BIT7 pinctrl.
--Added missing RTC alias so that rtc get assigned correcly,
  as suggested by Chris Hewitt.
changes v2
--Fix the missing INT (GPIOAO.BIT7) pinctrl.
--Fix the missing rtcwakeup.
--Drop the clock not required clock property by the PCF8563 driver.
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts   | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 34fffa6d859d..3e2aaa6f48e5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -19,6 +19,8 @@ / {
 	aliases {
 		serial0 = &uart_AO;
 		ethernet0 = &ethmac;
+		rtc0 = &rtc0;
+		rtc1 = &vrtc;
 	};
 
 	dioo2133: audio-amplifier-0 {
@@ -477,6 +479,21 @@ hdmi_tx_tmds_out: endpoint {
 	};
 };
 
+&i2c3 {
+	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	rtc0: rtc@51 {
+		reg = <0x51>;
+		compatible = "nxp,pcf8563";
+		/* RTC INT */
+		interrupts = <GPIOAO_7 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&gpio_intc>;
+		wakeup-source;
+	};
+};
+
 &ir {
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
-- 
2.28.0

