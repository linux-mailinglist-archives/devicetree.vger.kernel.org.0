Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAC603F13E3
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 08:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230483AbhHSG6A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 02:58:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231939AbhHSG57 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 02:57:59 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABC03C061575
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 23:57:23 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id h9so9712279ljq.8
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 23:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K/DTNNHaBGRiPT3IVB2N2T6s8uD6wu6C0yuoqela4JA=;
        b=lmp5MmYNe3ikSXEBmKZe6klkmm1+PniUhVMr70madDKmIKbo2A5LYr74536m5aSiIE
         c4VXlzKd7KzquKBprBQ1TvayHeA+Kwu4IWOtkA+Bmc4Ra8c15N5Jdj6Y+Unccq9fEpU3
         NOqBuigQmuxhVwRQU7Rd9et2lY0qgCfC+SodXVk1zr7gvxwmcIlwSb/Roda5d2ewvpDk
         x19Zm7yYYD4IIdmpTaPxt9Sv4ydR7Sc/4PSr6OPhL6EWXzhOC1wqkYjHzKiVBrXFTimU
         8mjMZP8gLB5ljfu6lw+ZvgY6YC7aYEoVjXb8eiyJEDwCo+frCYiqZzMUUJbTu+s0I8oc
         xyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K/DTNNHaBGRiPT3IVB2N2T6s8uD6wu6C0yuoqela4JA=;
        b=sqP35Gp51LgkGn+826aQEr6W4NX9OgeRBBwmYIYsWCXkvLe/gGLr2zFyQQLR5WLWOB
         Dv2kUOi08/h08nzva1V1jA/69S0U0ei0m2xsxDBfjI5/9xBZJuchvwxGZPKNZT1IcHZ3
         2lI0Zl0SGB3z5wkj4VlXD4c0iKsiAOSaqMaPcRMwD7Af/VH6ESg0H0ucl4ojSqgvVooj
         m3S882spfgIg/4R2h2FkswyxwOCAentnAwNkQs/kZX1HjRRQWvwZfiW/sjpMjFzDB1LW
         NFSDU6AhrZigMczuy4DkmxOj4sUTz8N0/UVjXfoYgxCHYRU/Dr4+YCkrJoba8mARrYSj
         elrg==
X-Gm-Message-State: AOAM533b1bnZwZfd7FEBvHKgQ4pra3XtCzonAcuUphyjYRqGGxs5cIx9
        8yG5zJ5qD0GF87yqG9lM1pA7cfmpHMyRzg==
X-Google-Smtp-Source: ABdhPJz/l5kqDU2uEdG1N8I/b9UUGNSy0QDVblw70XtW+1hctfNaa0jplg5gE59xHk1qoyQ5LFK36Q==
X-Received: by 2002:a2e:b52d:: with SMTP id z13mr10796534ljm.376.1629356242044;
        Wed, 18 Aug 2021 23:57:22 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id o16sm206821lfl.309.2021.08.18.23.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 23:57:21 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/3] ARM: dts: BCM5301X: Fix memory nodes names
Date:   Thu, 19 Aug 2021 08:57:02 +0200
Message-Id: <20210819065702.15406-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210819065702.15406-1-zajec5@gmail.com>
References: <20210819065702.15406-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Thix fixes:
arch/arm/boot/dts/bcm4708-netgear-r6250.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 402653184]]}
arch/arm/boot/dts/bcm4709-linksys-ea9200.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
arch/arm/boot/dts/bcm4709-netgear-r7000.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
arch/arm/boot/dts/bcm4709-netgear-r8000.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 134217728]]}
arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728]]}
arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728], [2281701376, 402653184]]}
arch/arm/boot/dts/bcm53016-meraki-mr32.dt.yaml: /: memory: False schema does not allow {'reg': [[0, 134217728]], 'device_type': ['memory']}
arch/arm/boot/dts/bcm94708.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728]]}
arch/arm/boot/dts/bcm94709.dt.yaml: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 134217728]]}

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts       | 2 +-
 arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts       | 2 +-
 arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts | 2 +-
 arch/arm/boot/dts/bcm4709-linksys-ea9200.dts      | 2 +-
 arch/arm/boot/dts/bcm4709-netgear-r7000.dts       | 2 +-
 arch/arm/boot/dts/bcm4709-netgear-r8000.dts       | 2 +-
 arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts | 2 +-
 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts     | 2 +-
 arch/arm/boot/dts/bcm53016-meraki-mr32.dts        | 2 +-
 arch/arm/boot/dts/bcm94708.dts                    | 2 +-
 arch/arm/boot/dts/bcm94709.dts                    | 2 +-
 11 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
index 61c7b137607e..7900aac4f35a 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
@@ -20,7 +20,7 @@ chosen {
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>,
 		      <0x88000000 0x08000000>;
diff --git a/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts b/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
index 6c6bb7b17d27..7546c8d07bcd 100644
--- a/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
+++ b/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
@@ -19,7 +19,7 @@ chosen {
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>,
 		      <0x88000000 0x08000000>;
diff --git a/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts b/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
index d29e7f80ea6a..beae9eab9cb8 100644
--- a/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
+++ b/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
@@ -19,7 +19,7 @@ chosen {
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>,
 		      <0x88000000 0x18000000>;
diff --git a/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
index 9b6887d477d8..7879f7d7d9c3 100644
--- a/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
@@ -16,7 +16,7 @@ chosen {
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>,
 		      <0x88000000 0x08000000>;
diff --git a/arch/arm/boot/dts/bcm4709-netgear-r7000.dts b/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
index 7989a53597d4..56d309dbc6b0 100644
--- a/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
+++ b/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
@@ -19,7 +19,7 @@ chosen {
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>,
 		      <0x88000000 0x08000000>;
diff --git a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
index 87b655be674c..184e3039aa86 100644
--- a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
@@ -30,7 +30,7 @@ chosen {
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>,
 		      <0x88000000 0x08000000>;
diff --git a/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts b/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
index f806be5da723..c2a266a439d0 100644
--- a/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
+++ b/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
@@ -15,7 +15,7 @@ chosen {
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
index 452b8d0ab180..b0d8a688141d 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
@@ -16,7 +16,7 @@ chosen {
 		bootargs = "earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>,
 		      <0x88000000 0x18000000>;
diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
index 3b978dc8997a..612d61852bfb 100644
--- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
@@ -20,7 +20,7 @@ chosen {
 		bootargs = " console=ttyS0,115200n8 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000>;
 		device_type = "memory";
 	};
diff --git a/arch/arm/boot/dts/bcm94708.dts b/arch/arm/boot/dts/bcm94708.dts
index 3d13e46c6949..d9eb2040b963 100644
--- a/arch/arm/boot/dts/bcm94708.dts
+++ b/arch/arm/boot/dts/bcm94708.dts
@@ -38,7 +38,7 @@ / {
 	model = "NorthStar SVK (BCM94708)";
 	compatible = "brcm,bcm94708", "brcm,bcm4708";
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm94709.dts b/arch/arm/boot/dts/bcm94709.dts
index 5017b7b259cb..618c812eef73 100644
--- a/arch/arm/boot/dts/bcm94709.dts
+++ b/arch/arm/boot/dts/bcm94709.dts
@@ -38,7 +38,7 @@ / {
 	model = "NorthStar SVK (BCM94709)";
 	compatible = "brcm,bcm94709", "brcm,bcm4709", "brcm,bcm4708";
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
-- 
2.26.2

