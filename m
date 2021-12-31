Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EBF5482513
	for <lists+devicetree@lfdr.de>; Fri, 31 Dec 2021 17:23:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229933AbhLaQXS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Dec 2021 11:23:18 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47100
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229813AbhLaQXR (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 31 Dec 2021 11:23:17 -0500
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 46DE93F1A5
        for <devicetree@vger.kernel.org>; Fri, 31 Dec 2021 16:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640967796;
        bh=Qlnwbd6fk1GAVHv44UFEkb4MIEQM8+1pdzBh/ez3KZQ=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Mp//TfklArpgHrJlD4qud9Q7F/RoIiE0/S6l7vlfZDLfP7Q0mSmdjpbvxip1eytsk
         fAXyIdVtFHhNwRlfFYrvHXoqk5QjiRDHqWq+H4usHNZheM959q/NngJ7gOIuuMgC2k
         y9xcJyGu5cpZo5oM6Me8sBAHFqjOAvGX25ZB0Mz8w56iG1RzoZZzQZf9R9YCOhODAR
         f7G3TiwjN9lxIDgwWKDgdptlxcq5ezV2mHyuxCveHtsE+5cUXXoBsMm9KaQgRs4Int
         dKQIwdwLwQhd88xH+BHVDP+1mNIh9WvQxuu7iz0/c2pkYd5PyR3PbFsv2UqvK5KDV3
         SQM6nh8vh1xRg==
Received: by mail-lf1-f70.google.com with SMTP id 28-20020ac24d5c000000b00425c507cfc0so5200808lfp.20
        for <devicetree@vger.kernel.org>; Fri, 31 Dec 2021 08:23:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qlnwbd6fk1GAVHv44UFEkb4MIEQM8+1pdzBh/ez3KZQ=;
        b=79GQVc3517RseN6SOYjUeqbRgG2LVWGBCWxUnGKJCDQ0WX0GSs92Qcq5qZK/hL/xr5
         VyGkLcDKePcgxYNdq4E+zc+YGkv0GSnxl7dsKMcFYjS/rycjBrSYIFwXhYNQIBewWESR
         W/946vZD2oUAnAivCrggFiA/fCKVZ3KgfBES4AWI7boMbmld1O0CmFHcpqODNxLAg/RU
         YKdezHEdXLPROdmp9J9o9DHw2f9BFntDgBI5rpPkbPvmNn2ST2K9EyD7ncuEvc7OAE7M
         h0SDzlMgqGyTXECByUSkvg99mHWx293uMx62XDRUbrOv+5MHYSz6E3GYgMVquLDkOsoQ
         HHYg==
X-Gm-Message-State: AOAM530HukWf/7icXmYL+fhLqxMTDv6TQIk3H0+0BdTE/BHxQTgBWnF0
        qC2JOkozJBG7G80+yUhLkVWPmTLUs0BbRImTDWatlXs43etl1u2DVMm6HbAvox9D7PVekCP6LUh
        Z+G7BsMpjggdTwlCyt/c/lD6r0Evs8LePvybHrzI=
X-Received: by 2002:a05:6512:1148:: with SMTP id m8mr31613316lfg.456.1640967795689;
        Fri, 31 Dec 2021 08:23:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyadLEVC0B3YJK3cfaEc3hDx1hxcfnoJYeS8hebYv7Pc5ZqEsWb8cSfPT2e/lGlVzBM9dZ0gg==
X-Received: by 2002:a05:6512:1148:: with SMTP id m8mr31613299lfg.456.1640967795485;
        Fri, 31 Dec 2021 08:23:15 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id y20sm1510835ljn.69.2021.12.31.08.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Dec 2021 08:23:14 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH 20/24] arm64: dts: exynos: align pinctrl with dtschema in ExynosAutov9
Date:   Fri, 31 Dec 2021 17:23:05 +0100
Message-Id: <20211231162309.257587-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211231161930.256733-1-krzysztof.kozlowski@canonical.com>
References: <20211231161930.256733-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the pin controller related nodes with dtschema.  No functional
change expected.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../boot/dts/exynos/exynosautov9-pinctrl.dtsi | 50 +++++++++----------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov9-pinctrl.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9-pinctrl.dtsi
index 2407b03b5404..ef0349d1c3d0 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9-pinctrl.dtsi
@@ -11,7 +11,7 @@
 #include <dt-bindings/pinctrl/samsung.h>
 
 &pinctrl_alive {
-	gpa0: gpa0 {
+	gpa0: gpa0-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-controller;
@@ -27,7 +27,7 @@ gpa0: gpa0 {
 			     <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	gpa1: gpa1 {
+	gpa1: gpa1-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-controller;
@@ -47,7 +47,7 @@ dp1_hpd: dp1-hpd-pins {
 		samsung,pin-function = <EXYNOS_PIN_FUNC_2>;
 	};
 
-	gpq0: gpq0 {
+	gpq0: gpq0-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -69,7 +69,7 @@ speedy1_bus: speedy1-bus-pins {
 };
 
 &pinctrl_aud {
-	gpb0: gpb0 {
+	gpb0: gpb0-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -77,7 +77,7 @@ gpb0: gpb0 {
 		#interrupt-cells = <2>;
 	};
 
-	gpb1: gpb1 {
+	gpb1: gpb1-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -85,7 +85,7 @@ gpb1: gpb1 {
 		#interrupt-cells = <2>;
 	};
 
-	gpb2: gpb2 {
+	gpb2: gpb2-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -93,7 +93,7 @@ gpb2: gpb2 {
 		#interrupt-cells = <2>;
 	};
 
-	gpb3: gpb3 {
+	gpb3: gpb3-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -199,7 +199,7 @@ aud_i2s6_idle: aaud-i2s6-idle-pins {
 };
 
 &pinctrl_fsys0 {
-	gpf0: gpf0 {
+	gpf0: gpf0-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -207,7 +207,7 @@ gpf0: gpf0 {
 		#interrupt-cells = <2>;
 	};
 
-	gpf1: gpf1 {
+	gpf1: gpf1-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -355,7 +355,7 @@ pcie_perst5_in: pcie-perst5-in-pins {
 };
 
 &pinctrl_fsys1 {
-	gpf8: gpf8 {
+	gpf8: gpf8-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -393,7 +393,7 @@ sd2_bus4: sd2-bus-width4-pins {
 };
 
 &pinctrl_fsys2 {
-	gpf2: gpf2 {
+	gpf2: gpf2-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -401,7 +401,7 @@ gpf2: gpf2 {
 		#interrupt-cells = <2>;
 	};
 
-	gpf3: gpf3 {
+	gpf3: gpf3-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -409,7 +409,7 @@ gpf3: gpf3 {
 		#interrupt-cells = <2>;
 	};
 
-	gpf4: gpf4 {
+	gpf4: gpf4-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -417,7 +417,7 @@ gpf4: gpf4 {
 		#interrupt-cells = <2>;
 	};
 
-	gpf5: gpf5 {
+	gpf5: gpf5-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -425,7 +425,7 @@ gpf5: gpf5 {
 		#interrupt-cells = <2>;
 	};
 
-	gpf6: gpf6 {
+	gpf6: gpf6-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -499,7 +499,7 @@ eth1_pps_out: eth1-pps-out-pins {
 };
 
 &pinctrl_peric0 {
-	gpp0: gpp0 {
+	gpp0: gpp0-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -507,7 +507,7 @@ gpp0: gpp0 {
 		#interrupt-cells = <2>;
 	};
 
-	gpp1: gpp1 {
+	gpp1: gpp1-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -515,7 +515,7 @@ gpp1: gpp1 {
 		#interrupt-cells = <2>;
 	};
 
-	gpp2: gpp2 {
+	gpp2: gpp2-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -523,7 +523,7 @@ gpp2: gpp2 {
 		#interrupt-cells = <2>;
 	};
 
-	gpg0: gpg0 {
+	gpg0: gpg0-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -833,7 +833,7 @@ uart5_bus_dual: uart5-bus-dual-pins {
 };
 
 &pinctrl_peric1 {
-	gpp3: gpp3 {
+	gpp3: gpp3-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -841,7 +841,7 @@ gpp3: gpp3 {
 		#interrupt-cells = <2>;
 	};
 
-	gpp4: gpp4 {
+	gpp4: gpp4-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -849,7 +849,7 @@ gpp4: gpp4 {
 		#interrupt-cells = <2>;
 	};
 
-	gpp5: gpp5 {
+	gpp5: gpp5-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -857,7 +857,7 @@ gpp5: gpp5 {
 		#interrupt-cells = <2>;
 	};
 
-	gpg1: gpg1 {
+	gpg1: gpg1-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -865,7 +865,7 @@ gpg1: gpg1 {
 		#interrupt-cells = <2>;
 	};
 
-	gpg2: gpg2 {
+	gpg2: gpg2-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
@@ -873,7 +873,7 @@ gpg2: gpg2 {
 		#interrupt-cells = <2>;
 	};
 
-	gpg3: gpg3 {
+	gpg3: gpg3-gpio-bank {
 		gpio-controller;
 		#gpio-cells = <2>;
 
-- 
2.32.0

