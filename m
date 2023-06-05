Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFA4D72273D
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 15:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbjFENVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 09:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233367AbjFENVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 09:21:19 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92BCEA6
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 06:21:17 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f3bb395e69so6111640e87.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 06:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685971276; x=1688563276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KQHPj/pyaOCPvAD3+J5ju9nL6dhyvYDh62weyNqqdf8=;
        b=jZqQCKyUE3bbHg+zKRWJIvgovxlB9KBHa72eRam98GGFWC5GbcUk+OYTtVfGGk8Yjo
         M0Gpk4oVEcSAwXUe9SQodEbuEk237ki6ryyN8RlTkxbwfFf7UNrjJ2kGbPXgTbwX1LZS
         C4ktBDe3BKAeHcouwXuefbwPkW0+KxnoAiWmyJVGft0A5ZdP9hgnHj9iloJg5Mmlf3bm
         kGP5LQwjGpDFQ4WE4n/wwy+GnKYi8i97a1JC/XLiW9DoBO5UmIsAI59W0UPvHS6x7iez
         xoo5cY5f/91U+Wvi3KWnauioD3Dq3oP7YdztZS8Ihz7F3jav6CdMBMjH0G7+c8fVRVe+
         iXFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685971276; x=1688563276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KQHPj/pyaOCPvAD3+J5ju9nL6dhyvYDh62weyNqqdf8=;
        b=J7vSQDjBLE7Ul9eNUqPWR0CiVTjOaF8BNMUW9jo+isuyayMYzquGBtYxv2IAvH5Q9U
         4G8BKDJ5UehzD44sCkVeNh0G8yfLrIUSwqjIsAvQ7iI9vKcHhRiqYhco6GQioC4UsYOw
         UbsUHt4BP5o9nwujuFGCFUFj333MUu2Utaq/cWULeApLlqrpf1Ip/xjcozxg60PAPqyA
         2uZyHrUb97vvUgvVYClT0SAmTrUkstnFtq+W2MNrB65F8jiK0qvFRNic7gU59BGxG5lO
         lhtOuOp32lr21j2GbpwHXryQsUA/RJ6wfoQQvt+EUw8bBs+AP59nc/RJbbeEUbI2iLJ8
         nH0Q==
X-Gm-Message-State: AC+VfDxwSqQSfCZF2ERqOenysEvSgTN9KWJJWSfFUUgbgev28wrqsB+q
        003RPh5cm7iLiB0TBaKyjrE3L0YA+sk=
X-Google-Smtp-Source: ACHHUZ4ZIzLNQ+zrhkSyM7cT4t40dcahpzcO69Tkcnfi5OYK8i/yijuprj5XaX5Lk9Ba9S9NyHXEew==
X-Received: by 2002:ac2:596f:0:b0:4f1:47be:8db6 with SMTP id h15-20020ac2596f000000b004f147be8db6mr4803575lfp.56.1685971275240;
        Mon, 05 Jun 2023 06:21:15 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id r23-20020ac24d17000000b004ec84d24818sm1135024lfi.282.2023.06.05.06.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 06:21:14 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Describe switch ports in the main DTS
Date:   Mon,  5 Jun 2023 15:21:09 +0200
Message-Id: <20230605132109.7933-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

All Northstar SoCs have BCM5301x switches (BCM53011, BCM53012) with 8
ports (0-8 without 6). By design 3 switch ports (5, 7 and 8) are
hardwired to 3 on-SoC Ethernet interfaces. Switch port 8 requires
forcing link state.

It seems that global Northstar .dtsi file is the best place to describe
those hw details. Only device specific bits (like labels) should go to
device .dts files.

This seems to fit well with a tiny exception of Asus RT-AC88U which
somehow was designed to have switch 5 connected to an extra switch. This
case was simply handled with a /delete-property/.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm-ns.dtsi                 | 41 ++++++++++++++++++-
 .../bcm4708-buffalo-wzr-1166dhp-common.dtsi   |  7 ----
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts  |  4 --
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts  |  3 --
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts   |  7 ----
 arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts |  7 ----
 .../boot/dts/bcm47081-buffalo-wzr-600dhp2.dts |  7 ----
 arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts |  3 --
 arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts |  7 ----
 arch/arm/boot/dts/bcm4709-netgear-r8000.dts   | 12 ------
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts  | 17 +-------
 arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts | 12 ------
 arch/arm/boot/dts/bcm47094-dlink-dir-890l.dts | 12 ------
 .../boot/dts/bcm47094-linksys-panamera.dts    | 34 ++++-----------
 arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts |  7 ----
 arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts |  4 --
 arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts |  7 ----
 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts |  3 --
 arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts |  7 ----
 .../boot/dts/bcm47094-luxul-xwr-3150-v1.dts   |  7 ----
 arch/arm/boot/dts/bcm53015-meraki-mr26.dts    |  3 --
 arch/arm/boot/dts/bcm53016-meraki-mr32.dts    |  3 --
 22 files changed, 51 insertions(+), 163 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
index 43d670746f05..dae9c47ace76 100644
--- a/arch/arm/boot/dts/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/bcm-ns.dtsi
@@ -313,10 +313,49 @@ srab: ethernet-switch@18007000 {
 
 		status = "disabled";
 
-		/* ports are defined in board DTS */
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+			};
+
+			port@1 {
+				reg = <1>;
+			};
+
+			port@2 {
+				reg = <2>;
+			};
+
+			port@3 {
+				reg = <3>;
+			};
+
+			port@4 {
+				reg = <4>;
+			};
+
+			port@5 {
+				reg = <5>;
+				ethernet = <&gmac0>;
+			};
+
+			port@7 {
+				reg = <7>;
+				ethernet = <&gmac1>;
+			};
+
+			port@8 {
+				reg = <8>;
+				ethernet = <&gmac2>;
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
 		};
 	};
 
diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
index 0846887ba144..42bcbf10957c 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
@@ -159,34 +159,27 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan1";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan2";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan3";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan4";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
index 5d0549855978..e04d2e5ea51a 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
@@ -75,19 +75,15 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "poe";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "lan";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
index 4ca348c06b51..a399800139d9 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
@@ -82,14 +82,11 @@ &srab {
 
 	ports {
 		port@4 {
-			reg = <4>;
 			label = "lan";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
index 8661ec94ca67..fad3473810a2 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
@@ -100,34 +100,27 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan4";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan3";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan2";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan1";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts b/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
index 26cdeb5cc337..5b2b7b8b3b12 100644
--- a/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
+++ b/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
@@ -123,34 +123,27 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan4";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan3";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan2";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan1";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
index a2b7644eaf39..d0a26b643b82 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
@@ -123,34 +123,27 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan1";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan2";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan3";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan4";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
index 7e042928fd40..9f21d6d6d35b 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
@@ -75,14 +75,11 @@ &srab {
 
 	ports {
 		port@4 {
-			reg = <4>;
 			label = "poe";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
index 231d437408d8..256107291702 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
@@ -124,36 +124,29 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan4";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan3";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan2";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan1";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 			nvmem-cells = <&et0macaddr 5>;
 			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
index 3552b6deffc2..707c561703ed 100644
--- a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
@@ -208,39 +208,27 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan1";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan2";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan3";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan4";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		port@8 {
-			reg = <8>;
 			label = "cpu";
-			ethernet = <&gmac2>;
-
-			fixed-link {
-				speed = <1000>;
-				full-duplex;
-			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index a50ff686b557..4d5747aa5dc8 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -181,32 +181,28 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan4";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan3";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan2";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan1";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		sw0_p5: port@5 {
-			reg = <5>;
+			/delete-property/ethernet;
+
 			label = "extsw";
 			phy-mode = "rgmii";
 
@@ -218,8 +214,6 @@ fixed-link {
 		};
 
 		port@7 {
-			reg = <7>;
-			ethernet = <&gmac1>;
 			label = "cpu";
 
 			fixed-link {
@@ -229,14 +223,7 @@ fixed-link {
 		};
 
 		port@8 {
-			reg = <8>;
-			ethernet = <&gmac2>;
 			label = "cpu";
-
-			fixed-link {
-				speed = <1000>;
-				full-duplex;
-			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
index 555fbe41dd8f..51ce510b3e3a 100644
--- a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
+++ b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
@@ -124,39 +124,27 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan4";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan3";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan2";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan1";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		port@8 {
-			reg = <8>;
 			label = "cpu";
-			ethernet = <&gmac2>;
-
-			fixed-link {
-				speed = <1000>;
-				full-duplex;
-			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-dlink-dir-890l.dts b/arch/arm/boot/dts/bcm47094-dlink-dir-890l.dts
index d945a20b06e0..60744f82c2b7 100644
--- a/arch/arm/boot/dts/bcm47094-dlink-dir-890l.dts
+++ b/arch/arm/boot/dts/bcm47094-dlink-dir-890l.dts
@@ -172,40 +172,28 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan1";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan2";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan3";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan4";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		port@8 {
-			reg = <8>;
 			label = "cpu";
-			ethernet = <&gmac2>;
 			phy-mode = "rgmii";
-
-			fixed-link {
-				speed = <1000>;
-				full-duplex;
-			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index d9a16a820e7f..8036c04d81cb 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -207,29 +207,32 @@ &srab {
 	dsa,member = <0 0>;
 
 	ports {
+		sw0_p0: port@0 {
+			label = "extsw";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
+		};
+
 		port@1 {
-			reg = <1>;
 			label = "lan7";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan4";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan8";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 		};
 
 		port@5 {
-			reg = <5>;
-			ethernet = <&gmac0>;
 			label = "cpu";
 			status = "disabled";
 
@@ -240,8 +243,6 @@ fixed-link {
 		};
 
 		port@7 {
-			reg = <7>;
-			ethernet = <&gmac1>;
 			label = "cpu";
 			status = "disabled";
 
@@ -252,24 +253,7 @@ fixed-link {
 		};
 
 		port@8 {
-			reg = <8>;
-			ethernet = <&gmac2>;
 			label = "cpu";
-
-			fixed-link {
-				speed = <1000>;
-				full-duplex;
-			};
-		};
-
-		sw0_p0: port@0 {
-			reg = <0>;
-			label = "extsw";
-
-			fixed-link {
-				speed = <1000>;
-				full-duplex;
-			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
index ae5523870854..e8991d4e248c 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
@@ -83,36 +83,29 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "wan";
 			nvmem-cells = <&et0macaddr 1>;
 			nvmem-cell-names = "mac-address";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan4";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan3";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan2";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "lan1";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts b/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
index 9220f193499e..6875625869d9 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
@@ -73,19 +73,15 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "poe";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
index 2bd64dcd4353..7cfa4607ef31 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
@@ -83,36 +83,29 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "wan";
 			nvmem-cells = <&et0macaddr 1>;
 			nvmem-cell-names = "mac-address";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan4";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan3";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan2";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "lan1";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
index 8a6d19f985c1..d55e10095eae 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
@@ -69,14 +69,11 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
index 52783a4b6f99..ccf031c0e276 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
@@ -123,36 +123,29 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan4";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan3";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan2";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan1";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 			nvmem-cells = <&et0macaddr 5>;
 			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
index 2dd05f4dce92..789dd2a3d226 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
@@ -98,36 +98,29 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "lan4";
 		};
 
 		port@1 {
-			reg = <1>;
 			label = "lan3";
 		};
 
 		port@2 {
-			reg = <2>;
 			label = "lan2";
 		};
 
 		port@3 {
-			reg = <3>;
 			label = "lan1";
 		};
 
 		port@4 {
-			reg = <4>;
 			label = "wan";
 			nvmem-cells = <&et0macaddr 5>;
 			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
index 071f2cb97251..24ba467c67b9 100644
--- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
+++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
@@ -115,14 +115,11 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "poe";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 
 			fixed-link {
 				speed = <1000>;
diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
index 46c2c93b01d8..559d6c371d67 100644
--- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
@@ -176,14 +176,11 @@ &srab {
 
 	ports {
 		port@0 {
-			reg = <0>;
 			label = "poe";
 		};
 
 		port@5 {
-			reg = <5>;
 			label = "cpu";
-			ethernet = <&gmac0>;
 
 			fixed-link {
 				speed = <1000>;
-- 
2.35.3

