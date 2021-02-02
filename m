Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54F0D30C722
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 18:12:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237292AbhBBRLx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 12:11:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236997AbhBBRJu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 12:09:50 -0500
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [IPv6:2001:67c:2050::465:202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CE50C061786
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 09:09:10 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4DVWW861WczQjyS;
        Tue,  2 Feb 2021 18:09:08 +0100 (CET)
Authentication-Results: spamfilter05.heinlein-hosting.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1612285746;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=rKefVOHIgH3RRUJVkiub1hkbfVxHTICw9ywDriRKYC4=;
        b=m4TgnXqEhVKkxYVCnKJiQbeHyHxbC7TKoIR7NikZ2heyjnbgJXhfV8HXypN3tY85klZA9m
        bZ2L62mYmV4781k33uVWELdPfYKNbucnvX6enDLDVoQjMHTrrh45d6wC/KGkqJ3Pc7Z2K/
        cPIUL9Ynk1kGmkHt+JAaqUDIXpQL+w2RZbb43Fv+mAKORI4TSugE1tQoRhHIzBas9Tf9Vn
        m5bBJLpCay+suHdsWhHxb31r4VJdouJzdUmr32d13mbCnHkLRfWzpQLKcpgCjAI3DOJ/MW
        tCkqQKCqj76uxBXAofglj9G5m0Q5gv0bE7Ir8t5Qd75AMc1IgceiYYowVHiAgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:message-id:date:date
        :subject:subject:from:from:received; s=mail20150812; t=
        1612285745; bh=aTQLSZ7C/O5xdekCHLTA25N5p4fllJpG7xKztu/Tv9E=; b=W
        yorkOIri6NhxHckdqVr613MUcQ+XlWHNKGR+bfkHkj74uEhzfWdugtM3O1WBws1+
        qk5sA9tQbWrRIKra4+xKbHrEKCWHnWFduZyI9Yb+ijuo7JnFYQc0tz7+wmqgUP2d
        GpKyMAfMdJx4gkHt17Q/inFYhhOyW1qCd7QDabZnOKzlU/XPSx+cFwleZjYwp+l1
        oFAw4mJWM94ZreSit/gW/3TowZg+duOlPfAF7Bn/Joo/3067yGnLvG7a80UmsHvB
        +C8eELHm5pyI6SIRGoA6gdhqxV0ob7WgON5flzWRS4qM06tUZc10Atr7AnYdNp6Y
        bxbwTFOwLl87iIffVbfrw==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123]) (amavisd-new, port 10030)
        with ESMTP id sAlSN3_dNllc; Tue,  2 Feb 2021 18:09:05 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: meson: g12b: odroid-n2: Add I2C RTC device node
Date:   Tue,  2 Feb 2021 18:08:46 +0100
Message-Id: <20210202170846.81685-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: ***
X-Rspamd-Score: 3.19 / 15.00 / 15.00
X-Rspamd-Queue-Id: 9C9CF17DE
X-Rspamd-UID: d27b0d
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is taken from the downstream kernel and works out of the box.
Similar to other boards, this RTC should be the primary one, rather than
the internal one.

A wakeup alarm by writing to /sys/class/rtc/rtc0/wakealarm works as well.

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi     | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
index 050862cd0996..10edc7ce5e84 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
@@ -13,6 +13,8 @@ / {
 	aliases {
 		serial0 = &uart_AO;
 		ethernet0 = &ethmac;
+		rtc0 = &rtc;
+		rtc1 = &vrtc;
 	};
 
 	dioo2133: audio-amplifier-0 {
@@ -471,6 +473,18 @@ hdmi_tx_tmds_out: endpoint {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
+	pinctrl-names = "default";
+
+	rtc: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+		wakeup-source;
+	};
+};
+
 &ir {
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
-- 
2.30.0

