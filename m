Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85D333325E0
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 13:55:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230492AbhCIMzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 07:55:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230504AbhCIMzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 07:55:15 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE864C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 04:55:14 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id q25so26849224lfc.8
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 04:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CLCuAl2a90H+hY0CWNoRdWrZ5spsyhWEYR/uYBYIIF8=;
        b=bNpGqy/p9vm/6clfyK497N1uJIrErT6EraBiKau2lew4TtbMPMJvEGrSHGDbuzLPpj
         HNkgWgYCrxez1gQBqqQBoVpZxZJpWefWbiTU8VSDKXi+OJwEnHpi8JSOHcCmPqsW0dUz
         9twvhMn9uMjVLSfUXA3vp5c0ZDxcPPn54+whTn7WALg4qGzzqKIDOWyLNflT3yv+QXjw
         19dJi6czSfgo7pr6/Okmr5/siQwUbKwwK91srypb6RarooP5tz3YGQh/YWRwM0ntMAjc
         38qV5YPzvWKhl1MUudHZUS812eo1AHExurpQQ/tBkMwbWiROK2xJfZmZovmEeIFB5J5i
         i4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CLCuAl2a90H+hY0CWNoRdWrZ5spsyhWEYR/uYBYIIF8=;
        b=U3Gs7m82gq1az9vOjg0kZJlOYnbGw8S/KG+Z1gYN/yXOH01C5MrNYbegvLtnzbvqvW
         B0mmkSS/dh7tqNYIS0/dtFr0pzK7BId76xANr0jkJR/Cbe4+qCuPbjYK2JSA6G+xzdia
         Ldnc4chzvD0rtJcen09ePu1ERt8sbU9dAku3KFXLlJQ1Gyo35llANYK/EvjE+7JvM9Yd
         D+M+8RSHW58SHXBGNa8ohGaCb6bXuFAwm4IKHgpWao+cqHYH6kF9y1M3uuc7m+pXF89u
         xh0wuRiPNEbSfpog4+sSIxiDzxZ/hAasriBS/QBWOrYlHXm8lIgMlBwo4Ex2ep4ii6kF
         L9bw==
X-Gm-Message-State: AOAM532mJlAMfETJr8/4r5eQ72+L0QmwdzdD8TcQorAsiQV04sKrvctm
        VezL7c2zvv9A7l2g9KGUnaA=
X-Google-Smtp-Source: ABdhPJy+qOpZqb5+TQbu+nK/n3yBqdzEJkPokVO7ixIGG7gjIwAmnWSN9oql0wlA50BewJ/Yy3n7bw==
X-Received: by 2002:a19:5f0b:: with SMTP id t11mr17540213lfb.193.1615294513113;
        Tue, 09 Mar 2021 04:55:13 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id g14sm1923517ljj.3.2021.03.09.04.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 04:55:12 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH stblinux] ARM: dts: BCM5301X: fix "reg" formatting in /memory node
Date:   Tue,  9 Mar 2021 13:55:00 +0100
Message-Id: <20210309125500.15224-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes warnings/errors like:
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dt.yaml: /: memory@0:reg:0: [0, 134217728, 2281701376, 402653184] is too long
        From schema: /lib/python3.6/site-packages/dtschema/schemas/reg.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts        | 4 ++--
 arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts        | 4 ++--
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts  | 4 ++--
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts        | 4 ++--
 arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts     | 4 ++--
 arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts      | 4 ++--
 arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts        | 4 ++--
 arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts | 4 ++--
 arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts  | 4 ++--
 arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts        | 4 ++--
 arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts  | 4 ++--
 arch/arm/boot/dts/bcm4709-linksys-ea9200.dts       | 4 ++--
 arch/arm/boot/dts/bcm4709-netgear-r7000.dts        | 4 ++--
 arch/arm/boot/dts/bcm4709-netgear-r8000.dts        | 4 ++--
 arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts      | 4 ++--
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts    | 4 ++--
 arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts      | 4 ++--
 arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts      | 4 ++--
 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts      | 4 ++--
 arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts      | 4 ++--
 arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts   | 4 ++--
 arch/arm/boot/dts/bcm47094-netgear-r8500.dts       | 4 ++--
 arch/arm/boot/dts/bcm47094-phicomm-k3.dts          | 4 ++--
 23 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts b/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
index 6a96655d8626..8ed403767540 100644
--- a/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
+++ b/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts b/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
index 3b0029e61b4c..667b118ba4ee 100644
--- a/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
+++ b/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
index 90f57bad6b24..ff31ce45831a 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x18000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
 	};
 
 	spi {
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
index fed75e6ab58c..61c7b137607e 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
@@ -22,8 +22,8 @@ chosen {
 
 	memory {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
index 79542e18915c..4c60eda296d9 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts b/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
index 51c64f0b2560..9ca6d1b2590d 100644
--- a/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
+++ b/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts b/arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts
index c29950b43a95..0e273c598732 100644
--- a/arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts
+++ b/arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
index 2f2d2b0a6893..d857751ec507 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	spi {
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
index 0e349e39f608..8b1a05a0f1a1 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	spi {
diff --git a/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts b/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
index 8f1e565c3db4..6c6bb7b17d27 100644
--- a/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
+++ b/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts b/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
index ce888b1835d1..d29e7f80ea6a 100644
--- a/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
+++ b/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x18000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
index ed8619b54d69..38fbefdf2e4e 100644
--- a/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
@@ -18,8 +18,8 @@ chosen {
 
 	memory {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/bcm4709-netgear-r7000.dts b/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
index 1f87993eae1d..7989a53597d4 100644
--- a/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
+++ b/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
index 6c6199a53d09..87b655be674c 100644
--- a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
@@ -32,8 +32,8 @@ chosen {
 
 	memory {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
index 911c65fbf251..e635a15041dd 100644
--- a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
+++ b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
@@ -21,8 +21,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	nand: nand@18028000 {
diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index 3725f2b0d60b..4b24b25389b5 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -18,8 +18,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	gpio-keys {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
index 50f7cd08cfbb..a6dc99955e19 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
@@ -18,8 +18,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x18000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
index bcc420f85b56..ff98837bc0db 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
@@ -18,8 +18,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x18000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
index 4f8d777ae18d..452b8d0ab180 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
@@ -18,8 +18,8 @@ chosen {
 
 	memory {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x18000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
index e17e9a17fb00..b76bfe6efcd4 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
@@ -18,8 +18,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x08000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x08000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
index 60cc87ecc7ec..32d5a50578ec 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
@@ -18,8 +18,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x18000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47094-netgear-r8500.dts b/arch/arm/boot/dts/bcm47094-netgear-r8500.dts
index f42a1703f4ab..42097a4c2659 100644
--- a/arch/arm/boot/dts/bcm47094-netgear-r8500.dts
+++ b/arch/arm/boot/dts/bcm47094-netgear-r8500.dts
@@ -18,8 +18,8 @@ chosen {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x18000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
 	};
 
 	leds {
diff --git a/arch/arm/boot/dts/bcm47094-phicomm-k3.dts b/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
index ac3a4483dcb3..a2566ad4619c 100644
--- a/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
+++ b/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
@@ -15,8 +15,8 @@ / {
 
 	memory@0 {
 		device_type = "memory";
-		reg = <0x00000000 0x08000000
-		       0x88000000 0x18000000>;
+		reg = <0x00000000 0x08000000>,
+		      <0x88000000 0x18000000>;
 	};
 
 	gpio-keys {
-- 
2.26.2

