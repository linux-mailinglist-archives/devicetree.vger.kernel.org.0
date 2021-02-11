Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9050C3184D1
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 06:27:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbhBKFYn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 00:24:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbhBKFYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 00:24:37 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DF8CC06121D
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 21:22:46 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id b145so3020531pfb.4
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 21:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=drLaSc5ZM86pYsr4qLGvKU8aVv9tTxJbObF+iwNMmEQ=;
        b=jp6hj6pAZiQPW3brKYdJFQwHu7V/w6I6J6wMmvcoskkhHdvU5VWS3StPS6ZKXC0vDu
         fRLGvDYkHBrB/12nBLeQjy+uAynaTZfcN+UCbE9hsP8CJP4KrsMTCtWUE1+eCR187F+Q
         0lkoF9qUAj3hkLRMVH5+eOY2Zpa2qUcMd7YPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=drLaSc5ZM86pYsr4qLGvKU8aVv9tTxJbObF+iwNMmEQ=;
        b=tpCjKAzpY11kvnRYZjp0vEKqJJAKaUBIVLMPxf5oD8M2gxRmJ3oBanc4px/Cl0mXLa
         64MHt5uxX9T8GZCBRdSQXFsMnC9WokGP7jyI/a8p0ZGqCc/IKemFmW7AtoTx8RW+8r47
         s7huEhIb2EALIwPqA7fgHXKKQab4MNRRg1Mhvzn+IHPNymxndeCWsJPeYuRCKDo2RN1z
         95GyJEdTPIwh51nmDRoSquCXIEdmyaoJH9+6TR9WVJGDjVh4XFBvDp2aUinlHf0jMPcx
         rF4aLqav4TdWvq4ki3VPSQOaYFnAACj8jXd6JT9fIrieliAWCSxfIykxMRjVUnuMai2b
         lVJw==
X-Gm-Message-State: AOAM5338OhqP5Mlzdo4HQ3tu1wnzv9wm13RaZrSc5MjOnzZo23NmCU5k
        5o6ymszBdn+FaZu8wvuIVX1kkA==
X-Google-Smtp-Source: ABdhPJyHpMF49V0rRYm+e1K3qaBAEMF89qgT53q/leQhoUKNZHISqHdbh9vE3U7pIb57dPPHmnMhXw==
X-Received: by 2002:a63:215f:: with SMTP id s31mr6408465pgm.146.1613020965624;
        Wed, 10 Feb 2021 21:22:45 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id o21sm3493511pjp.42.2021.02.10.21.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 21:22:45 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-clk@vger.kernel.org, sboyd@kernel.org,
        devicetree@vger.kernel.org
Cc:     w@1wt.eu, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 6/7] ARM: mstar: Add the external clocks to the base dsti
Date:   Thu, 11 Feb 2021 14:22:05 +0900
Message-Id: <20210211052206.2955988-7-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20210211052206.2955988-1-daniel@0x0f.com>
References: <20210211052206.2955988-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All of the currently known MStar/SigmaStar ARMv7 SoCs have an "xtal"
clock input that is usually 24MHz and an "RTC xtal" that is usually 32KHz.

The xtal input has to be connected to something so it's enabled by default.

The MSC313 and MSC313E do not bring the RTC clock input out to the pins
so it's impossible to connect it. The SSC8336 does bring the input
out to the pins but it's not always actually connected to something.

The RTC node needs to always be present because in the future the nodes
for the clock muxes will refer to it even if it's not usable.

The RTC node is disabled by default and should be enabled at the board
level if the RTC input is wired up.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-v7.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index b0a21b0b731f..889c3804c251 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -46,6 +46,21 @@ pmu: pmu {
 		interrupt-affinity = <&cpu0>;
 	};
 
+	clocks: clocks {
+		xtal: xtal {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <24000000>;
+		};
+
+		rtc_xtal: rtc_xtal {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <32768>;
+			status = "disabled";
+		};
+	};
+
 	soc: soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.30.0.rc2

