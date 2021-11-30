Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E384463077
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 11:02:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240618AbhK3KFb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 05:05:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240610AbhK3KFa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 05:05:30 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F31BC061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:02:11 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id t9so26146236wrx.7
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 02:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wQNf1jb+oM4Q0vCqJnqmXLx+F84dNeiuJDE210Yt7E4=;
        b=JloMFV+eOjaemtIsi6SlE3gSiN/2NjlDv5Q8eL9sKoO/ogaDDDrugB5Da56fUqKX6B
         0A9J41R2AurwDoBgRAKDYWSwTOC02AnHm5egm0FxYDV7MZnK8tpb4ATnLb5avGsNEs0S
         44Zcdn/nqrclaLb2t6+KS3ynvMfpKJ3ienvxiEX3Q9fQDP/ckDpO7bT6HjKSfjL1x1g1
         2+aGi4QP2JDt7U7+EI92Kqexm6sLRD50oNzFBWChatgXdLMsBioVComUOXOiFl3Et0Jj
         ApCKBfP4c6RfPsGQOOtsI3nIJyO8bly8t6RRc3nsFOssKJZuyqmTPRiZddGE+l6dHY30
         ZRRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wQNf1jb+oM4Q0vCqJnqmXLx+F84dNeiuJDE210Yt7E4=;
        b=DTx3arxCiudljGxaChkYCsS/Z5HJEHGdmqsQ3/VCakUh0knYDdD4Oaj2eTCKnf9/98
         I1SpgZNBf6qEQodeg2tAo/T3n0ZqzZG5EKLPImohi8FVlb9+jNUfQD+7rQyJiR6yO33c
         UsFcttxVw4fvTvM5vk8VdojEGlrLJ79YvpXvr3N7fW5f9DTLhC5JR0CpyH1px+bpk4wK
         UsD5bHSQcjkwoEXShBQOOSSXPWXH2AkU4GN1fDXKR+itgbFfZPj8ou+p+yLDLZ+AF6f1
         S+afAGTi7aNblreKESnLx5MwZbRkFkK+CZTsNqhrS9Uoe0DIJlGHYQsSPydzwvzCXRq+
         B1nQ==
X-Gm-Message-State: AOAM533c9Bm1/T++5pGcK2LIS9r3CcatgDXV3pQ7xG3e5CH2GFsR+EBn
        9B/s5MnBU0uKfVhqLgNF3JMrxw==
X-Google-Smtp-Source: ABdhPJxT2VWRB6le7wRc5VAZr2LTZ47CKl+OU8xp96iK5sGkVWvF1Zr5R/74ZxBPJK1Tys/l9d2vVQ==
X-Received: by 2002:adf:a145:: with SMTP id r5mr37573738wrr.462.1638266529843;
        Tue, 30 Nov 2021 02:02:09 -0800 (PST)
Received: from jackdaw.lan (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id e12sm21117166wrq.20.2021.11.30.02.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 02:02:09 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: meson: p241: add vcc_5v regulator
Date:   Tue, 30 Nov 2021 11:01:58 +0100
Message-Id: <20211130100159.214489-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211130100159.214489-1-jbrunet@baylibre.com>
References: <20211130100159.214489-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the VCC_5V regulator, which feeds the HDMI, USB and audio amplifier.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index eb7f5a3fefd4..9d0684a8264b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -84,6 +84,14 @@ vcc_3v3: regulator-vcc_3v3 {
 		regulator-max-microvolt = <3300000>;
 	};
 
+	vcc_5v: regulator-vcc-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+
 	emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		reset-gpios = <&gpio BOOT_9 GPIO_ACTIVE_LOW>;
@@ -136,6 +144,7 @@ &hdmi_tx {
 	status = "okay";
 	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
 	pinctrl-names = "default";
+	hdmi-supply = <&vcc_5v>;
 };
 
 &hdmi_tx_tmds_port {
@@ -220,3 +229,7 @@ &usb {
 	status = "okay";
 	dr_mode = "host";
 };
+
+&usb2_phy0 {
+	phy-supply = <&vcc_5v>;
+};
-- 
2.34.0

