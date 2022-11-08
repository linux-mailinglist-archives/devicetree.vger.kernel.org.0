Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9906620E35
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 12:07:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234046AbiKHLHf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 06:07:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234072AbiKHLHX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 06:07:23 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F7254C27E
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 03:07:15 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id i21so21876474edj.10
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 03:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i6eJzNDN+gsbEDAuZNAIfykBQHXQ4r/YYwVGmrZbCUU=;
        b=PWaEklpz7JlLx/Z3msBdcteW6+byjD8JBtmPSomOIqDTIqmerqFZBGeqz5v2I4FC2Q
         mzsVj0MDWsMJSgcZM3vQuBsEvFG4fIFHVt/AFeAlDbqmpi1rkBpvGeKmFZv8fzbXOoOy
         kYqUbl6Toe/zWjA3eByJk9o+3hUjrfyoIxuO/cP20XtTVZSOsnlVZTa5BxprwTE/MB95
         P3kjstQl+oM5adrALwvIz8lIjPvWlwx/QB9sD4zld+94FoDzEJpMNUj0D6mLGHiij+D1
         +54wXwozwNA+HeC8xXpasHNob77nogeDce880kq5Z8aUs/6dHfJiNGHSvZ7e6TENJc8m
         S6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i6eJzNDN+gsbEDAuZNAIfykBQHXQ4r/YYwVGmrZbCUU=;
        b=2NIAUeYK3oLgBKNhJ572w+lemTZ3FOK/VlcGlGZIw6gf16ERF/nmKAhcXCpKa/5XMC
         FkjcEVdlGH1k1sRUSdaPkilEfIA6LOBFd9PLPic3QN9ZQGLU+8T6QLt0cWYBmSgiMhU1
         ul9Ubx67AcLnxRFZCJJe5BOOg4y9Nzo1RU/hQvlKF6DnqBkiRm5XCaSGtpBHPyOgY5Bk
         NJXALUcUZNS1Etzqxm3PywSzzlPKJpnU0/KOdlhX7fT2k++Vggi23iyrgo3Kcer3jCbq
         Va+6xwfEKdlSlwipzrDTDhz167P/1sTSE4lwPjzuuLZivJtNQbCU3yDsrzNjnNkt4X0c
         X++A==
X-Gm-Message-State: ACrzQf2plyA8X65aI+EHNNXS7OM0wTSTNfGSmyIvqVzlWaf0cRtW0c0+
        BWjMx1BCIzGjs1EnwEwQlB0=
X-Google-Smtp-Source: AMsMyM4Z1EZxBKVs8DwaNKh3xbsGY0C6QeFIjzQFRdZxF83oiVN4cajOXZVYwBx3zz2KTZjRLiZr6Q==
X-Received: by 2002:a05:6402:655:b0:464:d83:d02c with SMTP id u21-20020a056402065500b004640d83d02cmr33122636edx.335.1667905634004;
        Tue, 08 Nov 2022 03:07:14 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id h6-20020a170906828600b00731803d4d04sm4476323ejx.82.2022.11.08.03.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 03:07:13 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Correct description of TP-Link partitions
Date:   Tue,  8 Nov 2022 12:07:08 +0100
Message-Id: <20221108110708.13693-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

TP-Link routers have flash space partitioned according to the partitions
table. It may look like fixed partitioning but those partitions can be
actually reorganized. New can be added (or some removed), offsets and
sizes may change.

Fix DT to use binding for the TP-Link SafeLoader partitioning method.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/bcm47081-tplink-archer-c5-v2.dts | 25 ++++---------------
 .../boot/dts/bcm4709-tplink-archer-c9-v1.dts  | 25 ++++---------------
 2 files changed, 10 insertions(+), 40 deletions(-)

diff --git a/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts b/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
index 19a7971b5a00..db9a37d70ef3 100644
--- a/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
+++ b/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
@@ -95,30 +95,15 @@ &spi_nor {
 	status = "okay";
 
 	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		boot@0 {
-			label = "boot";
-			reg = <0x000000 0x040000>;
-			read-only;
-		};
+		compatible = "tplink,safeloader-partitions";
+		partitions-table-offset = <0xe50000>;
 
-		os-image@100000 {
-			label = "os-image";
-			reg = <0x040000 0x200000>;
+		partition-os-image {
 			compatible = "brcm,trx";
 		};
 
-		rootfs@240000 {
-			label = "rootfs";
-			reg = <0x240000 0xc00000>;
-		};
-
-		nvram@ff0000 {
-			label = "nvram";
-			reg = <0xff0000 0x010000>;
+		partition-file-system {
+			linux,rootfs;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts b/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
index 11d1068160da..2cfb105f631a 100644
--- a/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
+++ b/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
@@ -104,30 +104,15 @@ &spi_nor {
 	status = "okay";
 
 	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		boot@0 {
-			label = "boot";
-			reg = <0x000000 0x040000>;
-			read-only;
-		};
+		compatible = "tplink,safeloader-partitions";
+		partitions-table-offset = <0xe50000>;
 
-		os-image@100000 {
-			label = "os-image";
-			reg = <0x040000 0x200000>;
+		partition-os-image {
 			compatible = "brcm,trx";
 		};
 
-		rootfs@240000 {
-			label = "rootfs";
-			reg = <0x240000 0xc00000>;
-		};
-
-		nvram@ff0000 {
-			label = "nvram";
-			reg = <0xff0000 0x010000>;
+		partition-file-system {
+			linux,rootfs;
 		};
 	};
 };
-- 
2.34.1

