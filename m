Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 088C6387FFD
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 20:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351699AbhERSzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 14:55:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351695AbhERSzT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 14:55:19 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E711DC06175F
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 11:54:00 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id z137-20020a1c7e8f0000b02901774f2a7dc4so2106812wmc.0
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 11:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YjYQHeqKS2kjIoIBl/OQt2CgrSmm0dChlmcHt1OGoqM=;
        b=RtxaK3BQVVFrc7xm2rzL24PV1U/NtA9hcAmFKeBTZWYGjDGvtodm6xsjAHQ8KzWoKk
         pniOdOxrEF3Y5L3hbJT5F9fqclMb2e7ae7aXwojdmGGzTgepx4J0mKsboIg3bqBdrNEA
         6h6xHi5GuGclR192HnaAVvkz1rqBsU9Mxhzz33Lg1Tp44m9rUoo+U0cVrBmzd+BR2W53
         SLPkWZ2yB74eWnjSzo46BCTHxiCrDIJPnz7VYdeUOxIkx1LqirWA+5Hdc59NZSZTD3JC
         it39wQgVJRjLgUKFp0CpiRwOt+FpPJgYipOaeh3uNUJKANKi+lDcqlGzUZZGofYiYBlk
         GmCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YjYQHeqKS2kjIoIBl/OQt2CgrSmm0dChlmcHt1OGoqM=;
        b=Q8urlNGKCnz92lA8kGxH7db+Xw0VLOUBGd2ioZ5mSo4X/Vkq2IIHhse3E0mnIfWBWC
         XcRLNV8oX4fF8VgtUmdfm+fuDDJMmjRGzQse+tOYLNNDfPXJjFtldkpSDXmSaqD0PGGS
         ue7MTP5smWO/j5CyGrE+YetCGf6Ca0e2Zp5AuEGWOCPLQku6LdbcZcvoXRc2w4RASBQd
         DijtrIUxgLI+iTGPz2hjecmX6Hx9pYZUZaIEiVj+zuXUCDDnxGINVSQYqPGE1l8a5XA2
         frjmOQ7q6WmVzlsoVYPJR66hrwkTHNbnVeP8QjL3FowKEbr3khMQD/Bp30ucGDoypzJj
         wQEw==
X-Gm-Message-State: AOAM533Sqz1Gnd9jNLv36d+UgspKAPKvgSKPRscFJwpaMloeFb0xcBkV
        J7aBVDxC6dc1glj/ijY9+/aoAA==
X-Google-Smtp-Source: ABdhPJx5Nj1zwTvJgyWbYtWlJntgoIzHrk0UajcMq3DRCjRN21cLJ+WXz/kgqtu0jmRg5ReV170ang==
X-Received: by 2002:a7b:c5d2:: with SMTP id n18mr6497446wmk.97.1621364039581;
        Tue, 18 May 2021 11:53:59 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j10sm22498405wrt.32.2021.05.18.11.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 11:53:59 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     linus.walleij@linaro.org, robh+dt@kernel.org,
        ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] ARM: dts: gemini: convert obsolete SPI properties
Date:   Tue, 18 May 2021 18:53:53 +0000
Message-Id: <20210518185353.3802437-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gpio-xxx are obsoletes properties, convert them to xxx-gpios.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 6 +++---
 arch/arm/boot/dts/gemini-sl93512r.dts      | 6 +++---
 arch/arm/boot/dts/gemini-sq201.dts         | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
index cc39289e99dd..b2a0f3b1441e 100644
--- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -61,9 +61,9 @@ spi {
 		#size-cells = <0>;
 
 		/* Collides with IDE pins, that's cool (we do not use them) */
-		gpio-sck = <&gpio1 5 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio1 8 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio0 20 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 
diff --git a/arch/arm/boot/dts/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini-sl93512r.dts
index a0916d3c1059..c78e55fd2562 100644
--- a/arch/arm/boot/dts/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini-sl93512r.dts
@@ -87,9 +87,9 @@ spi {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		/* Check pin collisions */
-		gpio-sck = <&gpio1 28 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio1 30 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio1 29 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio1 30 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio1 29 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 
diff --git a/arch/arm/boot/dts/gemini-sq201.dts b/arch/arm/boot/dts/gemini-sq201.dts
index 4aa17393f8a9..3104af698cd6 100644
--- a/arch/arm/boot/dts/gemini-sq201.dts
+++ b/arch/arm/boot/dts/gemini-sq201.dts
@@ -72,9 +72,9 @@ spi {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		/* Check pin collisions */
-		gpio-sck = <&gpio1 28 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio1 30 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio1 29 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio1 30 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio1 29 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 
-- 
2.26.3

