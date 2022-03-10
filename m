Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0069C4D5369
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 22:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244529AbiCJVIk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 16:08:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230183AbiCJVIj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 16:08:39 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 59355E0B3
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 13:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1646946456;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=w7m4E6jL7xlLzbh+pfcUCA3woKLs1+1bhIXxJOhu8B4=;
        b=FCFlN7wfkH00hUdyg8Upo3N8EthAVxufxoqBCR/xRjbq26GVFHulWjnGFWb5C5uHGYXIzp
        orZHTcJar3VpsmSTKbnACZYs5FqTlW4VbEVxjCGf9Tiz7yQlnTYjBK6QDayRf8/NK5vZ88
        z/GzYNddDTErHraczDv/0OJk94CRkCA=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-175-CNoMsFHzOBqT9JoAh0dSuw-1; Thu, 10 Mar 2022 16:07:35 -0500
X-MC-Unique: CNoMsFHzOBqT9JoAh0dSuw-1
Received: by mail-oi1-f200.google.com with SMTP id 9-20020aca1009000000b002d9a9f48c79so4661195oiq.0
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 13:07:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w7m4E6jL7xlLzbh+pfcUCA3woKLs1+1bhIXxJOhu8B4=;
        b=t2hkyI4cuC9KPdnSmcvpzaiEAkcAOfozUvcUGEm+EnfCgSjGwor8U7ApHVbnibBiEV
         SoJ7V7LO/6tamvQkqdrWBjreEj7tEWZ5sYyNItsLbGi7aLfiMl96hWUcLKeWtgUZpQKt
         /lly4o+186IoB0ucug+enwU5Bk0hCCRlhO7/G82dFt+sxhp2iiUv3z8l2DAJ3QEFPvcn
         Njz6ARBjqys4hzRKk88ChF5c19c6OZ1U1ctpn04+8t0ARVjLXirdnKNTNz16Ftntfshr
         iUaF6AOZrcO6nuue8XQewz33X1GDYvgNyyzGz0gZco2XgcBZgQk9J3znwb97K1KCwFlT
         FzlQ==
X-Gm-Message-State: AOAM530xwi30pFOYW01baAg3uYnokd766axmnzT1ZCsK1Y2gfveEe9XI
        /LaD9mspOmn+Fi6EItONiKFpKszMaxNvm0u+TPcsRWSQQxmmCuj69eyXSBGpiar62Dqk6cH5cwq
        OekLokuEaFNiLqsS0+nAQkA==
X-Received: by 2002:a05:6830:2906:b0:5b2:2564:6e89 with SMTP id z6-20020a056830290600b005b225646e89mr3539952otu.43.1646946454216;
        Thu, 10 Mar 2022 13:07:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy17yKutbgcFZ2UmS2pg8JBd2ar6+zrTWdwhm/1bWAs2QX/F4ULtses8yn2hSGknsFneQ2K9w==
X-Received: by 2002:a05:6830:2906:b0:5b2:2564:6e89 with SMTP id z6-20020a056830290600b005b225646e89mr3539935otu.43.1646946453985;
        Thu, 10 Mar 2022 13:07:33 -0800 (PST)
Received: from localhost.localdomain.com (024-205-208-113.res.spectrum.com. [24.205.208.113])
        by smtp.gmail.com with ESMTPSA id b188-20020aca34c5000000b002da579c994dsm1666092oia.31.2022.03.10.13.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Mar 2022 13:07:33 -0800 (PST)
From:   trix@redhat.com
To:     bcousson@baylibre.com, tony@atomide.com, robh+dt@kernel.org,
        krzk+dt@kernel.org, linus.walleij@linaro.org, andrew@lunn.ch,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com
Cc:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tom Rix <trix@redhat.com>
Subject: [PATCH] ARM: dts: cleanup comments
Date:   Thu, 10 Mar 2022 13:07:28 -0800
Message-Id: <20220310210728.1217291-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tom Rix <trix@redhat.com>

For spdx, // style, move to first line, remove extra space

Replacements
th to the
Devive to Device
Suppport to Support

Signed-off-by: Tom Rix <trix@redhat.com>
---
 arch/arm/boot/dts/am335x-pdu001.dts              | 2 +-
 arch/arm/boot/dts/arm-realview-eb-mp.dtsi        | 2 +-
 arch/arm/boot/dts/armada-370-synology-ds213j.dts | 2 +-
 arch/arm/boot/dts/armada-xp-synology-ds414.dts   | 2 +-
 arch/arm/boot/dts/omap3-sbc-t3517.dts            | 2 +-
 arch/arm/boot/dts/omap3-sbc-t3530.dts            | 2 +-
 arch/arm/boot/dts/omap3-sbc-t3730.dts            | 2 +-
 arch/arm/boot/dts/omap5-sbc-t54.dts              | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/am335x-pdu001.dts b/arch/arm/boot/dts/am335x-pdu001.dts
index ce6cc2b96654f..ce99f2b2d17f3 100644
--- a/arch/arm/boot/dts/am335x-pdu001.dts
+++ b/arch/arm/boot/dts/am335x-pdu001.dts
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * pdu001.dts
  *
@@ -7,7 +8,6 @@
  *
  * Copyright (C) 2011, Texas Instruments, Incorporated - https://www.ti.com/
  *
- * SPDX-License-Identifier:  GPL-2.0+
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/arm-realview-eb-mp.dtsi b/arch/arm/boot/dts/arm-realview-eb-mp.dtsi
index 26783d053ac7f..50aed64c59087 100644
--- a/arch/arm/boot/dts/arm-realview-eb-mp.dtsi
+++ b/arch/arm/boot/dts/arm-realview-eb-mp.dtsi
@@ -72,7 +72,7 @@ L2: cache-controller {
 			 * Override default cache size, sets and
 			 * associativity as these may be erroneously set
 			 * up by boot loader(s), probably for safety
-			 * since th outer sync operation can cause the
+			 * since the outer sync operation can cause the
 			 * cache to hang unless disabled.
 			 */
 			cache-size = <1048576>; // 1MB
diff --git a/arch/arm/boot/dts/armada-370-synology-ds213j.dts b/arch/arm/boot/dts/armada-370-synology-ds213j.dts
index 64f2ce254fb6c..6ac62806f5a18 100644
--- a/arch/arm/boot/dts/armada-370-synology-ds213j.dts
+++ b/arch/arm/boot/dts/armada-370-synology-ds213j.dts
@@ -14,7 +14,7 @@
  * not be able to directly boot a kernel based on this Device Tree. In
  * that case, the preferred solution is to update your bootloader (e.g.
  * by upgrading to latest version of DSM, or building a new one and
- * installing it from u-boot prompt) or adjust the Devive Tree
+ * installing it from u-boot prompt) or adjust the Device Tree
  * (s/0xf1000000/0xd0000000/ in 'ranges' below).
  */
 
diff --git a/arch/arm/boot/dts/armada-xp-synology-ds414.dts b/arch/arm/boot/dts/armada-xp-synology-ds414.dts
index 809e821d7399d..c3016c2a3bf9b 100644
--- a/arch/arm/boot/dts/armada-xp-synology-ds414.dts
+++ b/arch/arm/boot/dts/armada-xp-synology-ds414.dts
@@ -14,7 +14,7 @@
  * not be able to directly boot a kernel based on this Device Tree. In
  * that case, the preferred solution is to update your bootloader (e.g.
  * by upgrading to latest version of DSM, or building a new one and
- * installing it from u-boot prompt) or adjust the Devive Tree
+ * installing it from u-boot prompt) or adjust the Device Tree
  * (s/0xf1000000/0xd0000000/ in 'ranges' below).
  */
 
diff --git a/arch/arm/boot/dts/omap3-sbc-t3517.dts b/arch/arm/boot/dts/omap3-sbc-t3517.dts
index a69d328604219..5101c783ffa6e 100644
--- a/arch/arm/boot/dts/omap3-sbc-t3517.dts
+++ b/arch/arm/boot/dts/omap3-sbc-t3517.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Suppport for CompuLab SBC-T3517 with CM-T3517
+ * Support for CompuLab SBC-T3517 with CM-T3517
  */
 
 #include "omap3-cm-t3517.dts"
diff --git a/arch/arm/boot/dts/omap3-sbc-t3530.dts b/arch/arm/boot/dts/omap3-sbc-t3530.dts
index 24bf3fd86641f..d57d137c9ea27 100644
--- a/arch/arm/boot/dts/omap3-sbc-t3530.dts
+++ b/arch/arm/boot/dts/omap3-sbc-t3530.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Suppport for CompuLab SBC-T3530 with CM-T3530
+ * Support for CompuLab SBC-T3530 with CM-T3530
  */
 
 #include "omap3-cm-t3530.dts"
diff --git a/arch/arm/boot/dts/omap3-sbc-t3730.dts b/arch/arm/boot/dts/omap3-sbc-t3730.dts
index eb3893b9535e6..58b65bafc4da3 100644
--- a/arch/arm/boot/dts/omap3-sbc-t3730.dts
+++ b/arch/arm/boot/dts/omap3-sbc-t3730.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Suppport for CompuLab SBC-T3730 with CM-T3730
+ * Support for CompuLab SBC-T3730 with CM-T3730
  */
 
 #include "omap3-cm-t3730.dts"
diff --git a/arch/arm/boot/dts/omap5-sbc-t54.dts b/arch/arm/boot/dts/omap5-sbc-t54.dts
index 657df46251c2e..3e01b60acb158 100644
--- a/arch/arm/boot/dts/omap5-sbc-t54.dts
+++ b/arch/arm/boot/dts/omap5-sbc-t54.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Suppport for CompuLab CM-T54 on SB-T54 baseboard
+ * Support for CompuLab CM-T54 on SB-T54 baseboard
  */
 
 #include "omap5-cm-t54.dts"
-- 
2.26.3

