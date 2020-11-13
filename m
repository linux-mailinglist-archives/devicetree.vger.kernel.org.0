Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 579FD2B18C7
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 11:09:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726374AbgKMKJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 05:09:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726229AbgKMKJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Nov 2020 05:09:28 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D295C0613D1
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 02:09:28 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id j205so12990660lfj.6
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 02:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ktK27syoyYYOv8v3fpidm75zqVS6DjeR6Wl39IUeYHY=;
        b=jdj2OtHKkQfJl516LTMhhMJCUeBXhb6ggix2AiCTsWsOLqC1DYg58ECcaWDYH6E9d4
         YTDoxZMKhNnN4fafKFat3BvP++9/Rc+0zwgVSDLgYdmONOPGJBDSkwTBTIwKFFmS62n9
         V6dPmUshxR5VznLadXFINEDuZl6Cku5W7ypBvtyHqKTtrNdQ13zG7DEgFABjtMCzr4n1
         TEdSh76/iA4ZQtStUGdoPEVUb+DjbwVVkuq3JUE/7E3RddqwIsAupCZbTfY7dgTOEqaj
         TJOaUohYN+afXjB2WQel53z6W3wMR2CcLW6WxsjpiBd5l7IsVT33GUPyR/i9bWzxxxCa
         F6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ktK27syoyYYOv8v3fpidm75zqVS6DjeR6Wl39IUeYHY=;
        b=CI0TqYCIHtM/aO0N3iSPE3tm1/vLhizk2OjyzWirH8g5+Padm7L36AHUcKEAtRSOh/
         XTjpcfHiK9Vk0L66Vbu+9tbLZq9CGbR3wtroTTtM2B/bghLo/6gUQ2h1seW/6G6QxYsV
         0RP5PZv4bM4lQ9iT2rejPkglHste6OBuP1EiXUPcy3SMFbAbWR2EnycQmB7lDKyXJCyo
         Ex+Q24cU4483QAxKmwORVO4K4aglIEp6BFKiqcEyA422/0cgU/3Zar+MphxRzZbfEpw6
         cJP/QlIejlzi6lEsxt2PzOZHUzvjlmuwVqJdOzfd/eOuwmxK4AbJjMhDLQn+H9KYa9Ik
         eyqA==
X-Gm-Message-State: AOAM530huB2NgsJkESXvvrHbJcQuSWrKy51h8IMrwja/Xwy1Xbe9AJ7g
        M8iy/xUqR/CFD0CFYO/NayY=
X-Google-Smtp-Source: ABdhPJyEez4v6yuHLl41+vMI6jAPe7nATn9Cf44aAZefxx5s1p7PieE5e3XfRvh06ShVHhaGhiJWzA==
X-Received: by 2002:a19:b46:: with SMTP id 67mr525676lfl.488.1605262166906;
        Fri, 13 Nov 2020 02:09:26 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x20sm1518193lff.200.2020.11.13.02.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 02:09:26 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Disable USB 3 PHY on devices without USB 3
Date:   Fri, 13 Nov 2020 11:09:19 +0100
Message-Id: <20201113100919.25609-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

It seems pointless to have it enabled.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts       | 4 ----
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts       | 4 ----
 arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts | 4 ----
 arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts      | 4 ----
 arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts      | 4 ----
 arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts | 4 ----
 6 files changed, 24 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
index 810fc32f1895..7f07b78c1ac3 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
@@ -57,10 +57,6 @@ &spi_nor {
 	status = "okay";
 };
 
-&usb3_phy {
-	status = "okay";
-};
-
 &srab {
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
index 7604b4480bb1..548faa0c44c8 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
@@ -64,10 +64,6 @@ &spi_nor {
 	status = "okay";
 };
 
-&usb3_phy {
-	status = "okay";
-};
-
 &srab {
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
index 4dcec6865469..2f2d2b0a6893 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
@@ -117,7 +117,3 @@ eject {
 		};
 	};
 };
-
-&usb3_phy {
-	status = "okay";
-};
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
index 1ec655809e57..944e81cab338 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
@@ -57,10 +57,6 @@ &spi_nor {
 	status = "okay";
 };
 
-&usb3_phy {
-	status = "okay";
-};
-
 &srab {
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
index 04bfd58127fc..d1ae7dc10775 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
@@ -105,10 +105,6 @@ &spi_nor {
 	status = "okay";
 };
 
-&usb3_phy {
-	status = "okay";
-};
-
 &srab {
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts b/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
index 01c390ed48ea..12e34a0439b4 100644
--- a/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
+++ b/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
@@ -126,7 +126,3 @@ nvram@ff0000 {
 &usb2 {
 	vcc-gpio = <&chipcommon 9 GPIO_ACTIVE_HIGH>;
 };
-
-&usb3_phy {
-	status = "okay";
-};
-- 
2.27.0

